extension ButterIterableUtil<E> on Iterable<E> {
  /// Group by method for Lists.
  /// Example usage: List list.groupBy((a) => a.date);
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
        <K, List<E>>{},
        (Map<K, List<E>> map, E element) =>
            map..putIfAbsent(keyFunction(element), () => <E>[]).add(element),
      );
}

extension ButterIterableNum<E extends num> on Iterable<E> {
  E sum() {
    var sum = (E == int ? 0 : 0.0) as E;
    for (E current in this) {
      sum = ((sum) + (current)) as E;
    }
    return sum;
  }
}
