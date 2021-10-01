import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showroom_front/constants/contants.dart';

class AppTextField extends StatefulWidget {
  final String placeholder;
  final TextEditingController controller;
  final Function? onSubmit;
  final Color colorTheme;
  final bool enabled;
  late bool password;
  late bool obscureText;

  AppTextField(
      {required this.placeholder,
      required this.controller,
      this.onSubmit,
      this.colorTheme = Colors.white,
      this.enabled = true,
      this.obscureText = false}) {
    password = false;
  }

  AppTextField.password(
      {required this.placeholder,
      required this.controller,
      this.onSubmit,
      this.colorTheme = Colors.white,
      this.enabled = true}) {
    password = true;
    obscureText = true;
  }

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool obscureText;
  IconData displayedSuffixIcon = CupertinoIcons.eye_solid;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 40,
      child: TextField(
        controller: this.widget.controller,
        enabled: this.widget.enabled,
        obscureText: obscureText,
        onSubmitted: (value) {
          this.widget.onSubmit?.call();
        },
        decoration: InputDecoration(
          suffixIcon: this.widget.password ? suffixIcon() : null,
          isDense: true,
          labelText: this.widget.placeholder,
          labelStyle: TextStyle(
              color: this.widget.colorTheme.withOpacity(0.8),
              fontFamily: FONT_POPPINS_LIGHT),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: this.widget.colorTheme, width: 1),
              borderRadius: BorderRadius.circular(10)),
        ),
        style: TextStyle(
            color: this.widget.colorTheme, fontFamily: FONT_POPPINS_LIGHT),
      ),
    );
  }

  InkWell suffixIcon() {
    return InkWell(
      onTap: () {
        setState(() {
          this.obscureText = !obscureText;
          if (this.obscureText) {
            this.displayedSuffixIcon = CupertinoIcons.eye_solid;
          } else {
            this.displayedSuffixIcon = CupertinoIcons.eye_slash_fill;
          }
        });
      },
      child: Icon(displayedSuffixIcon, color: Colors.white),
    );
  }
}
