import "package:flutter/material.dart";

class AddIcon{
  int countCorrect = 0;
  void addIcon(bool value, bool valueTwo, List<Widget> listAddIcon){
    if(value == valueTwo){
      countCorrect++;
    }
  }
}