package {
	import laya.display.Sprite;
	import laya.display.Stage;
	import laya.display.Text;
	import laya.events.Event;
	import laya.utils.Browser;
	import laya.utils.Timer;
	import laya.webgl.WebGL;
	public class LayaSample {
		public function LayaSample() {
			//初始化引擎
			Laya.init(1136, 640,WebGL);
            // Laya.stage.bgColor = "#232628";
		    var dotsAlldots:Array = new Array();
	        var dotsTop:Array = new Array();
		    var dotsLeft:Array = new Array();
		    var dotsBottom:Array = new Array();
		    var dotsRight:Array = new Array();
			var angleX1:Array = new Array();
			var angleX2:Array = new Array();
			var angleX3:Array = new Array();
			var angleX4:Array = new Array();
            var dot:Dot=new Dot();                                    //创建定点球			
			//trace("第一个dot位置："+dot.x+" "+dot.y);   

			var second:int=0;                                         //创建计时器
			var c:int=15;
			Laya.stage.once(Event.KEY_DOWN,this,keyDown);
            function keyDown(e:Event):void{
			           switch(e.keyCode){
						   case 13:
						   //Count();  
						   airplane.visible=true;
						   txt1.visible = false;
						   Laya.timer.loop(1000,this,timeCount);
						   Laya.timer.loop(3000,this,Count);
						   Laya.timer.frameLoop(1,this,doShow); 
					   }
			} 
		    function timeCount():void{                                  //计时
			       second++;
			}	   
			function Count():void{                                      //每3秒上下左右各加一个球         
			     var dotT:Dot=new Dot(); 
				 var dotL:Dot=new Dot();
				 var dotB:Dot=new Dot();
				 var dotR:Dot=new Dot();
				 var angleT:Number=new Number();
				 var angleL:Number=new Number();
				 var angleB:Number=new Number();
				 var angleR:Number=new Number();
				 dotT.x=dot.x+Math.floor(Math.random()*510+1);
			     dotT.y=dot.y;
				 dotL.x=dot.x;
			     dotL.y=dot.y+Math.floor(Math.random()*510+1);
				 dotB.x=dot.x+Math.floor(Math.random()*510+1);
			     dotB.y=555;
				 dotR.x=555;
			     dotR.y=dot.y+Math.floor(Math.random()*510+1);
				 angleT=Math.floor(Math.atan2((dotT.y-airplane.y),(dotT.x-airplane.x)) * 180 / Math.PI);              //获取球与飞机相对X轴的角度
			     angleL=Math.floor(Math.atan2((dotL.y-airplane.y),(dotL.x-airplane.x)) * 180 / Math.PI); 
			     angleB=Math.floor(Math.atan2((dotB.y-airplane.y),(dotB.x-airplane.x)) * 180 / Math.PI); 
			     angleR=Math.floor(Math.atan2((dotR.y-airplane.y),(dotR.x-airplane.x)) * 180 / Math.PI); 
				 angleX1.push(angleT);
				 angleX2.push(angleL);
				 angleX3.push(angleB);
				 angleX4.push(angleR);
				 dotsTop.push(dotT);
				 dotsLeft.push(dotL);
				 dotsBottom.push(dotB);
				 dotsRight.push(dotR);   
			}
            
	 	    var rect:Sprite = new Sprite();                                    //创建区域
			    rect.graphics.drawRect(0, 0, 515, 515, "#000000","#232628",2);
			    rect.pos(45,45);
            Laya.stage.addChild(rect);
			 
		    var airplane:Aircraft =new Aircraft();                          //创建飞机
			    airplane.visible=false;
		    Laya.stage.addChild(airplane);

		    for(var j:int=0;j<15;j++){ 
			    angleX1[j]=new Number();
		        angleX2[j]=new Number();
			    angleX3[j]=new Number();
			    angleX4[j]=new Number();   
                 
			    dotsTop[j]=new Dot();       //上边框出球
			    dotsTop[j].x=dot.x+Math.floor(Math.random()*510+1);
			    dotsTop[j].y=dot.y;
			    dotsAlldots.push(dotsTop[j]);
              //trace("上边出球："+"x:"+dotsTop[j].x+" y:"+dotsTop[j].y);

			    dotsLeft[j]=new Dot();       //左边框出球
			    dotsLeft[j].x=dot.x;
			    dotsLeft[j].y=dot.y+Math.floor(Math.random()*510+1);
			    dotsAlldots.push(dotsLeft[j]);
            
			    dotsBottom[j]=new Dot();      //下边框出球
                dotsBottom[j].x=dot.x+Math.floor(Math.random()*510+1);
			    dotsBottom[j].y=555;
			    dotsAlldots.push(dotsBottom[j]);

			    dotsRight[j]=new Dot();          //右边框出球
			    dotsRight[j].x=555;
			    dotsRight[j].y=dot.y+Math.floor(Math.random()*510+1);
			    dotsAlldots.push(dotsRight[j]); 

			    angleX1[j]=Math.floor(Math.atan2((dotsTop[j].y-airplane.y),(dotsTop[j].x-airplane.x)) * 180 / Math.PI);              //获取球与飞机相对X轴的角度
			    angleX2[j]=Math.floor(Math.atan2((dotsLeft[j].y-airplane.y),(dotsLeft[j].x-airplane.x)) * 180 / Math.PI); 
			    angleX3[j]=Math.floor(Math.atan2((dotsBottom[j].y-airplane.y),(dotsBottom[j].x-airplane.x)) * 180 / Math.PI); 
			    angleX4[j]=Math.floor(Math.atan2((dotsRight[j].y-airplane.y),(dotsRight[j].x-airplane.x)) * 180 / Math.PI); 
			    }
			// trace("上面球角度："+angleX1);
			// trace("左面球角度："+angleX2);
			// trace("下面球角度："+angleX3);
			// trace("右面球角度："+angleX4);
		    var txt1:Text = new Text();
			    txt1.text = "Enter键\n开始游戏！";
			    //txt1.align="left";
				txt1.padding=[200,0,0,200];               //上右下左
				txt1.wordWrap = true;      // 是否换行
                //txt1.valign = 'middle';    // 垂直对齐方式,默认为top(上对齐),也可设置middle(垂直居中)或bottom(底部对齐)
			    txt1.color = "#ff0000";
			    txt1.fontSize = 30;
			    txt1.x = txt1.y =45;
			    txt1.bgColor="#FFFFFF"; 
			    txt1.width=txt1.height=515;	
			    Laya.stage.addChild(txt1);

		    var txt3:Text = new Text();
			    txt3.text = "";
				//txt3.padding=[200,0,0,200];
			    txt3.align="center";
				txt3.wordWrap = true;      // 是否换行
                txt3.valign = 'middle';    // 垂直对齐方式,默认为top(上对齐),也可设置middle(垂直居中)或bottom(底部对齐)
			    txt3.color = "#ff0000";
			    txt3.fontSize = 30;
			    txt3.x = txt3.y =45;
			    txt3.bgColor="#FFFFFF"; 
			    txt3.width=txt3.height=515;	
			    Laya.stage.addChild(txt3);
			    txt3.visible = false; 

                var rA:Number=13;      //飞机半径
		        var rD:Number=3;       //球半径
           function doShow():void{
			 for(var i:int=0;i<dotsTop.length;i++){	
			    if(angleX1[i]<=-90){                                                                   //判断上边出球时X坐标在飞机的左、右边；
                   dotsTop[i].x+=Math.abs(Math.cos(angleX1[i]))*dot.speed1; 
			       dotsTop[i].y+=Math.abs(Math.sin(angleX1[i]))*dot.speed1;                            //增加球位移矢量上的X与Y的分速度
				   Out_rect();
			    }
			    if(angleX1[i]>-90){
                   dotsTop[i].x-=Math.abs(Math.cos(angleX1[i]))*dot.speed1;
			       dotsTop[i].y+=Math.abs(Math.sin(angleX1[i]))*dot.speed1;
				   Out_rect();
			    } 
		
			    if(angleX2[i]<=-90){                                                                    //判断左边出球时Y坐标在飞机的上、下边；
                   dotsLeft[i].y+=Math.abs(Math.sin(angleX2[i]))*dot.speed1;
			       dotsLeft[i].x+=Math.abs(Math.cos(angleX2[i]))*dot.speed1;                            //增加球位移矢量上的X与Y的分速度
				   Out_rect();
				}
			    if(angleX2[i]>-90){
                   dotsLeft[i].y-=Math.abs(Math.sin(angleX2[i]))*dot.speed1;
			       dotsLeft[i].x+=Math.abs(Math.cos(angleX2[i]))*dot.speed1;
				   Out_rect();
				} 

			    if(angleX3[i]<=90){                                                                      //判断左边出球时X坐标在飞机的左、右边；
                   dotsBottom[i].x-=Math.abs(Math.cos(angleX3[i]))*dot.speed2; 
			       dotsBottom[i].y-=Math.abs(Math.sin(angleX3[i]))*dot.speed2;                           //增加球位移矢量上的X与Y的分速度
				   Out_rect();
				}
			    if(angleX3[i]>90){
                   dotsBottom[i].x+=Math.abs(Math.cos(angleX3[i]))*dot.speed2;
			       dotsBottom[i].y-=Math.abs(Math.sin(angleX3[i]))*dot.speed2;
				   Out_rect();
				} 
			
			    if(angleX4[i]<=0){                                                                     //判断右边出球时Y坐标在飞机的上、下边；
                   dotsRight[i].y+=Math.abs(Math.sin(angleX4[i]))*dot.speed2; 
			       dotsRight[i].x-=Math.abs(Math.cos(angleX4[i]))*dot.speed2;                          //增加球位移矢量上的X与Y的分速度
				   Out_rect();
				}
			    if(angleX4[i]>0){
                   dotsRight[i].y-=Math.abs(Math.sin(angleX4[i]))*dot.speed2;
			       dotsRight[i].x-=Math.abs(Math.cos(angleX4[i]))*dot.speed2; 
				   Out_rect();
				} 
				var disdance1:Number=Math.sqrt((dotsTop[i].x-airplane.x)*(dotsTop[i].x-airplane.x)+(dotsTop[i].y-airplane.y)*(dotsTop[i].y-airplane.y));
			    if(disdance1<=(rA+rD)){  
					Gameover();                                                                                        //判断上边球是否碰撞
			       }
		    var disdance2:Number=Math.sqrt((dotsLeft[i].x-airplane.x)*(dotsLeft[i].x-airplane.x)+(dotsLeft[i].y-airplane.y)*(dotsLeft[i].y-airplane.y));
			    if(disdance2<=(rA+rD)){    
					Gameover();                                                                                     //判断左边球是否碰撞
			       }
			var disdance3:Number=Math.sqrt((dotsBottom[i].x-airplane.x)*(dotsBottom[i].x-airplane.x)+(dotsBottom[i].y-airplane.y)*(dotsBottom[i].y-airplane.y));
                if(disdance3<=(rA+rD)){    
					Gameover();                                                                                       //判断下边球是否碰撞
			       }	
			var disdance4:Number=Math.sqrt((dotsRight[i].x-airplane.x)*(dotsRight[i].x-airplane.x)+(dotsRight[i].y-airplane.y)*(dotsRight[i].y-airplane.y));
			    if(disdance4<=(rA+rD)){	   
					Gameover();                                                                                     //判断右边球是否碰撞
			       }
				 Laya.stage.addChild(dotsTop[i]);
			     Laya.stage.addChild(dotsLeft[i]);
			     Laya.stage.addChild(dotsBottom[i]);
			     Laya.stage.addChild(dotsRight[i]);
			   }
		   }
		//    function Dis():void{
		// 	for(var i:int=0;i<c;i++){
			
		// 	   }
		//    }
           function Out_rect():void{                                                   //球出边界
			   for(var g:int=0;g<dotsTop.length;g++){
			    if(dotsTop[g].x>550||dotsTop[g].x<45||dotsTop[g].y<45||dotsTop[g].y>550){	                                   
				   dotsTop[g].x=45+Math.floor(Math.random()*510+1);
				   dotsTop[g].y=45;
			       }
                if(dotsLeft[g].x>555||dotsLeft[g].x<45||dotsLeft[g].y<45||dotsLeft[g].y>555){                                 
				   dotsLeft[g].x=45;
				   dotsLeft[g].y=45+Math.floor(Math.random()*510+1);
                   }
			    if(dotsBottom[g].x>555||dotsBottom[g].x<45||dotsBottom[g].y<45||dotsBottom[g].y>555){                             
				   dotsBottom[g].x=45+Math.floor(Math.random()*510+1);
				   dotsBottom[g].y=555;
			       }
			    if(dotsRight[g].x>555||dotsRight[g].x<45||dotsRight[g].y<45||dotsRight[g].y>555){                               
				   dotsRight[g].x=555;
				   dotsRight[g].y=45+Math.floor(Math.random()*510+1);
			       }	
			 }
		 }  
		 function Gameover():void{                                                    //游戏结束
			 Laya.timer.clear(this,doShow);
			 Laya.timer.clear(this,Count);
				   airplane.visible=false;
				//    txt1.visible = true;
				//    txt1.changeText('');
				   txt3.visible = true;
				   txt3.changeText("Game Over！\n"+"你坚持了"+second+"秒\n"+"子弹数："+(dotsTop.length+dotsLeft.length+dotsBottom.length+dotsRight.length)+"发");
				   //Laya.stage.off(Event.KEY_DOWN,this,keyDown);
				   //Laya.stage.on(Event.KEY_DOWN,this,keyDown);
				   for(var a:int=0;a<dotsTop.length;a++){
					   dotsTop[a].visible=false;
					   dotsRight[a].visible=false;
					   dotsLeft[a].visible=false;
					   dotsBottom[a].visible=false;
				   }
				   trace("发生碰撞时airplane的位置："+airplane.x+" "+airplane.y);
             }		  
	    }	
	}
}