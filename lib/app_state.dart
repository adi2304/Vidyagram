import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    });
    _safeInit(() {
      _isDarkMode = prefs.getBool('ff_isDarkMode') ?? _isDarkMode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apiKey = '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';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
    prefs.setString('ff_apiKey', value);
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;
    prefs.setBool('ff_isDarkMode', value);
  }

  List<dynamic> _currentConversation = [];
  List<dynamic> get currentConversation => _currentConversation;
  set currentConversation(List<dynamic> value) {
    _currentConversation = value;
  }

  void addToCurrentConversation(dynamic value) {
    _currentConversation.add(value);
  }

  void removeFromCurrentConversation(dynamic value) {
    _currentConversation.remove(value);
  }

  void removeAtIndexFromCurrentConversation(int index) {
    _currentConversation.removeAt(index);
  }

  void updateCurrentConversationAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _currentConversation[index] = updateFn(_currentConversation[index]);
  }

  void insertAtIndexInCurrentConversation(int index, dynamic value) {
    _currentConversation.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
