import 'dart:async';

import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './auth_service.dart';

class AuthServiceImpl implements AuthService {
  @override
  Future<bool> signIn() async {
    try {
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        AsukaSnackbar.alert('Usuario não existe ou não selecionado').show();
        return false;
      } else {
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        return true;
      }
    } on Exception {
      AsukaSnackbar.alert('Error ao realizar login').show();
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().disconnect();
  }
}
