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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
                child: const Text(
                  'Welcome Back Mate !😊',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                child: const Text(
                  'Lorem ipsum dolor sit amet\ndada dlfnafnoeahoi fuiafibdf',
                ),
              ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color(0xff232476),
                    minimumSize: Size.fromHeight(50),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'or continue with',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit),
                    Text('Continuue with Google'),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 153, 202),
                ),
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
