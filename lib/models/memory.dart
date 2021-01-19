class Memory {
  static const operations = const ['%', '/', '*', '-', '+', '='];

  final _buffer = ([0.0, 0.0]);
  int _bufferIndex = 0;
  String _operation;
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
    if (_bufferIndex == 0) {
      _operation = newOperations;
      _bufferIndex = 1;
    } else {
      _buffer[0] = _calculate();
    }
    _wipeValue = true;
  }

  _addDigit(String digit) {
    final isDot = digit == '.';

    final wipeValue = (_value == '0' && !isDot) || _wipeValue;

    if (isDot && _value.contains('.') && _wipeValue) {
      return;
    }

    final emptyValue = isDot ? '0' : '';
    final currentValue = wipeValue ? emptyValue : _value;
    _value = currentValue + digit;
    _wipeValue = false;

    _buffer[_bufferIndex] = double.tryParse(_value) ?? 0;
  }

  _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }

  _calculate() {
    switch (_operation) {
      case '%':
        return _buffer[0] % _buffer[1];
      case '/':
        return _buffer[0] / _buffer[1];
      case '*':
        return _buffer[0] * _buffer[1];
      case '-':
        return _buffer[0] - _buffer[1];
      case '+':
        return _buffer[0] + _buffer[1];
      default:
        return _buffer[0];
    }
  }
}
