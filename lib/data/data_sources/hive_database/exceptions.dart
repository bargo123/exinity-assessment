class HiveDatabaseException implements Exception {
  final String message;
  final Object? cause;

  HiveDatabaseException(this.message, [this.cause]);

  @override
  String toString() {
    return 'HiveDatabaseException: $message${cause != null ? ', caused by: $cause' : ''}';
  }
}
