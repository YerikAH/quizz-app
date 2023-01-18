import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final Color colorButton;
  final String textButton;
  final Function addIcon;
  final bool valueCompare;
  const ButtonsWidget({Key? key, required this.colorButton, required this.textButton, required this.addIcon, required this.valueCompare}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
    child: MaterialButton(
      onPressed: (){
        addIcon(valueCompare);
      }, 
      color: colorButton,
      child: Text(textButton),
    )
    );
  }
}