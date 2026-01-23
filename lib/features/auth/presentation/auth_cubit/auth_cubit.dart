import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  late TextEditingController? firstNameController = TextEditingController();
  late TextEditingController? lastNameController = TextEditingController();
  late TextEditingController? emailController = TextEditingController();
  late TextEditingController? passwordController = TextEditingController();

   String? emailAddress;
   String? password;
   String? firstName;
   String? lastName;
  GlobalKey<FormState> signupFormKey = GlobalKey();

  Future <void> signUpWithEmailAndPassword() async {
    emit(AuthLoadingState());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
      emit(AuthSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthErrorState('The password is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthErrorState('The account already exists for that email.'));
      }
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }
}
