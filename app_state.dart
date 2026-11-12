import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _sonsOffline = prefs.getStringList('ff_sonsOffline') ?? _sonsOffline;
    });
    _safeInit(() {
      _sonSalvo = prefs
              .getStringList('ff_sonSalvo')
              ?.map((x) {
                try {
                  return ReceitaSomStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _sonSalvo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _somTocando = false;
  bool get somTocando => _somTocando;
  set somTocando(bool value) {
    _somTocando = value;
  }

  double _sliderBase = 0.0;
  double get sliderBase => _sliderBase;
  set sliderBase(double value) {
    _sliderBase = value;
  }

  double _sliderBinaural = 0.0;
  double get sliderBinaural => _sliderBinaural;
  set sliderBinaural(double value) {
    _sliderBinaural = value;
  }

  bool _isPremium = false;
  bool get isPremium => _isPremium;
  set isPremium(bool value) {
    _isPremium = value;
  }

  int _somSelecionadoIndex = 0;
  int get somSelecionadoIndex => _somSelecionadoIndex;
  set somSelecionadoIndex(int value) {
    _somSelecionadoIndex = value;
  }

  List<String> _sonsOffline = [];
  List<String> get sonsOffline => _sonsOffline;
  set sonsOffline(List<String> value) {
    _sonsOffline = value;
    prefs.setStringList('ff_sonsOffline', value);
  }

  void addToSonsOffline(String value) {
    sonsOffline.add(value);
    prefs.setStringList('ff_sonsOffline', _sonsOffline);
  }

  void removeFromSonsOffline(String value) {
    sonsOffline.remove(value);
    prefs.setStringList('ff_sonsOffline', _sonsOffline);
  }

  void removeAtIndexFromSonsOffline(int index) {
    sonsOffline.removeAt(index);
    prefs.setStringList('ff_sonsOffline', _sonsOffline);
  }

  void updateSonsOfflineAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    sonsOffline[index] = updateFn(_sonsOffline[index]);
    prefs.setStringList('ff_sonsOffline', _sonsOffline);
  }

  void insertAtIndexInSonsOffline(int index, String value) {
    sonsOffline.insert(index, value);
    prefs.setStringList('ff_sonsOffline', _sonsOffline);
  }

  List<ReceitaSomStruct> _sonSalvo = [];
  List<ReceitaSomStruct> get sonSalvo => _sonSalvo;
  set sonSalvo(List<ReceitaSomStruct> value) {
    _sonSalvo = value;
    prefs.setStringList(
        'ff_sonSalvo', value.map((x) => x.serialize()).toList());
  }

  void addToSonSalvo(ReceitaSomStruct value) {
    sonSalvo.add(value);
    prefs.setStringList(
        'ff_sonSalvo', _sonSalvo.map((x) => x.serialize()).toList());
  }

  void removeFromSonSalvo(ReceitaSomStruct value) {
    sonSalvo.remove(value);
    prefs.setStringList(
        'ff_sonSalvo', _sonSalvo.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSonSalvo(int index) {
    sonSalvo.removeAt(index);
    prefs.setStringList(
        'ff_sonSalvo', _sonSalvo.map((x) => x.serialize()).toList());
  }

  void updateSonSalvoAtIndex(
    int index,
    ReceitaSomStruct Function(ReceitaSomStruct) updateFn,
  ) {
    sonSalvo[index] = updateFn(_sonSalvo[index]);
    prefs.setStringList(
        'ff_sonSalvo', _sonSalvo.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSonSalvo(int index, ReceitaSomStruct value) {
    sonSalvo.insert(index, value);
    prefs.setStringList(
        'ff_sonSalvo', _sonSalvo.map((x) => x.serialize()).toList());
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
