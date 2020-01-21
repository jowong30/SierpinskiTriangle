int bob = 1;
int aaa = 1;

public void setup()
{
	size(1200,800);
	background(0);
	strokeWeight(1);
	//sierpinski(400,400,600);

}
public void draw()
{	
	
	for(int i=0; i<20; i+=5){
		if(aaa%3==0){
			noFill();
			stroke(255,0,0);
		}else if(aaa%3==1){
			noFill();
			stroke(0,255,0);
		}else{
			noFill();
			stroke(0,0,255);
		}
		sierpinski(300+i,300+i,600);
	}
	
}
public void mouseClicked()//optional
{
	noFill();
	sierpinski(mouseX,mouseY-50,300);
	bob++;
}



public void sierpinski(int x, int y, int len) 
{	
	
	triangle(x,y-len/2, x-len/2, y+len/2, x+len/2, y+len/2);
	aaa++;
	if(len >=10){
		
		if(bob%3==0){
			noFill();
			stroke(255,0,0);
			bob++;
		}else if(bob%3==1){
			noFill();
			stroke(0,255,0);
			bob++;
		}else{
			noFill();
			stroke(0,0,255);
			bob++;
		}
		
		sierpinski(x-len/4,y+len/4,len/2);
		sierpinski(x+len/4,y+len/4,len/2);
		sierpinski(x,y-len/4,len/2);
	}

}