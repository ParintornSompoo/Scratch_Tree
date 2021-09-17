Tree main;
void setup() {
  size(800,600);
  Tree main = new Tree();
  main.setSelf("oneLine","var x;");
  main.setChild("oneLine","x = 1;");
  main.display();
}

void draw() {
  //main.display();
}
