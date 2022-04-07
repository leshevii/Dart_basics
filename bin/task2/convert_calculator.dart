import 'dart:math';

class ConvertCalculator {
  ///Основание деления
  static const base = 2;

  ///Исходное число
  late final int _source;

  ///Результирующий набор чисил
  final List<int> _numbers = [];

  ConvertCalculator(this._source);

  ///Метод конвертирует из десятичного->в двоичное представление
  void toBinary() {
    _devision(_source);
  }

  ///Выводим 2 представление
  String printBinary() => _numbers.reversed.join();

  ///Из 10->2 представление
  int toDecimal() {
    int result = 0;
    for (int i = 0; i < _numbers.length; i++) {
      result += _numbers[i] * pow(base, i).toInt();
    }
    return result;
  }

  _devision(int divisible) {
    if (divisible < base) {
      _numbers.add(divisible);
      return;
    }
    _numbers.add(divisible % base);
    _devision(divisible ~/ base);
  }
}
