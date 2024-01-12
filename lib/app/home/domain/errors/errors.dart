abstract class Failure implements Exception {
  String get message;
}

class InvalidParams extends Failure {
  InvalidParams(this.message);

  @override
  final String message;
}
