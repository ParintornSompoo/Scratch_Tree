class Node {
  String type; // oneLine, if-else, loop
  String command;
  ArrayList<Node> child; // next, if, else
  Node(String type_, String input) {
    type = type_;
    command = input;
    child = new ArrayList<Node>();
  }
}
