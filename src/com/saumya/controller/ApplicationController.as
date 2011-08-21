package com.saumya.controller
{
	import flash.display.Sprite;
	import flash.events.TouchEvent;
	
	import mx.core.UIComponent;
	
	import openplug.elips.controls.Button;
	import openplug.elips.controls.Image;

	public class ApplicationController
	{
		private var view:Attt;
		//private var gameContainer:UIComponent=new UIComponent();
		private var gap:int=5;
		private var marginX:int=10;
		private var marginY:int=10;
		//game logic
		private var activePlayer:int=1;//values : 1,2
		
		public function ApplicationController(viewRef:Attt)
		{
			this.view=viewRef;
			this.init();
		}
		
		private function init():void
		{
			//this.view.gameBg.addChild(this.gameContainer);
			//
			this.view.btn_11.x=this.marginX+0+this.gap*0;
			this.view.btn_12.x=this.marginX+50+this.gap*1;
			this.view.btn_13.x=this.marginX+100+this.gap*2;
			this.view.btn_11.y=this.view.btn_12.y=this.view.btn_13.y=this.marginY+0+this.gap*0;
			
			this.view.btn_21.x=this.marginX+0+this.gap*0;
			this.view.btn_22.x=this.marginX+50+this.gap*1;
			this.view.btn_23.x=this.marginX+100+this.gap*2;
			this.view.btn_21.y=this.view.btn_22.y=this.view.btn_23.y=this.marginY+50+this.gap*1;
			
			this.view.btn_31.x=this.marginX+0+this.gap*0;
			this.view.btn_32.x=this.marginX+50+this.gap*1;
			this.view.btn_33.x=this.marginX+100+this.gap*2;
			this.view.btn_31.y=this.view.btn_32.y=this.view.btn_33.y=this.marginY+100+this.gap*2;
			
			this.view.btn_reset.x=this.marginX;
			this.view.btn_reset.y=this.marginY+this.view.btn_33.y+this.view.btn_33.height;
			//
			this.view.addEventListener(TouchEvent.TOUCH_TAP,onTouchTap);
		}
		
		private function onTouchTap(e:TouchEvent):void
		{
			var o:Object=e.target;
			if(o is Image)
			{
				var btn:Image=Image(e.target);
				//
				if(this.activePlayer==1)
				{
					btn.source=this.view.ImgCross;
					this.activePlayer=2;
				}else if(this.activePlayer==2){
					btn.source=this.view.ImgRound;
					this.activePlayer=1;
				}
			}else if(o is Button){
				this.initGame();
			}
		}
		
		private function initGame():void
		{
			this.activePlayer=1;
			this.view.btn_11.source=this.view.btn_12.source=this.view.btn_13.source
				=this.view.btn_21.source=this.view.btn_22.source=this.view.btn_23.source
				=this.view.btn_31.source=this.view.btn_32.source=this.view.btn_33.source
				=this.view.ImgBlank;
		}
		
	}
}