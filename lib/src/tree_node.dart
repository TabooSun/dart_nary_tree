class TreeNode<T> {
  final T item;
  final TreeNode<T> parent;
  final List<TreeNode<T>> children = [];

  TreeNode({
    this.item,
    this.parent,
  });
}
