import 'package:flutter/material.dart';
import 'package:practice_going_on/widgets/template_custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            'Sign Up',
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
              // Container(
              //   margin: EdgeInsets.all(15),
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.arrow_drop_down),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       fillColor: Color(0xffeaeaf2),
              //       filled: true,
              //       hintText: 'youremail@email.com',
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(15),
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.lock_rounded),
              //       suffixIcon:
              //           togglePassword(), // This will made as a Widget in the end of this page
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       fillColor: Color(0xffeaeaf2),
              //       filled: true,
              //       hintText: '************',
              //     ),
              //     obscureText: obsecureText,
              //   ),
              // ),

              SizedBox(
                height: 5,
              ),
              TemplateCustomTextField(
                isPassword: false,
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.indigo[800],
                    minimumSize: Size.fromHeight(50),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 18),
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
                    'Dont have an account?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 44, 44, 117),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign Up',
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

//   Widget textFields({var isFilled = true, Widget? prefixIcon, var hintText}) {
//     var isfilled = true;
//     // Var for the prefix Icon
//     Widget? preficIcon;
//     return Container(
//       margin: EdgeInsets.all(15),
//       child: TemplateCustomTextField(
//         isPassword: true,
//       ),
//     );
//   }
// }
}
