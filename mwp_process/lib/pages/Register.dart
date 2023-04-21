import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:mwp_process/constants.dart';
import 'package:mwp_process/main.dart';
import 'package:mwp_process/pages/Login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../customs/custom_button.dart';
import '../customs/custom_circle_image.dart';
import '../customs/custom_text_form_field.dart';
import '../helpers/helper_snackBarMessage.dart';

// Login
class Register extends StatefulWidget {
  Register({super.key});

  String id = 'Register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? emailAuth;

  String? passwordAuth;

  bool isLoading = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimeryColor,
        body: Container(
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CustomCircleImage(
                  asset_image: 'assets/images/mwp_process.jpg',
                  image_size: 300,
                  text: 'MaxWinPack Process',
                  text_margin_top: 280,
                  text_fontSize: 18,
                  text_size: 65,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  labelText: 'Enter your email',
                  hintText: 'exemple@email.com',
                  onChanged: (data) {
                    emailAuth = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'Enter your password',
                  hintText: '********',
                  obscureText: true,
                  onChanged: (data) {
                    passwordAuth = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Register',
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        if (emailAuth != null && passwordAuth != null) {
                          // var auth = FirebaseAuth.instance;
                          // await registerUser(auth);
                          final AuthResponse res = await supabase.auth.signUp(
                            email: emailAuth,
                            password: passwordAuth!,
                          );
                          helper_snackBarMessage(context, 'success.');
                          Navigator.pop(context);
                        }
                        // } on FirebaseAuthException catch (e) {
                        //   if (e.code == 'weak-password') {
                        //     helper_snackBarMessage(
                        //       context,
                        //       'week password, use more than 8.',
                        //     );
                        //   } else if (e.code == 'email-already-in-use') {
                        //     helper_snackBarMessage(
                        //       context,
                        //       'email already in use.',
                        //     );
                        //   } else if (e.code == 'invalid-email') {
                        //     helper_snackBarMessage(
                        //       context,
                        //       'invalid email.',
                        //     );
                        //   } else {
                        //     helper_snackBarMessage(
                        //       context,
                        //       e.toString(),
                        //     );
                        //   }
                      } catch (e) {
                        helper_snackBarMessage(
                          context,
                          e.toString(),
                        );
                      }
                      isLoading = false;
                      setState(() {});
                    } else {}
                  }, // onTap
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          Login().id,
                        );
                      }, // onTap
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ], // children
                )
              ], // children
            ),
          ),
        ),
      ),
    );
  }

//   Future<void> registerUser(FirebaseAuth auth) async {
//     UserCredential userAuth = await auth.createUserWithEmailAndPassword(
//       email: emailAuth!,
//       password: passwordAuth!,
//     );
//   }
}
