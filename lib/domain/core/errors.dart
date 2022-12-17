import 'package:didkyo/domain/core/failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a value failure at an unrecoverable point.';
    return Error.safeToString(
        '$explanation Failure was $valueFailure : Terminating...');
  }
}
