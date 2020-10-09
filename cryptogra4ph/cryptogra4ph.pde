String[] name;
int[] month;
float[] prices;

void setup()
{
  size(400, 400);
//loading table from csv file into the program
  String[] lines = loadStrings("cryptodataset.csv");

  name = new String[lines.length-1];
  month =  new int[lines.length-1];
  prices = new float[lines.length-1];

  for (int i = 0; i<lines.length-1; i++)
  {
    String[] tokens = lines[i+1].split(",");

    month[i] = int(tokens[1].substring(3, 5));

    name[i] = tokens[0];
    prices[i] = float(tokens[2]);
  }
}


//menu design
void draw()
{
  background(200);
  textAlign(CENTER, BOTTOM);
  textSize(15);
  fill(0);
  text("cryptogr4ph2019", width/2, 100); 
  textSize(9);
  text("input the following keys to view the crypto prices", width/2, 130);
  text("a - BTC (Bitcoin)", width/2, 165);
  text("b - ETH (Ethereum)", width/2, 195);
  text("c - LTC (Litcoin)", width/2, 225);
  text("d - XRP (Ripple)", width/2, 255);
  textSize(9);
  text("All Graphs are in GPB and are presented by the first of each month for 2019", width/2, 285);
  text("input any key 4 home", width/2,305);
  
//graph
  String cName = "Default";
  if (key == 'a')
  {
    background(200);
    text("BTC",10,10);text("y 2000 to 9000", 35,20);
    cName = "BTC";
    for (int y = 1; y<=12; y++)
    {
      float priced = 0;
      for (int i=0; i<month.length; i++)
      {
        if (name[i].equals(cName) && month[i] == y)
        {
          priced += prices[i];
        }
      }
      float x = map(y, 1, 12, 10, width-10);
      float yy = map(priced, 2000, 9000, height-10, 10);

      circle(x, yy, 5);
    }
  }
  if (key == 'b')
  {
    background(200);
    text("ETH",10,10);text("y 75 to 200", 27,20);
    cName = "ETH";
    for (int y = 1; y<=12; y++)
    {
      float priced = 0;
      for (int i=0; i<month.length; i++)
      {
        if (name[i].equals(cName) && month[i] == y)
        {
          priced += prices[i];
        }
      }
      float x = map(y, 1, 12, 10, width-10);
      float yy = map(priced, 75,200, height-10, 10);

      circle(x, yy, 5);
    }
  }
  if (key == 'c')
  {
    background(200);
    text("LTC",10,10);text("y 20 to 100", 27,20);
    cName = "LTC";
    for (int y = 1; y<=12; y++)
    {
      float priced = 0;
      for (int i=0; i<month.length; i++)
      {
        if (name[i].equals(cName) && month[i] == y)
        {
          priced += prices[i];
        }
      }
      float x = map(y, 1, 12, 10, width-10);
      float yy = map(priced, 20, 100, height-10, 10);

      circle(x, yy, 5);
    }
  }
  if (key == 'd')
  {
    background(200);
    text("XRP",10,10);text("y 0.1 to 0.5",27,20);
    cName = "XRP";
    for (int y = 1; y<=12; y++)
    {
      float priced = 0;
      for (int i=0; i<month.length; i++)
      {
        if (name[i].equals(cName) && month[i] == y)
        {
          priced += prices[i];
        }
      }
      float x = map(y, 1, 12, 10, width-10);
      float yy = map(priced, 0.1, 0.5, height-10, 10);
      circle(x, yy, 5);
    }
  }
}
