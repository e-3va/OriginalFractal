public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  myFractal(250, 250, 200, 130, 14, 5);
  fill(235, 56, 42);
  ellipse(250,250,10,10);
}
public void myFractal(int x, int y, int z, int r, int g, int b){
  int d = z - (z/4);
  fill(r,g,b);
  ellipse(x-(d-d/4),y-(d-d/4),z,z); // top left
  ellipse(x+(d-d/4),y-(d-d/4),z,z); // top right
  ellipse(x,y-d,z,z); // top center
  ellipse(x-d,y,z,z); // left
  ellipse(x-(d-d/4),y+(d-d/4),z,z); // bottom left
  ellipse(x+(d-d/4),y+(d-d/4),z,z); // bottom right
  ellipse(x,y+d,z,z); // bottom center
  ellipse(x+d,y,z,z); // right
  if(z>10){
    myFractal(x,y,z-(z/4), r + 20, g + 3, b + 3);
  }
}
