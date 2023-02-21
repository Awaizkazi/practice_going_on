import 'package:flutter/material.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            textField1(
              icon: Icons.local_activity,
              hintText: 'Username',
            ),
            textField1(
              icon: Icons.local_activity,
              hintText: 'Username',
            ),
            textField1(
              icon: Icons.local_activity,
              hintText: 'Username',
            ),
          ],
        ),
      ),
    );
  }

  Widget textField1({IconData? icon, String? hintText, IconData? iconSuffix}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          prefixIcon: Icon(icon),
          suffixIcon: Icon(iconSuffix),
        ),
      ),
    );
  }

  Widget textField2() {
    return Container();
  }

  Widget spacing({double? height}) {
    return SizedBox(height: height);
  }
}
