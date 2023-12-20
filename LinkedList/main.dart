import 'LinkedList.dart';

void main() {
  final list = LinkedList<int>();
  list.push(1);
  list.push(3);
  list.push(3);
  list.push(4);

  print('Print Linked List :');
  print(list);
  print("\n");

  //----------------------
  print('Challenge 1: Print in Reverse :');
  list.printReverse();
  //----------------------
  print('Challenge 2: Find the Middle Node ');
  var middleNode = list.findMiddleNode();
  if (middleNode != null) {
    print('Middle Node: ${middleNode.value}');
  } else {
    print('The list is empty.');
  }
  //----------------------
  print('Challenge 3: Reverse a Linked List  ');
  list.reverse();
  print(list);
  //----------------------
  print('Challenge 4: Remove All Occurrences : ');
  list.removeOccurrences(3);
  print(list);
}