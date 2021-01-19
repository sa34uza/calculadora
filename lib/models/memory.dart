class Memory {
  static const operations = const ['%', '/', 'x', '-', '+', '='];

  final _buffer = ([0.0, 0.0]);
  int _bufferIndex = 0;
  String operation;
  String _value = '0';
  bool _wipeValue = false;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else
      _addDigit(command);
  }

  _setOperation(String newOperations) {
    _wipeValue = true;
  }

  _addDigit(String digit) {
    _value += digit;
  }

  _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
