import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:job_timercs/app/services/auth/auth_service.dart';

part "login_state.dart";

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  Future<bool> signIn() async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      final resultLogin = await _authService.signIn();
      if (resultLogin == false) {
        emit(state.copyWith(status: LoginStatus.failure));
        return false;
      }
      return true;
    } on Exception catch (e, s) {
      log('Error ao realizar login', error: e, stackTrace: s);
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: 'Error ao realizar login',
      ));
      return false;
    }
  }
}
