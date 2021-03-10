class TreeNode<T> {
  final T item;
  final TreeNode<T>? parent;
  final List<TreeNode<T>> children = [];

  TreeNode({
    required this.item,
    this.parent,
  });
}
