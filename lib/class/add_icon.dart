import "package:flutter/material.dart";

class AddIcon{
  int countCorrect = 0;
  void addIcon(bool value, bool valueTwo){
    if(value == valueTwo){
      countCorrect++;
    }
  }
}