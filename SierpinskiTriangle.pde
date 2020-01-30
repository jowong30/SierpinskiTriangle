int bob = 1;
int aaa = 1;
int size = 300;
int asd = 0;
int size2=300;
int size3 =0;
public void setup()
{
	size(1200,700);
	background(0);
	strokeWeight(1);
	noFill();
	sierpinski(400,400,300);
	rotate(PI);
	
	sierpinski(700,400,300);

}
public void draw()
{	
	background(0);
	if(asd ==0){
		sierpinski(800,350,size);
		if(size>=600){
			size=300;
			asd = 1;

		}else{
			size+=2;
		}
	}
	if(asd ==1){
		sierpinski(800,200,size2-300);
		sierpinski(650,500,size2-300);
		sierpinski(950,500,size2-300);
	}

	if(size2<=900){
		size2+=2;
	}else{
		asd=2;
		sierpinski(800,200,size2-300);
		sierpinski(650,500,size2-300);
		sierpinski(950,500,size2-300);
		rotate(PI);
		translate(-800,-350);

		sierpinski(0,0,size3);
		sierpinski(-150,-300,size3);
		sierpinski(150,-300,size3);
	}
	if(size3<=300&&asd==2){
		size3+=3;
	}
	/*
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
	*/
}
public void mousePressed()//optional
{
	noFill();
	sierpinski(mouseX,mouseY-50,300);
	bob++;
}



public void sierpinski(int x, int y, int len) 
{	
	
	triangle(x,y-len/2, x-len/2, y+len/2, x+len/2, y+len/2);
	aaa++;
	if(len >=5){
		
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