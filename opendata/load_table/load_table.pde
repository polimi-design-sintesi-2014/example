Table table;
color woman = color(26, 155, 242);
color man = color(255, 122, 135);
color lines = color(255);
String dataset1 = "Stranieri_sesso_citt_1987_2013.csv";

void setup() {

  size (1000, 300);
}

void draw() {
  noLoop();
  lineDraw(dataset1, lines);
  tableDraw(dataset1, 328, man);
  tableDraw(dataset1, 329, woman);
  stroke(255);
  line (65, height-10, width, height-10);
  textAlign(LEFT);
  textSize(16);
  fill(186, 43, 58);
  text("migration flow from Thailand in milan - source 'dati.comune.milano.it'", 55, 14);
}

// name is the name of the CSV file inside the "data" folder of the project
// row specify a specify wich raw you want to show

void tableDraw (String name, int row, color lcol) {
  table = loadTable(name);
  TableRow val1 = table.getRow(row);  //get a specific row and assign it to "val1" object
  TableRow header = table.getRow(0);  //read the fisrt row and assign it to "header" object
  //print (table.getString(row, 0) + " - ");
  //print (table.getColumnCount() + " - ");
  int lun = width/table.getColumnCount(); //divide width for number of column in the table

  // create an array of value equal than the number of interested column
  // starting from 2 because the first two column are "header"
  float max_val = 0;
  for (int i = 2; i<table.getColumnCount (); i++) { 
    fill(255); 
    //print(val1.getFloat(i) + " "); //get the values of the raw "val1"
    float y1 = val1.getFloat(i); //get the values of the table and assign each at "y1"
    if (i < table.getColumnCount()-1) {  //exlude the last value 
      float y2 = -val1.getFloat(i+1)+height-10;
      stroke(lcol);
      line (lun*i, -y1+height-10, lun*(i+1), y2);
    }
    if (y1>max_val) 
      max_val = y1; 


    String anni = header.getString(i); //assign the first row
    ellipse (lun*i, -y1+height-10, 8, 8); 
    textSize(10);
    textAlign(CENTER);
    fill(255);
    text(anni, lun*i, 30);
  }

  println (max_val);
  String label = val1.getString(1);
  float poslabel = -val1.getFloat(2)+height-10;
  fill(lcol);
  textAlign(RIGHT);
  text (label, lun*2-10, poslabel);
}

void lineDraw (String name, color lcol) {
  table = loadTable(name);
  int lun = width/table.getColumnCount();
  for (int i = 2; i<table.getColumnCount (); i++) {
    stroke(lcol);
    line (lun*i, 35, lun*i, height-10);
  }
}

