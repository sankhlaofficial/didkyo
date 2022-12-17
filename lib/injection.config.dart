// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:didkyo/application/auth/auth/auth_bloc.dart' as _i10;
import 'package:didkyo/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i9;
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart'
    as _i7;
import 'package:didkyo/domain/auth/i_auth_facade.dart' as _i5;
import 'package:didkyo/domain/posts/i_post_repository.dart' as _i8;
import 'package:didkyo/infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'package:didkyo/infrastructure/core/firebase_injectable_module.dart'
    as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.GoogleSignIn>(),
      ));
  gh.factory<_i7.PostWatcherBloc>(
      () => _i7.PostWatcherBloc(gh<_i8.IPostRepository>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(gh<_i5.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i5.IAuthFacade>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i11.FirebaseInjectableModule {}
