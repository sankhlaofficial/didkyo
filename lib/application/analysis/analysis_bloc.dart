import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:didkyo/domain/analytics/analytics_repository_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'analysis_bloc.freezed.dart';
part 'analysis_event.dart';
part 'analysis_state.dart';

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  final AnalyticsRepositoryFacade _analysisRepositoryFacade;
  @factoryMethod
  AnalysisBloc(this._analysisRepositoryFacade);

  @override
  AnalysisState get initialState => const AnalysisState.initial();

  @override
  Stream<AnalysisState> mapEventToState(AnalysisEvent event) async* {
    yield* event.map(watchAnalyticsStarted: (e) async* {
      yield const AnalysisState.loadInProgress();
      final analyticsData = await _analysisRepositoryFacade.fetchAnalytics();
      log(analyticsData.toString());
      add(AnalysisEvent.analyticsReceived(analyticsData));
    }, analyticsReceived: (e) async* {
      yield AnalysisState.loadSuccess(e.trendingData);
    });
  }
}
