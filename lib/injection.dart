import 'package:didkyo/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  void $initGetIt(getIt, env) => getIt.init();
}
