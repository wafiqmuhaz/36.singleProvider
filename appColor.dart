
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppColor with ChangeNotifier{
  static const root = "classWarna";

  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners();
  }

  Color get maColor => (_isLightBlue) ? Colors.lightBlue : Colors.amber;

}