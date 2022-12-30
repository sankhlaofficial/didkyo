import 'dart:developer';

import 'package:didkyo/application/analysis/analysis_bloc.dart';
import 'package:didkyo/presentation/trending/widgets/trending_card_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingPageBody extends StatelessWidget {
  const TrendingPageBody({Key? key}) : super(key: key);

  Map sortData(Map input) {
    return Map.fromEntries(
        input.entries.toList()..sort((e2, e1) => e1.value.compareTo(e2.value)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalysisBloc, AnalysisState>(builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
          loadSuccess: (state) {
            var newData = {};
            newData.addAll(state.trendingData);
            newData.removeWhere((key, value) => value == 0);

            log(newData.toString());

            final sortedData = sortData(newData);
            log(sortedData.toString());
            return Center(
                child: TrendingCardsGrid(
              trendingData: sortedData,
            ));
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
