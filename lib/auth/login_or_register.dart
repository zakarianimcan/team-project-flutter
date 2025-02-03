import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool ShaowLoinPage = true;

  void toggleLoginPage() {
    setState(() {
      ShaowLoinPage = !ShaowLoinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShaowLoinPage) {
      return LoginPage(
        onTap: toggleLoginPage,
      );
    } else {
      return Register_Page(
        onTap: toggleLoginPage,
      );
    }
  }
}
