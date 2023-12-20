import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timercs/app/core/constansts.dart';
import 'package:job_timercs/app/core/widget/circular_progress_custom.dart';
import 'package:job_timercs/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController;
  const LoginPage({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<LoginController, LoginState>(
      bloc: loginController,
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          final message = state.errorMessage ?? 'Erro ao realizar login';
          AsukaSnackbar.alert(message).show();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF002106),
                ColorsThemes.brow,
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  SizedBox(height: screenSize.height * .1),
                  SizedBox(
                    width: screenSize.width,
                    height: 49,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        loginController.signIn();
                      },
                      child: Image.asset(
                        'assets/images/google.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  BlocSelector<LoginController, LoginState, bool>(
                    bloc: loginController,
                    selector: (state) => state.status == LoginStatus.loading,
                    builder: (context, show) {
                      return Visibility(
                        visible: show,
                        child: Center(
                          child: circularProgressCustom(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
