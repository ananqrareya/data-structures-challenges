class stack<E>{

  stack() : l=<E>[];
  final List<E> l ;

  push(E value)=> l.add(value) ;
  E pop()=>l.removeLast();
  E get peek=>l.last;
  bool get isEmpty=>l.isEmpty;
  bool get isNotEmpty=> !isEmpty;
  stack.of(Iterable<E>elements):l=List<E>.of(elements);


  @override
  String toString() {
    return '['
        '${ l.reversed.join(', ')}'
        ']';
  }

}
