class Tree {
  Node root;
  Tree() {
    Node root = new Node("null", "");
  }
  void setSelf(String type,String input) {
    root = new Node(type,input);
  }
  void setChild(String type,String input) {
    if (root.child.size() == 0) {
      Node c = new Node(type,input);
      root.child.add(c);
    }
  }
  void display() {
    background(200);
    // draw self node
    pushMatrix();
    if (root.type.equals("oneLine")) {
      fill(204, 102, 0); // orange 
    }
    if (root.type.equals("if")) {
      fill(0, 200, 100); //green
    }
    if (root.type.equals("else")) {
      fill(0, 100, 200); //blue
    }
    else {
      fill(255); // white
    }
    translate(width/2,height*1/3);
    int size = 4;
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
        pushMatrix();
        translate(width/2,height*1/3+size*6);
        if (root.type.equals("oneLine")) {
          fill(204, 102, 0); // orange 
        }
        if (root.type.equals("if")) {
          fill(0, 200, 100); //green
        }
        if (root.type.equals("else")) {
          fill(0, 100, 200); 
        }
        else {
          fill(255); // white
        }
        Node c = root.child.get(i);
        l = c.command.length();
        rect(0-l*size,0-l*size,l*size*2,l*size);
        fill(0);
        textSize(3.6*size);
        text(c.command,0-l*size*8/10,0-l*size*3/10);
        popMatrix();
      }   
    }
  }
}
