part of 'post_form_bloc.dart';

@freezed
abstract class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.initialized(Option<Post> initialPostData) =
      _Initialized;
  const factory PostFormEvent.captionChanged(String postCap) = _CaptionChanged;
  const factory PostFormEvent.imageChanged(String postImagePath) =
      _ImageChanged;
  const factory PostFormEvent.locationChanged(String postLoc) =
      _LocationChanged;
  const factory PostFormEvent.saved() = _PostSaved;
}
