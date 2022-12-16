import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLengthAllowed,
  }) = ExceedingLength<T>;

  const factory ValueFailure.noImageSelected({required String failedValue}) =
      NoImageSelected<T>;

  const factory ValueFailure.noStringPresent({required String failedValue}) =
      NoStringPresent<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
