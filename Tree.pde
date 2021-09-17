class Tree {
  Node self;
  Tree(String input) {
    self = new Node(input);
  }
  void display() {
    float l = self.command.length();
    pushMatrix();
    fill(255); 
    translate(width/2,height*1/3);
    int param = 10;
    rect(0-l*param,0-l*param,l*param*2,l*param);
    fill(0);
    textSize(36);
    text(self.command,0-l*8,0-l*3);
    popMatrix();
  }
}
