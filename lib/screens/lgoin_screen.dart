import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var password = 
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
        body: Column(
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
              'Lorem ipsum dolor sit amet\n dada dlfnafnoeahoi fuiafibdf 😊',
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
                  fillColor: Colors.indigo,
                  hintText: 'youremail@email.com',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: Colors.blue,
                  hintText: '************',
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
