extension ListOps on List {
  void append<T>(List<T> other) {
    for (final T item in other) {
      this.add(item);
    }
  }

  List<T> concat<T>() {
    List<T> list = [];

    for (final List<T> item in this) {
      list.append(item);
    }

    return list;
  }

  List<T> filter<T>(bool Function(T elem) predicate) {
    List<T> list = [];

    for (final T item in this) {
      if (predicate(item)) list.add(item);
    }

    return list;
  }

  int count() {
    int length = 0;

    for (final _ in this) {
      length++;
    }

    return length;
  }

  List<T> myMap<T>(T Function(T elem) fn) {
    List<T> list = [];

    for (final T item in this) {
      list.add(fn(item));
    };

    return list;
  }

  U foldl<T, U>(U initial, U Function(U acc, T elem) fn) {
    U result = initial;

    for (final T item in this) {
      result = fn(result, item);
    };

    return result;
  }

  U foldr<T, U>(U initial, U Function(T elem, U acc) fn) {
    U result = initial;

    for (final T item in this.reverse()) {
      result = fn(item, result);
    }

    return result;
  }

  List<T> reverse<T>() {
    List<T> list = [];
    
    for (int i = this.count() - 1; 0 <= i; i--) {
      list.add(this[i]);
    }

    return list;
  }
}
