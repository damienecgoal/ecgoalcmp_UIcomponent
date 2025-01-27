import 'package:flutter/material.dart';
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
      _darklight = prefs.getBool('ff_darklight') ?? _darklight;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ChatStruct> _chats = [
    ChatStruct.fromSerializableMap(jsonDecode(
        '{\"user\":\"{\\\"avatar\\\":\\\"https://demos.pixinvent.com/vuexy-html-admin-template/assets/img/avatars/2.png\\\",\\\"name\\\":\\\"Felecia Rower\\\",\\\"role\\\":\\\"NextJS Developer\\\",\\\"about\\\":\\\"A Next. js developer is a software developer who uses the Next. js framework alongside ReactJS to build web applications.\\\",\\\"email\\\":\\\"josephGreen@email.com\\\",\\\"phone\\\":\\\"+1(123) 456 - 7890\\\",\\\"time\\\":\\\"{\\\\\\\"from\\\\\\\":\\\\\\\"1714974900000\\\\\\\",\\\\\\\"to\\\\\\\":\\\\\\\"1715320560000\\\\\\\"}\\\",\\\"status\\\":\\\"online\\\"}\",\"last_message\":\"{\\\"is_sender\\\":\\\"false\\\",\\\"user\\\":\\\"{\\\\\\\"avatar\\\\\\\":\\\\\\\"https://picsum.photos/seed/375/600\\\\\\\",\\\\\\\"name\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"role\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"about\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"email\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"phone\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"time\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"from\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"1716875651360\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"to\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"1716875651360\\\\\\\\\\\\\\\"}\\\\\\\",\\\\\\\"status\\\\\\\":\\\\\\\"online\\\\\\\"}\\\",\\\"text\\\":\\\"Refer friends. Get rewards.\\\",\\\"time\\\":\\\"1716875651360\\\",\\\"seen\\\":\\\"false\\\"}\"}'))
  ];
  List<ChatStruct> get chats => _chats;
  set chats(List<ChatStruct> value) {
    _chats = value;
  }

  void addToChats(ChatStruct value) {
    chats.add(value);
  }

  void removeFromChats(ChatStruct value) {
    chats.remove(value);
  }

  void removeAtIndexFromChats(int index) {
    chats.removeAt(index);
  }

  void updateChatsAtIndex(
    int index,
    ChatStruct Function(ChatStruct) updateFn,
  ) {
    chats[index] = updateFn(_chats[index]);
  }

  void insertAtIndexInChats(int index, ChatStruct value) {
    chats.insert(index, value);
  }

  List<UserStruct> _contacts = [
    UserStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://demos.pixinvent.com/vuexy-html-admin-template/assets/img/avatars/4.png\",\"name\":\"Natalie Maxwell\",\"role\":\"UI/UX Designer\",\"about\":\"\",\"email\":\"\",\"phone\":\"\",\"time\":\"{}\",\"status\":\"unavailable\"}')),
    UserStruct.fromSerializableMap(jsonDecode(
        '{\"avatar\":\"https://picsum.photos/seed/326/600\",\"name\":\"Hello World\",\"role\":\"Hello World\",\"about\":\"Hello World\",\"email\":\"Hello World\",\"phone\":\"Hello World\",\"time\":\"{\\\"from\\\":\\\"1716878145239\\\",\\\"to\\\":\\\"1716878145239\\\"}\",\"status\":\"online\"}'))
  ];
  List<UserStruct> get contacts => _contacts;
  set contacts(List<UserStruct> value) {
    _contacts = value;
  }

  void addToContacts(UserStruct value) {
    contacts.add(value);
  }

  void removeFromContacts(UserStruct value) {
    contacts.remove(value);
  }

  void removeAtIndexFromContacts(int index) {
    contacts.removeAt(index);
  }

  void updateContactsAtIndex(
    int index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    contacts[index] = updateFn(_contacts[index]);
  }

  void insertAtIndexInContacts(int index, UserStruct value) {
    contacts.insert(index, value);
  }

  String _activePage = 'Analytics';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  List<String> _xAxis = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];
  List<String> get xAxis => _xAxis;
  set xAxis(List<String> value) {
    _xAxis = value;
  }

  void addToXAxis(String value) {
    xAxis.add(value);
  }

  void removeFromXAxis(String value) {
    xAxis.remove(value);
  }

  void removeAtIndexFromXAxis(int index) {
    xAxis.removeAt(index);
  }

  void updateXAxisAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    xAxis[index] = updateFn(_xAxis[index]);
  }

  void insertAtIndexInXAxis(int index, String value) {
    xAxis.insert(index, value);
  }

  List<double> _yAxis = [120.0, 100.0, 180.0, 220.0, 240.0, 280.0, 250.0];
  List<double> get yAxis => _yAxis;
  set yAxis(List<double> value) {
    _yAxis = value;
  }

  void addToYAxis(double value) {
    yAxis.add(value);
  }

  void removeFromYAxis(double value) {
    yAxis.remove(value);
  }

  void removeAtIndexFromYAxis(int index) {
    yAxis.removeAt(index);
  }

  void updateYAxisAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yAxis[index] = updateFn(_yAxis[index]);
  }

  void insertAtIndexInYAxis(int index, double value) {
    yAxis.insert(index, value);
  }

  bool _darklight = false;
  bool get darklight => _darklight;
  set darklight(bool value) {
    _darklight = value;
    prefs.setBool('ff_darklight', value);
  }

  List<String> _xAxis2 = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  List<String> get xAxis2 => _xAxis2;
  set xAxis2(List<String> value) {
    _xAxis2 = value;
  }

  void addToXAxis2(String value) {
    xAxis2.add(value);
  }

  void removeFromXAxis2(String value) {
    xAxis2.remove(value);
  }

  void removeAtIndexFromXAxis2(int index) {
    xAxis2.removeAt(index);
  }

  void updateXAxis2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    xAxis2[index] = updateFn(_xAxis2[index]);
  }

  void insertAtIndexInXAxis2(int index, String value) {
    xAxis2.insert(index, value);
  }

  List<double> _yAxis2 = [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 120.0];
  List<double> get yAxis2 => _yAxis2;
  set yAxis2(List<double> value) {
    _yAxis2 = value;
  }

  void addToYAxis2(double value) {
    yAxis2.add(value);
  }

  void removeFromYAxis2(double value) {
    yAxis2.remove(value);
  }

  void removeAtIndexFromYAxis2(int index) {
    yAxis2.removeAt(index);
  }

  void updateYAxis2AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yAxis2[index] = updateFn(_yAxis2[index]);
  }

  void insertAtIndexInYAxis2(int index, double value) {
    yAxis2.insert(index, value);
  }

  bool _inStock = false;
  bool get inStock => _inStock;
  set inStock(bool value) {
    _inStock = value;
  }

  List<ChartDataStruct> _SampleChartData = [
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"2\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"5\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"1\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"6\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"7\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"8\"}')),
    ChartDataStruct.fromSerializableMap(
        jsonDecode('{\"xAxis\":\"Hello World\",\"yAxis\":\"4\"}'))
  ];
  List<ChartDataStruct> get SampleChartData => _SampleChartData;
  set SampleChartData(List<ChartDataStruct> value) {
    _SampleChartData = value;
  }

  void addToSampleChartData(ChartDataStruct value) {
    SampleChartData.add(value);
  }

  void removeFromSampleChartData(ChartDataStruct value) {
    SampleChartData.remove(value);
  }

  void removeAtIndexFromSampleChartData(int index) {
    SampleChartData.removeAt(index);
  }

  void updateSampleChartDataAtIndex(
    int index,
    ChartDataStruct Function(ChartDataStruct) updateFn,
  ) {
    SampleChartData[index] = updateFn(_SampleChartData[index]);
  }

  void insertAtIndexInSampleChartData(int index, ChartDataStruct value) {
    SampleChartData.insert(index, value);
  }

  List<double> _xAxis3 = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0];
  List<double> get xAxis3 => _xAxis3;
  set xAxis3(List<double> value) {
    _xAxis3 = value;
  }

  void addToXAxis3(double value) {
    xAxis3.add(value);
  }

  void removeFromXAxis3(double value) {
    xAxis3.remove(value);
  }

  void removeAtIndexFromXAxis3(int index) {
    xAxis3.removeAt(index);
  }

  void updateXAxis3AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    xAxis3[index] = updateFn(_xAxis3[index]);
  }

  void insertAtIndexInXAxis3(int index, double value) {
    xAxis3.insert(index, value);
  }

  List<double> _yAxis3 = [10.0, 20.0, 15.0, 40.0, 50.0, 20.0, 5.0];
  List<double> get yAxis3 => _yAxis3;
  set yAxis3(List<double> value) {
    _yAxis3 = value;
  }

  void addToYAxis3(double value) {
    yAxis3.add(value);
  }

  void removeFromYAxis3(double value) {
    yAxis3.remove(value);
  }

  void removeAtIndexFromYAxis3(int index) {
    yAxis3.removeAt(index);
  }

  void updateYAxis3AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yAxis3[index] = updateFn(_yAxis3[index]);
  }

  void insertAtIndexInYAxis3(int index, double value) {
    yAxis3.insert(index, value);
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
