import '../../../../../core/resources/data_state.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginServices {
  Future<DataState> logInByFireBase(
      {required String email, required String password}) async {
    UserCredential? response;
    try {
      response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return LogInState(data: response, message: 'succeed');
    } on FirebaseAuthException catch (e) {
      return LogInState(data: null, message: e.toString());
    }
  }
}
