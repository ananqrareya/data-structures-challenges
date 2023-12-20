import 'Node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;
  bool get isEmpty => head == null;
  int size = 0;
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
    size++;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
    size++;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    size++;
    return node.next!;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    size--;
    return value;
  }

  E? removeLast() {
    if (head?.next == null) {
      return pop();
    }
    var current = head;
    while (current?.next != tail) {
      current = current?.next;
    }
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    size--;
    return value;
  }

  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    size--;
    return value;
  }

  void printReverse() {
    printreverse(head);
  }

  void printreverse(Node<E>? current) {
    if (current == null) return;
    printreverse(current.next);
    print(current.value);
  }

  Node<E>? findMiddleNode() {
    if (isEmpty) {
      return null;
    }

    var left = head;
    var right = head;

    while (right != null && right.next != null) {
      left = left!.next;
      right = right.next!.next;
    }

    return left;
  }

  void reverse() {
    if (isEmpty) return;

    tail = head;
    var previous = head;
    var current = head?.next;

    while (current != null) {
      var next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }

    head?.next = null;
    head = previous;
  }

  void removeOccurrences(E value) {
    if (isEmpty) {
      return;
    }
    while (head != null && head!.value == value) {
      head = head!.next;
      size--;
    }
    var current = head;
    while (current?.next != null) {
      if (current?.next!.value == value) {
        current?.next = current.next!.next;
        size--;
      } else {
        current = current?.next;
      }
    }
    if (isEmpty) {
      tail = null;
    }
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
