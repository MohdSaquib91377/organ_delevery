class AppException implements Exception {
  final _message;
  final _prefix;

  AppException(this._message, this._prefix);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? _message])
      : super(_message, 'Error during communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? _message]) : super(_message, 'Invalid request');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? _message])
      : super(_message, 'unauthorized request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? _message])
      : super(_message, 'unauthorized request');
}
