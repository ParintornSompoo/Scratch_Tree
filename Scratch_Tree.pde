Tree main;
void setup() {
  size(800,600);
  Tree main = new Tree();
  main.setRoot("oneLine","var x;");
  for (int i=1;4>=i;i++) {
    main.setChild("oneLine","x = "+Integer.toString(i)+ ";");
  }
  main.setChild("if", "if (true)");
  main.display();
}

void draw() {
  //main.display();
}
