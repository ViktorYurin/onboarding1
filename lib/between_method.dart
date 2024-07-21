extension ListExtension<T> on List<T> {
  List<T> insertBetween(T element) {
    if (this.length < 2) {
      return List.from(this);
    }
    List<T> result = [];
    for (int i = 0; i < this.length - 1; i++) {
      result.add(this[i]);
      result.add(element);
    }
    result.add(this.last);
    return result;
  }
}
