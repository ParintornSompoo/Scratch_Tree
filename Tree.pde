class Tree {
  Node self;
  int child_size;
  Tree() {
    Node self = new Node("null", "");
    for (int i = 0;3 > i;i++) {
      self.child[i] = new Node("null"," ");
    }
    child_size = 0;
  }
  void setSelf(String type,String input) {
    self = new Node(type,input);
  }
  void setChild(String type,String input) {
    int i;
    if (type.equals("oneLine")) {
      i = 0;
    } 
    else if (type.equals("if")) {
      i = 1;
    } 
    else if (type.equals("else")){
      i = 2;
    } 
    else {
      i = 0;
    }
    self.child[i] = new Node(type,input);
    child_size += 1;
  }
  void display() {
    background(200);
    // draw self node
    pushMatrix();
    if (self.type.equals("oneLine")) {
      fill(204, 102, 0); // orange 
    }
    else {
      fill(255); // white
    }
    translate(width/2,height*1/3);
    int size = 8;
    float l;
    l = self.command.length();
    rect(0-l*size,0-l*size,l*size*2,l*size);
    fill(0);
    textSize(3.6*size);
    text(self.command,0-l*size*8/10,0-l*size*3/10);
    popMatrix();
    // draw child node
    if (child_size > 0) {
      for (int i =0;child_size > i;i++) {
        pushMatrix();
        translate(width/2,height*1/3+size*6);
        if (self.type.equals("oneLine")) {
          fill(204, 102, 0); // orange 
        }
        else {
          fill(255); // white
        }
        l = self.child[0].command.length();
        rect(0-l*size,0-l*size,l*size*2,l*size);
        fill(0);
        textSize(3.6*size);
        text(self.child[i].command,0-l*size*8/10,0-l*size*3/10);
        popMatrix();
      }   
    }
  }
}
