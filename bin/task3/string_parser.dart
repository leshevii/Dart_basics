getNumbersFromString(String str) {
  List<num> l = [];

  for (var element in str.split(' ')) {
    var n = num.tryParse(element);
    if (n != null) l.add(n);
  }
  return l;
}
