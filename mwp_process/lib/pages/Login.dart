// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:mwp_process/constants.dart';
import 'package:mwp_process/main.dart';
import 'package:mwp_process/pages/Home.dart';
import 'package:mwp_process/pages/Register.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../customs/custom_button.dart';
import '../customs/custom_circle_image.dart';
import '../customs/custom_text_form_field.dart';
import '../helpers/helper_snackBarMessage.dart';

// Login
class Login extends StatefulWidget {
  Login({super.key});

  String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey();

  String? emailAuth;
  String? passwordAuth;

  get kIsWeb => null;

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
                // CustomButton(
                //   text: 'Google',
                //   onTap: () async {
                //     isLoading = true;
                //     setState(() {});
                //     try {
                //       await supabase.auth.signInWithOAuth(Provider.google,
                //           scopes: 'repo gist notifications');
                //       final Session? session = supabase.auth.currentSession;
                //       final String? oAuthToken = session?.providerToken;
                //       helper_snackBarMessage(context, 'success.');
                //       Navigator.pushNamed(context, Home.id);
                //     } catch (e) {
                //       helper_snackBarMessage(
                //         context,
                //         e.toString(),
                //       );
                //     }
                //     isLoading = false;
                //     setState(() {});
                //   }, // onTap
                // ),
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
                  text: 'Login',
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        if (emailAuth != null && passwordAuth != null) {
                          // var auth = FirebaseAuth.instance;
                          // await registerUser(auth);
                          final AuthResponse res =
                              await supabase.auth.signInWithPassword(
                            email: emailAuth,
                            password: passwordAuth!,
                          );
                          helper_snackBarMessage(context, 'success.');
                          Navigator.pushNamed(context, Home.id);
                        }
                        // }
                        //on FirebaseAuthException catch (e) {
                        //   if (e.code == 'user-not-found') {
                        //     helper_snackBarMessage(
                        //       context,
                        //       'user not found.',
                        //     );
                        //   } else if (e.code == 'wrong-password') {
                        //     helper_snackBarMessage(
                        //       context,
                        //       'wrong password.',
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
                      "Don't have an account?",
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: ((context) {
                        //       return Register();
                        //     }),
                        //   ),
                        // );
                        Navigator.pushNamed(
                          context,
                          Register().id,
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//   Future<void> registerUser(FirebaseAuth auth) async {
//     UserCredential userAuth = await auth.signInWithEmailAndPassword(
//       email: emailAuth!,
//       password: passwordAuth!,
//     );
//   }
}
