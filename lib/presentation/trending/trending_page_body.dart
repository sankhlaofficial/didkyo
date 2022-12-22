import 'package:didkyo/application/analysis/analysis_bloc.dart';
import 'package:didkyo/presentation/trending/widgets/trending_card_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingPageBody extends StatelessWidget {
  const TrendingPageBody({Key? key}) : super(key: key);

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
            return Center(
                child: TrendingCardsGrid(
              trendingData: state.trendingData,
            ));
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
