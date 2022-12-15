import 'dart:async';

import 'package:didkyo/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit(asExtension: false)
FutureOr<GetIt> _init(GetIt getIt) => init(getIt);
