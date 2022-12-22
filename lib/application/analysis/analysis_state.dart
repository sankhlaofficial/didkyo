part of 'analysis_bloc.dart';

@freezed
abstract class AnalysisState with _$AnalysisState {
  const factory AnalysisState.initial() = _Initial;
  const factory AnalysisState.loadInProgress() = _LoadInProgress;
  const factory AnalysisState.loadSuccess(Map<String, dynamic> trendingData) =
      _LoadSuccess;
  const factory AnalysisState.loadFailure(String failedMessage) = _LoadFailure;
}
