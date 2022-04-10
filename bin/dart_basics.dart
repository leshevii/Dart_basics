import 'task1/delimeters_calculator.dart';
import 'task2/convert_calculator.dart';
import 'task3/string_parser.dart';
import 'task4/word_counter.dart';
import 'task5/words.dart';
import 'task6/calculate_distance.dart';
import 'task7/root.dart';
import 'task8/base.dart';

void main(List<String> arguments) {
  //Нахождение НОД и НОК(1-задание)
  print('1-задание');
  print('НОД(11,2) - ${DelimeterCalculator.gcd(11, 2)}');
  print('НОК(11,2) - ${DelimeterCalculator.lcm(11, 2)}');

  //Перевод чисел(2-задание)
  var calck = ConvertCalculator(10);
  print('2-задание');
  print('Двоичное представление 10 - ${calck.getBinary()}');
  print(
      'Из Двоичного представления числа(10){${calck.getBinary()}} представление  в Десятичное - ${calck.toDecimal()}');
  //3-задание
  print('3-задание');
  print(getNumbersFromString('1 2  3 45 Hello test 13 string 1'));

  //4-задание
  print('4-задание');
  print(getCounterWords(['Hello', 'Hello', 'test', 'Test', 'NULL', 'NULL']));

  //5-задание
  print('5-задание');
  print(getNumbers(['one', 'two', 'Three', 'FOUR']));

  //6-задание
  Point p = Point(1, 2, 3);
  Point p2 = Point(10, 32, 7);
  Point p3 = Point.fromStart();
  print('6-задание');
  print(
      'Расстояние(p1:[${p.numStr}], p2:[${p2.numStr})] - Расстояние: ${p.distanceTo(p2)}');
  print(
      'Расстояние(p1:[${p.numStr}], p2:[${p2.numStr}),p3:[${p3.numStr})] - Площадь: ${Point.getSquare(p, p2, p3)}');
  //7-Задание
  num test = 25;
  print('7-задание');
  print(test.getRoot());
  //8-Задание
  print('8-задание');
  UserManager manager = UserManager('manager@test.ru');
  List<User> users = [
    AdminUser('admin@email.ru'),
    GeneralUser('general@gen.re'),
    GeneralUser('gen@gen.as'),
    GeneralUser('gen3@ge3.gg'),
  ];
  manager.addUsers(users);
  manager.printAll();
}
