import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final Color colorButton;
  final String textButton;
  final Function addIcon;
  final bool valueCompare;
  const ButtonsWidget({Key? key, required this.colorButton, required this.textButton, required this.addIcon, required this.valueCompare}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
        backgroundColor: colorButton,
        padding: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      onPressed: (){
        addIcon(valueCompare);
      }, 
      child: Text(textButton,style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}