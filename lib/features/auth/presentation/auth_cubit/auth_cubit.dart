import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final TextEditingController? firstNameController = TextEditingController();
  final TextEditingController? lastNameController = TextEditingController();
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

   String? emailAddress;
   String? password;
   String? firstName;
   String? lastName;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  bool? isCheckBoxActive = false;
  bool? isObscure = true;

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

   void updateStateOfCheckBox(dynamic newValue){
    isCheckBoxActive = newValue;
    emit(CheckBoxState());
  }

  void togglePasswordVisibility() {
    isObscure = !isObscure!;
    emit(PasswordVisibilityState());
  }

}
