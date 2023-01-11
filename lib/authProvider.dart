import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _fb;
  AuthProvider(this._fb);
  bool _isloading = false;
  Stream<User?> stream() => _fb.authStateChanges();
  bool get loading => _isloading;
  Future<void> signOut() async {
    await _fb.signOut();
  }

  Future<String> signIn(String email, String password) async {
    try {
      _isloading = true;
      notifyListeners();
      await _fb.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      _isloading = false;
      notifyListeners();
      return Future.value('');
    } on FirebaseAuthException catch (ex) {
      _isloading = false;
      notifyListeners();
      return Future.value(ex.message);
    }
  }

  Future<String> signUp(String email, String password) async {
    try {
      _isloading = true;
      notifyListeners();
      await _fb.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      _isloading = false;
      notifyListeners();
      return Future.value('');
    } on FirebaseAuthException catch (ex) {
      _isloading = false;
      notifyListeners();
      return Future.value(ex.message);
    }
  }

  Future<String> googleSignIn() async {
    return Future.value('Comming soon');
  }

  Future<String> googleSignUp() async {
    return Future.value('Comming soon');
  }
}
