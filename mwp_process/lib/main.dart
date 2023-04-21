import 'package:flutter/material.dart';
import 'package:mwp_process/pages/Home.dart';
import 'package:mwp_process/pages/Home.dart';
import 'package:mwp_process/pages/Login.dart';
import 'package:mwp_process/pages/Process.dart';
import 'package:mwp_process/pages/Register.dart';

import 'customs/custom_circle_image.dart';
import 'customs/custom_button.dart';
import 'customs/custom_text_form_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // //
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // //
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://smdapferluoknheqlbso.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtZGFwZmVybHVva25oZXFsYnNvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODEzMjg0ODEsImV4cCI6MTk5NjkwNDQ4MX0.htJwyTxU1osvSKvFAXG3sfuTZSvSdZjFVwFZgec6U2s",
  );
  runApp(MwpProcess());
}

final supabase = Supabase.instance.client;

class MwpProcess extends StatelessWidget {
  const MwpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MWP-PROCESS",
      theme: ThemeData(
        primaryColor: Colors.blue[400],
        accentColor: Colors.green[400],
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Login().id: (context) => Login(),
        Register().id: (context) => Register(),
        Home.id: (context) => Home(),
        Process.id: (context) => Process(),
      },
      initialRoute: Home.id,
    );
  }
}
