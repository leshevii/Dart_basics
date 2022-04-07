Map<String, int> getCounterWords(List<String> l) {
  Map<String, int> local = {};
  l.forEach((element) {
    var length =
        l.where((elementInner) => elementInner == element).toList().length;
    local[element] = length;
  });
  return local;
}
