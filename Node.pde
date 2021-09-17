class Node {
  String type; // oneLine, if-else, loop
  String command;
  Node[] child = new Node[3]; // next, if, else
  Node(String type_, String input) {
    type = type_;
    command = input;
    for (int i=0;child.length > i;i++) {
      child[i] = null;
    }
  }
}
