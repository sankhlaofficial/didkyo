// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:didkyo/application/auth/auth/auth_bloc.dart' as _i18;
import 'package:didkyo/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i16;
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart'
    as _i13;
import 'package:didkyo/application/posts/post_form/post_form_bloc.dart' as _i14;
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart'
    as _i15;
import 'package:didkyo/application/user/user_bloc.dart' as _i17;
import 'package:didkyo/domain/auth/i_auth_facade.dart' as _i7;
import 'package:didkyo/domain/posts/i_post_repository.dart' as _i9;
import 'package:didkyo/domain/userData/i_user_repository.dart' as _i11;
import 'package:didkyo/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'package:didkyo/infrastructure/core/firebase_injectable_module.dart'
    as _i19;
import 'package:didkyo/infrastructure/posts/posts_repository.dart' as _i10;
import 'package:didkyo/infrastructure/userData/userData_repository.dart'
    as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
  final fireStoreInjectableModule = _$FireStoreInjectableModule();
  final firebaseStorageInjectableModule = _$FirebaseStorageInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => fireStoreInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseStorageInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i6.GoogleSignIn>(),
        gh<_i4.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i9.IPostRepository>(() => _i10.PostRepository(
        gh<_i4.FirebaseFirestore>(),
        gh<_i5.FirebaseStorage>(),
      ));
  gh.lazySingleton<_i11.IUserRepository>(
      () => _i12.UserDataRepository(gh<_i4.FirebaseFirestore>()));
  gh.factory<_i13.PostActorBloc>(
      () => _i13.PostActorBloc(gh<_i9.IPostRepository>()));
  gh.factory<_i14.PostFormBloc>(
      () => _i14.PostFormBloc(gh<_i9.IPostRepository>()));
  gh.factory<_i15.PostWatcherBloc>(
      () => _i15.PostWatcherBloc(gh<_i9.IPostRepository>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i17.UserBloc>(() => _i17.UserBloc());
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i7.IAuthFacade>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}

class _$FireStoreInjectableModule extends _i19.FireStoreInjectableModule {}

class _$FirebaseStorageInjectableModule
    extends _i19.FirebaseStorageInjectableModule {}
