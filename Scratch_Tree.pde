Tree main;
void setup() {
  size(800,600);
  Tree main = new Tree();
  main.setSelf("else","var x;");
  main.setChild("oneLine","x = 1;");
  main.setChild("oneLine","x = 2;");
  main.setChild("oneLine","x = 3;");
  main.display();
}

void draw() {
  //main.display();
}
