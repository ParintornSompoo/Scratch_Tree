class Node {
  String type; // oneLine, if-else, loop
  String command;
  ArrayList<Node> child; // next, if, else
  Node(String type_, String input) {
    type = type_;
    command = input;
    child = new ArrayList<Node>();
  }
  void setChild(String type_,String input_) {
    if (type.equals("oneLine")) {
      if (child.size() == 0) {
        Node c = new Node(type_,input_);
        child.add(c);
        return;
      }
      else {
        Node c = child.get(0);
        c.setChild(type_,input_);
      }
    }
  }
  void display(int i) {  
      //println("display i : " + i);
      //println("command : " + command);
      if (child.size() > 0) {
        Node c = child.get(0);
        c.display(i+1);
        //println(child.get(0).command);
      } else {
        //println("no Child");
      }
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
