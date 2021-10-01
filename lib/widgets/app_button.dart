import 'package:flutter/material.dart';
import 'package:showroom_front/constants/contants.dart';

class AppButton extends StatelessWidget {

  final String buttonText;
  final Function onClickHandler;

  const AppButton({this.buttonText = "Confirmer", required this.onClickHandler});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        this.onClickHandler.call();
      },
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue
        ),
        child: Center(
          child: Text(this.buttonText, style: TextStyle(
            color: Colors.white,
            fontFamily: FONT_POPPINS_MEDIUM
          ),),
        ),
      ),
    );
  }
}