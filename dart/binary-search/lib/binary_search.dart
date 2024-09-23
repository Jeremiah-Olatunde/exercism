import 'package:binary_search/value_not_found_exception.dart';

class BinarySearch {
  List<int> list;

  BinarySearch(this.list);

  (List<int>, List<int>) split(List<int> xs){
    int mid = xs.length ~/ 2;
    
    return (
      xs.sublist(0, mid),
      xs.sublist(mid, xs.length)
    );
  }

  int find(int target){
    if(this.list.isEmpty){
      throw ValueNotFoundException('$target not in list');
    }

    return _find(this.list, target);
  }

  int _find(List<int> xs, int target){  
    int midIndex = xs.length ~/ 2;
    int midValue = xs[midIndex];
    var (lower, upper) = split(xs);
    
    if(target == midValue) return lower.length;
    if(target < midValue) return _find(lower, target);
    if(target > midValue) return lower.length + _find(upper, target);
    
    throw ValueNotFoundException('$target not in list');
  }
}
