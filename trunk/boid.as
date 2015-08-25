	package 
	{
		import flash.display.*;
		import flash.events.*
		import flash.utils.*;

		public class boid extends MovieClip
		{
			public var  speedX:Number ;
			public var  speedY:Number ;	
			private var lastTime:int;
			
			public function boid()
			{
				speedX = 5-10*Math.random();
				speedY = 5-10*Math.random();
				
				this.x=530*Math.random();
				this.y=530*Math.random();
				lastTime=getTimer();
				addEventListener(Event.ENTER_FRAME,move);		
			}
			public function move(event:Event)
			{
				this.x+=speedX;
				this.y+=speedY;

				
				if(this.x > 530)
					speedX=-speedX;
				if(this.x < 0)
					speedX=-speedX;					
				if(this.y > 380)
					speedY=-speedY;					
				if(this.y < 0)
					speedY=-speedY;
			}
		}
	}