abstract class SocketException implements Exception {
  const SocketException({required this.message, this.cause, this.stackTrace});
  final String message;
  final Object? cause;
  final StackTrace? stackTrace;
}

class ConnectionException extends SocketException {
  const ConnectionException({
    required super.message,
    super.cause,
    super.stackTrace,
  });
  @override
  String toString() {
    return message.toString();
  }
}

class DisconnectionException extends SocketException {
  const DisconnectionException({
    required super.message,
    super.cause,
    super.stackTrace,
  });
  @override
  String toString() {
    return message.toString();
  }
}

class SocketSendException extends SocketException {
  const SocketSendException({
    required super.message,
    super.cause,
    super.stackTrace,
  });
  @override
  String toString() {
    return message.toString();
  }
}

class SocketReceiveException extends SocketException {
  const SocketReceiveException({
    required super.message,
    super.cause,
    super.stackTrace,
  });

  @override
  String toString() {
    return message.toString();
  }
}
