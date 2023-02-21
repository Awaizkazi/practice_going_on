import 'package:flutter/material.dart';

class TemplateCustomTextField extends StatefulWidget {
  final bool isfilled;
  final String? hintText;
   bool obsecureText;
  final Widget? prefixIcon;
  // final Widget? togglePassword;
  final bool isPassword;

  TemplateCustomTextField({
    super.key,
    this.isPassword = true,
    this.isfilled = true,
    this.prefixIcon,
    // this.togglePassword,
    this.hintText,
    this.obsecureText = true,
  });

  @override
  State<TemplateCustomTextField> createState() =>
      _TemplateCustomTextFieldState();
}

class _TemplateCustomTextFieldState extends State<TemplateCustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: widget.isPassword
          ? TextFormField(
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,
                suffixIcon:
                    togglePassword(), // This will made as a Widget in the end of this page
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fillColor: Color(0xffeaeaf2),
                filled: widget.isfilled,
                hintText: widget.hintText,
              ),
              obscureText: widget.obsecureText,
            )
          : TextFormField(
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fillColor: Color(0xffeaeaf2),
                filled: widget.isfilled,
                hintText: widget.hintText,
              ),
              // obscureText: obsecureText,
            ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          // obsecureText = !obsecureText;
          bool? obsecureText= true;
          obsecureText = !obsecureText;
        });
      },
      icon: widget.obsecureText
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
    );
  }
}
