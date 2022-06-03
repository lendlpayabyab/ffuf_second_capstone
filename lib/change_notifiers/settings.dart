import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  bool _newPost = true;
  bool _gotHired = true;
  bool _getRejected = false;
  bool _message = false;
  bool _call = false;
  bool _darkMode = false;

  Settings({
    bool newPost = true,
    bool gotHired = true,
    bool getRejected = false,
    bool message = false,
    bool call = false,
    bool darkMode = false,
  })  : _newPost = newPost,
        _gotHired = gotHired,
        _getRejected = getRejected,
        _message = message,
        _call = call,
        _darkMode = darkMode;

  factory Settings.fromJson(Map<String, dynamic> json) {
    return Settings(
      call: json['call'] ?? true,
      darkMode: json['darkMode'] ?? false,
      getRejected: json['getRejected'] ?? false,
      gotHired: json['gotHired'] ?? true,
      message: json['message'] ?? false,
      newPost: json['newPost'] ?? false,
    );
  }

  bool get newPost => _newPost;

  bool get darkMode => _darkMode;

  bool get gotHired => _gotHired;

  bool get getRejected => _getRejected;

  bool get message => _message;

  bool get call => _call;

  void toggleDarkMode() {
    _darkMode = !_darkMode;
    notifyListeners();
  }

  void toggleNewPost() {
    _newPost = !_newPost;
    notifyListeners();
  }

  void toggleGotHired() {
    _gotHired = !_gotHired;
    notifyListeners();
  }

  void toggleGetRejected() {
    _getRejected = !_getRejected;
    notifyListeners();
  }

  void toggleMessage() {
    _message = !_message;
    notifyListeners();
  }

  void toggleCall() {
    _call = !_call;
    notifyListeners();
  }
}
