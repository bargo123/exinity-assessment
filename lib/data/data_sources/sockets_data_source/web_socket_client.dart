import 'dart:async';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:exinity_assessment/data/data_sources/sockets_data_source/socket_client_base.dart';
import 'package:fpdart/fpdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketClient extends SocketClientBase {
  WebSocketChannel? _channel;

  @override
  TaskEither<SocketException, Unit> connect(Uri uri) {
    return TaskEither.tryCatch(
      () {
        _channel = WebSocketChannel.connect(uri);
        return Future.value(unit);
      },
      (error, stackTrace) => ConnectionException(
        message: 'Failed to connect to WebSocket',
        cause: error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<SocketException, Unit> disconnect() {
    return TaskEither.tryCatch(
      () async {
        await _channel?.sink.close();
        _channel = null;
        return unit;
      },
      (error, stackTrace) => DisconnectionException(
        message: 'Failed to disconnect from WebSocket',
        cause: error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<SocketException, Unit> send(dynamic message) {
    if (_channel == null) {
      return TaskEither.left(
        const SocketSendException(message: 'WebSocket channel is not open'),
      );
    }

    return TaskEither.tryCatch(
      () async {
        _channel?.sink.add(message);
        return unit;
      },
      (error, stackTrace) => SocketSendException(
        message: 'Failed to send message through WebSocket',
        cause: error,
        stackTrace: stackTrace,
      ),
    );
  }

  TaskEither<SocketReceiveException, Stream<dynamic>> receive() {
    return TaskEither.tryCatch(
      () async {
        if (_channel == null) {
          return Stream.error(
            const SocketReceiveException(
                message: 'WebSocket channel is not open'),
          );
        }

        return _channel!.stream.handleError(
          (error) {
            return Stream.error(SocketReceiveException(
              message: 'Failed to receive data from WebSocket',
              cause: error,
            ));
          },
        );
      },
      (error, stackTrace) => SocketReceiveException(
          message: error.toString(), cause: error, stackTrace: stackTrace),
    );
  }
}
