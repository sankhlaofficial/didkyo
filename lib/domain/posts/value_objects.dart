import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/core/failures.dart';
import 'package:didkyo/domain/core/value_objects.dart';
import 'package:didkyo/domain/core/value_validators.dart';

class PostImageURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostImageURL(String input) {
    return PostImageURL._(validateImageNotEmpty(input));
  }

  const PostImageURL._(this.value);
}

class PostCaption extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;
  factory PostCaption(String input) {
    return PostCaption._(validateStringMaxLength(input, maxLength));
  }

  const PostCaption._(this.value);
}

class PostCommentMessage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PostCommentMessage(String input) {
    return PostCommentMessage._(validateStringNotEmpty(input));
  }

  const PostCommentMessage._(this.value);
}

class PostLocation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 50;
  factory PostLocation(String input) {
    return PostLocation._(validateStringMaxLength(input, maxLength));
  }

  const PostLocation._(this.value);
}
