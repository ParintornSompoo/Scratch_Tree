class Node {
  String type; // oneLine, if-else, loop
  String command;
  ArrayList<Node> child; // next, if, else
  Node(String type_, String input) {
    type = type_;
    command = input;
    child = new ArrayList<Node>();
  }
  void setChild(String type,String input) {
    Node c = new Node(type,input);
    child.add(c);
  }
  void display(int i) {
      pushMatrix();
      if (type.equals("oneLine")) {
        fill(204, 102, 0); // orange 
      }
      else if (type.equals("if")) {
        fill(0, 200, 100); //green
      }
      else if (type.equals("else")) {
        fill(0, 100, 200); //blue
      }
      else {
        fill(255); // white
      }
      int size = 6;
      float l;
      translate(width/2,height*1/3 + (i*size*size));
      l = command.length();
      rect(0-l*size,0-l*size,l*size*2,l*size);
      fill(0);
      textSize(3.6*size);
      text(command,0-l*size*8/10,0-l*size*3/10);
      popMatrix();
  }   
}
