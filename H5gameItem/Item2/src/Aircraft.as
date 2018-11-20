package 
{   import laya.display.Sprite;
	import laya.display.Stage;
	import laya.display.Text;
	import laya.events.Event;
	import laya.utils.Handler;
	import laya.utils.Browser;
	import laya.webgl.WebGL;
	public class Aircraft extends Sprite{
		private var isTopkeydown:Boolean=false;
		private var isLeftkeydown:Boolean=false;
		private var isBottomkeydown:Boolean=false;
		private var isRightkeydown:Boolean=false;
		public function Aircraft (){
			graphics.drawCircle(0, 0, 13,null);
			this.pos(280,280);		          //飞机初始坐标
            this.loadImage("../res/airplane.png");
			Laya.stage.on(Event.KEY_DOWN,this,keyDown);
			Laya.stage.on(Event.KEY_UP,this,keyUp);			
	        Laya.timer.frameLoop(1,this,update);  
		}
		private function update():void{
			if(isTopkeydown){
               this.y=this.y-2;
               if(this.y<48){this.y=48;}
			   }
			if(isLeftkeydown){
			   //this.x--;
			   this.x=this.x-2; 
			   if(this.x<48){this.x=48;} 
			   }  
			if(isBottomkeydown){
               //this.y++;
			   this.y=this.y+2;
			   if(this.y>544){this.y=544;}
			   } 
			if(isRightkeydown){
			   //this.x++;
			   this.x=this.x+2;
			  if(this.x>544){this.x=544;} 
		      }
		}
		private function keyDown(e:Event):void{
			switch(e.keyCode){
				case 37:
					//trace("左");
					isLeftkeydown=true;
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
				case 38:
					//trace("上");
					isTopkeydown=true;
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
				case 39:
					//trace("右");
					isRightkeydown=true;
					
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
				case 40:
					//trace("下");
					isBottomkeydown=true;
					
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
			        }
		         }
		private function keyUp(e:Event):void{
			switch(e.keyCode){
				case 37:
					//trace("左");
					isLeftkeydown=false;
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
				// case 38:
				// 	//trace("上");
				// 	isTopkeydown=false;
				// 	//trace("飞机的坐标："+this.x+" "+this.y);
				// 	break;
				case 39:
					//trace("右");
					isRightkeydown=false;
					
					//trace("飞机的坐标："+this.x+" "+this.y);
					break;
				// case 40:
				// 	//trace("下");
				// 	isBottomkeydown=false;
					
				// 	//trace("飞机的坐标："+this.x+" "+this.y);
				// 	break;
			        }
		     }
      }
}