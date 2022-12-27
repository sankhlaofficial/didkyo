part of 'analysis_bloc.dart';

@freezed
abstract class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent.watchAnalyticsStarted() = _WatchAnalyticsStarted;

  const factory AnalysisEvent.analyticsReceived(
      Map<String, dynamic> trendingData) = _AnalyticsReceived;
}
