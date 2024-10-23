import 'package:exinity_assessment/data/data_sources/sockets_data_source/web_socket_client_exception.dart';
import 'package:fpdart/fpdart.dart';

abstract class SocketClientBase {
  TaskEither<SocketException, Unit> connect(Uri uri);

  TaskEither<SocketException, Unit> disconnect();

  TaskEither<SocketException, Unit> send(dynamic message);

  TaskEither<SocketReceiveException, Stream<dynamic>> receive();
}
