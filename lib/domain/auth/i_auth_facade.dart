import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<User> getCurrentUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
