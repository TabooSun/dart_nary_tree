import 'package:flutter_test/flutter_test.dart';
import 'package:nary_tree/nary_tree.dart';

class Human {
  final String name;
  final int age;

  Human({
    required this.name,
    required this.age,
  });
}

void main() {
  NaryTree<Human> tree;
  test('adds one to input values', () {
    tree = NaryTree(TreeNode(
      item: Human(
        name: 'Mary',
        age: 65,
      ),
      parent: null,
    ));

    // Children

    tree.root.children.add(TreeNode(
      item: Human(
        name: 'Gordon',
        age: 26,
      ),
      parent: tree.root,
    ));
    tree.root.children.add(TreeNode(
      item: Human(
        name: 'Mark',
        age: 25,
      ),
      parent: tree.root,
    ));

    expect(tree.root.children.length, 2);
  });
}
