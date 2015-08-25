	package 
	{
		import flash.display.*;
		import flash.events.*;
		import flash.utils.getTimer;

		public class  container  extends MovieClip
		{
			public var b:boid;

			public function container()
			{	
				var i:int=0;
			
				for(i =0; i<1500;i++)
				{
					b=new boid();
					addChild(b);
				}
				
				var f:fpsDisplayer=new fpsDisplayer();
				addChild(f);
			}
		}
	}