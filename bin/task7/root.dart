import 'dart:math';

///n - степень корня по умолчанию квадратиный корень извлекаем
///iter - число итераций для точности работы алгоритма
extension RootExtension on num {
  num getRoot({int n = 2, int iter = 10}) {
    if (n % 2 == 0 && this < 0)
      throw Exception('current value not valid for this operation');

    num res = 1.0;
    for (num i = 0; i < iter; i++) {
      if (res == (res = 1 / n * ((n - 1) * res + (this / pow(res, n - 1))))) {
        return res;
      }
    }
    return res;
  }
}
