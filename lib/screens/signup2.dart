import 'package:flutter/material.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  var obsecureText = false;

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
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              textField1(
                icon: Icons.person,
                hintText: 'Full Name',
              ),
              textField1(
                icon: Icons.alternate_email,
                hintText: 'Username',
              ),
              textField1(
                icon: Icons.mail_rounded,
                hintText: 'youremail@email.com',
              ),
              textField2(
                icon: Icons.lock,
                hintText: 'Password',
              ),
              textField2(
                icon: Icons.lock,
                hintText: 'Repeat Password',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField1({IconData? icon, String? hintText, Function? suffixIcon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 17),
          prefixIcon: Icon(icon),
          // suffixIcon: togglePassword(),
          fillColor: Color(0xffeaeaf2),
          filled: true,
        ),
      ),
    );
  }

  Widget textField2({IconData? icon, String? hintText, Function? suffixIcon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          prefixIcon: Icon(icon),
          hintStyle: TextStyle(fontSize: 17),
          suffixIcon: togglePassword(),
          fillColor: Color(0xffeaeaf2),
          filled: true,
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        // For using the setState required * of statefulWidget
        setState(() {
          obsecureText = !obsecureText;
        });
      },
      icon: obsecureText ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
    );
  }
}
