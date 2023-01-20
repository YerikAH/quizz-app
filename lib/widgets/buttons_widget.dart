import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final Color colorButton;
  final Function addIcon;
  final bool valueCompare;
  final Function modal;
  const ButtonsWidget({Key? key, required this.colorButton, required this.addIcon, required this.valueCompare, required this.modal}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorButton,
          padding: const EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
        ),
        onPressed: (){
          addIcon(valueCompare);
          modal(context, valueCompare);
        }, 
        child: Text(valueCompare ? "True" : "False",style: Theme.of(context).textTheme.subtitle1,),
      ),
    );
  }
}