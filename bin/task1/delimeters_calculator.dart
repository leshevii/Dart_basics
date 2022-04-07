///Данный клас реализует операци нахождения (НОД,НОК)
class DelimeterCalculator {
  ///НОД
  static int gcd(int a, int b) => b != 0 ? gcd(b, a % b) : a;

  ///НОК
  static int lcm(int a, int b) => (a / gcd(a, b) * b).toInt();
}
