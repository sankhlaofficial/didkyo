import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/core/failures.dart';
import 'package:image_picker/image_picker.dart';

Either<ValueFailure<String>, String> validateStringMaxLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
        failedValue: input, maxLengthAllowed: maxLength));
  }
}

Either<ValueFailure<XFile>, XFile> validateImageNotEmpty(XFile image) {
  if (image.path.isNotEmpty) {
    return right(image);
  } else {
    return left(ValueFailure.noImageSelected(failedValue: image));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.noStringPresent(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
