public void setup()
{
  size(500,500);
  background(100);
}
public void draw()
{
  sierpinski(0,height,width);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	int a = (int)(Math.random()*255);
	int b = (int)(Math.random()*255);
	int c = (int)(Math.random()*255);
	if (len > 20){
		fill(a,b,c);
    	triangle(x,y,x+len/2,y-len,x+len,y);
    sierpinski(x,y,len/2);
    sierpinski(x+(len/2),y,len/2);
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}
