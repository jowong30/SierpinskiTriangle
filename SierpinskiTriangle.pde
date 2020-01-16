public void setup()
{
	size(1200,800);
	background(0);
	sierpinski(400,400,600);
}
public void draw()
{
	

}
public void mouseClicked()//optional
{
	sierpinski(mouseX,mouseY,300);
	bob++;
}
int bob = 1;
public void sierpinski(int x, int y, int len) 
{	
	triangle(x,y-len/2, x-len/2, y+len/2, x+len/2, y+len/2);
	if(len >=1){
		if(bob%3==0){
			noFill();
			stroke(255,0,0);
		}else if(bob%3==1){
			noFill();
			stroke(0,255,0);
		}else{
			noFill();
			stroke(0,0,255);
		}
		sierpinski(x-len/4,y+len/4,len/2);
		sierpinski(x+len/4,y+len/4,len/2);
		sierpinski(x,y-len/4,len/2);
	}

}