class Tree {
  Node root;
  Tree() {
    Node root = new Node("null", "");
  }
  void setSelf(String type,String input) {
    root = new Node(type,input);
  }
  void setChild(String type,String input) {
    if (type.equals("oneLine")) {
      if (root.child.size() == 0) {
        root.setChild(type,input);
      }
      else {
        Node c = root.child.get(0);
        if (c.child.size() > 0) {
          c.child.get(0).setChild(type,input);
        }
        else {
          c.setChild(type,input);
        }
      }
    }
  }
  void display() {
    background(200);
    // draw self node
    pushMatrix();
    if (root.type.equals("oneLine")) {
      fill(204, 102, 0); // orange 
    }
    else if (root.type.equals("if")) {
      fill(0, 200, 100); //green
    }
    else if (root.type.equals("else")) {
      fill(0, 100, 200); //blue
    }
    else {
      fill(255); // white
    }
    translate(width/2,height*1/3);
    int size = 6;
    float l;
    l = root.command.length();
    rect(0-l*size,0-l*size,l*size*2,l*size);
    fill(0);
    textSize(3.6*size);
    text(root.command,0-l*size*8/10,0-l*size*3/10);
    popMatrix();
    // draw child node
    
    if (root.child.size() > 0) {
      for (int i =0;root.child.size() > i;i++) {
        Node c = root.child.get(i);
        c.display(i+1);
      }   
    }
  }
}
