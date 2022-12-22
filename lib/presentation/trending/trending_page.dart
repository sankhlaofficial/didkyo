import 'package:didkyo/application/analysis/analysis_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/trending/trending_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnalysisBloc>()
        ..add(const AnalysisEvent.watchAnalyticsStarted()),
      child: const Scaffold(
          appBar: CustomAppBar(appBarTitle: "Trending"),
          body: TrendingPageBody()),
    );
  }
}
