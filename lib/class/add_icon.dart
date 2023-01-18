import "package:flutter/material.dart";

class AddIcon{
  void addIcon(bool value, bool valueTwo, List<Widget> listAddIcon){
    if(value == valueTwo){
      listAddIcon.add(
        const Icon(Icons.check, color: Colors.green,), 
      );
    }else{
      listAddIcon.add(
        const Icon(Icons.close, color: Colors.red,), 
      );
    }
  }
}