Map<String, int> getCounterWords(List<String> l) {
  Map<String, int> local = {};
  Set inner = {};
  l.forEach((element) {
    var length = l
        .where((elementInner) =>
            elementInner.toLowerCase() == element.toLowerCase())
        .toList()
        .length;
    if (inner.contains(element.toLowerCase()) == false) {
      inner.add(element.toLowerCase());
      local[element] = length;
    }
  });
  return local;
}
