import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/core/failures.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}
