import 'package:flutter/material.dart';

class Settings extends ChangeNotifier{
  bool _newPost = true;
  bool _gotHired = true;
  bool _getRejected = false;
  bool _message = false;
  bool _call = false;
  bool _darkMode = false;

  bool get darkMode => _darkMode;
  bool get gotHired => _gotHired;
  bool get getRejected => _getRejected;
  bool get message => _message;
  bool get call => _call;

  void  toggleDarkMode(){
    _darkMode = !_darkMode;
    notifyListeners();
  }

  void toggleNewPost(){
    _newPost = !_newPost;
    notifyListeners();
  }

  void toggleGotHired(){
    _gotHired = !_gotHired;
    notifyListeners();
  }

  void toggleGetRejected(){
    _getRejected = !_getRejected;
    notifyListeners();
  }

  void toggleMessage(){
    _message = !_message;
    notifyListeners();
  }

  void toggleCall(){
    _call = !_call;
    notifyListeners();
  }
}