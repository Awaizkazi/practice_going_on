import 'package:flutter/material.dart';
import 'package:practice_going_on/screens/sign_up.dart';
import 'package:practice_going_on/screens/signup2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecureText = false;
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
            'Sign In',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          // It Will Automatically Scroll the textfields in UPWARD Direction by using the reverse property
          reverse: true,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome Back Mate !😊',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Lorem ipsum dolor sit amet\n dada dlfnafnoeahoi fuiafibdf',
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Color(0xffeaeaf2),
                    filled: true,
                    hintText: 'youremail@email.com',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon:
                        togglePassword(), // This will made as a Widget in the end of this page
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Color(0xffeaeaf2),
                    filled: true,
                    hintText: '************',
                  ),
                  obscureText: obsecureText,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text('Forgot Password ?'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUp2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.indigo[800],
                    minimumSize: Size.fromHeight(50),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account Sign?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 44, 44, 117),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.indigo[800],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          obsecureText = !obsecureText;
        });
      },
      icon: obsecureText ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
    );
  }
}
