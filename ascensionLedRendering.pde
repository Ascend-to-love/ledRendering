Table table;

void setup() {
  
  size(600, 600, P3D);
  //size(600, 600, P2D);
  
  noSmooth();
  
  table = loadTable("/Users/akesich/IdeaProjects/ascention-led-locations/led-locations.csv", "header,csv");

  println(table.getRowCount() + " total rows in table"); 

  
  
  println("done plotting");
  
}

float cameraR = 900;
float cameraTheta = 0.0;

void draw () {
  background(180);
  for (TableRow row : table.rows()) {
    
    float x = row.getFloat("x")/10;
    float y = row.getFloat("y")/10;
    float z = row.getFloat("z")/10 - 200;
    
    //println(x + ", " + y + ", " + z);
    
    //point(x, z);
    point(x, z, y);
  }
  //cameraTheta = mouseX / 10;
  camera(cameraR * sin(cameraTheta), 200, cameraR * cos(cameraTheta), 0, 0, 0, 0, -1, 0);
  cameraTheta += 0.01;
}


