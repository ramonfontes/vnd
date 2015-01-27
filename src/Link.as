package{
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextLineMetrics;
	
	import mx.collections.ArrayCollection;
	import mx.containers.Canvas;
	import mx.controls.Alert;
	import mx.controls.Label;
	import mx.core.UITextField;
	import mx.core.UITextFormat;
	import mx.events.FlexEvent;
	import mx.graphics.ImageSnapshot;
	import mx.styles.CSSStyleDeclaration;
	

	public class Link extends Canvas{
		
		[Bindable] public var defaultcolor:Number;
		[Bindable] public var simArray:ArrayCollection=new ArrayCollection();
		public var can:Line
		public var bool:Boolean;
		private var _lineColor:Number=0;
		private var _lineThickness:Number=2;
		private var _beginX:Number=0;
		private var _beginY:Number=0;
		private var _lineHeight:Number;
		private var _lineLength:Number;
		private var count:int=1;
		public var _objectSrc:String;
		public var _objectDst:String;
		public var _checkSource:Boolean;
		public var _computerPort:int;
		public var _switchPortSource:int;
		public var _switchPortDestination:int;
		public var _switchDeviceSource:int;
		public var _switchDeviceDestination:int;
		public var lineName:String;
		public var tf:TextFormat;
				
		public function Link(num:Number){  
			super();
			buttonMode=true;
			this.lineColor=num;
			defaultcolor=num;
			can=new Line();
			addEventListener(FlexEvent.CREATION_COMPLETE,draw);
		}			
		
		public function setFoc():void {
			lineThickness=20;
			//draw();
			//Alert.show('dd');
			//this.borderStyle="solid" borderThickness="5";
			//this.setStyle('borderStyle', "SolidColorDash");
			//this.setStyle('borderThickness',"10");
			/*this.setStyle('borderColor',"haloOrange");
			this.setStyle('backgroundAlpha',"0.44"); */
			//this.border.backgroundAlpha="0.44"
			//this.lineThickness=7;
			//draw2(7);		
		}
		
		public function removeFoc():void {
			lineThickness=2;
			//draw2(2);
		}
		
		public function set lineColor(value:Number):void{
            _lineColor = value;
			draw();
		}
		
		public function get lineColor():Number{
			return _lineColor;
		}
		
		public function set lineThickness(value:Number):void{
            _lineThickness = value;
			draw();
		}
		public function get lineThickness():Number{
			return _lineThickness;
		}		
		
		public function zoo():void{			
		}
		 
		public function get beginX():Number{
			return _beginX;
		}
		
		public function set beginX(value:Number):void{
            _beginX = value;
			draw();
		}	
		
		public function set objectSrc(value:String):void{
			_objectSrc = value;
			draw();
		}
		
		public function set objectDst(value:String):void{
			_objectDst = value;
			draw();
		}
		
		public function set computerPort(value:int):void{
			_computerPort = value;
			draw();
		}
		
		public function set switchDeviceSource(value:int):void{
			_switchDeviceSource = value;
			draw();
		}
		
		public function set switchPortSource(value:int):void{
			_switchPortSource = value;
			draw();
		}
		
		public function set switchDeviceDestination(value:int):void{
			_switchDeviceDestination = value;
			draw();
		}
		
		public function set switchPortDestination(value:int):void{
			_switchPortDestination = value;
			draw();
		}
		
		public function set checkSource(value:Boolean):void{
			_checkSource = value;
			draw();
		}
		
		public function get beginY():Number{
			return _beginY;
		}
		
		public function set beginY(value:Number):void{
            _beginY = value;
			draw();
		}	
		
		public function get lineHeight():Number{
			return _lineHeight;
		}
		
		public function set lineHeight(value:Number):void{
            _lineHeight = value;
			draw();
		}
		
		public function get lineLength():Number{
			return _lineLength;
		}
		public function set lineLength(value:Number):void{
			_lineLength = value;
			draw();
		}

		private function draw(event:FlexEvent=null):void{
		  	//can.obj=this.obj;
		    //can.name=obj.name;
			var origin:Point = new Point(beginX,beginY);
			var destination:Point = new Point(lineLength,lineHeight);
			
			//var lineThickness:Number = 2;
			var lineAlpha:Number = 1;			
			graphics.clear();
			if(lineName=="wireless"){
				graphics.lineStyle(lineThickness,lineColor,0.25);
				graphics.drawEllipse(origin.x,origin.y,10,10);
				graphics.drawEllipse((10*destination.x/100+origin.x-10*origin.x/100),(10*destination.y/100+origin.y-10*origin.y/100),10,10);
				graphics.drawEllipse((20*destination.x/100+origin.x-20*origin.x/100),(20*destination.y/100+origin.y-20*origin.y/100),10,10);
				graphics.drawEllipse((30*destination.x/100+origin.x-30*origin.x/100),(30*destination.y/100+origin.y-30*origin.y/100),10,10);
				graphics.drawEllipse((40*destination.x/100+origin.x-40*origin.x/100),(40*destination.y/100+origin.y-40*origin.y/100),10,10);
				graphics.drawEllipse((50*destination.x/100+origin.x-50*origin.x/100),(50*destination.y/100+origin.y-50*origin.y/100),10,10);
				graphics.drawEllipse((60*destination.x/100+origin.x-60*origin.x/100),(60*destination.y/100+origin.y-60*origin.y/100),10,10);
				graphics.drawEllipse((70*destination.x/100+origin.x-70*origin.x/100),(70*destination.y/100+origin.y-70*origin.y/100),10,10);				
				graphics.drawEllipse((80*destination.x/100+origin.x-80*origin.x/100),(80*destination.y/100+origin.y-80*origin.y/100),10,10);
				graphics.drawEllipse((90*destination.x/100+origin.x-90*origin.x/100),(90*destination.y/100+origin.y-90*origin.y/100),10,10);
				graphics.drawEllipse(destination.x,destination.y,10,10);
			}
			else{
				graphics.lineStyle(lineThickness,lineColor,lineAlpha);
				graphics.moveTo(origin.x,origin.y);
				graphics.lineTo(destination.x,destination.y);			
			}
			
			var uit:UITextField = new UITextField();
			var myFormat:UITextFormat = new UITextFormat(this.systemManager);
			myFormat.size = 12
			myFormat.bold=true;
			myFormat.color=0x0066ff;
			uit.defaultTextFormat = myFormat;
			uit.validateNow();
			var matrix:Matrix = new Matrix();
			var textBitmapData:BitmapData;
			if(_objectSrc=="computer" && _objectDst=="computer"){
				uit.text = String("eth"+_computerPort);
				uit.width = 240;								
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				
				matrix.tx=(20*destination.x/100+origin.x-20*origin.x/100)-20;
				matrix.ty=(20*destination.y/100+origin.y-20*origin.y/100);
				
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
				uit.text = String("eth"+_computerPort);
				//getInterfaces.push("s"+_switchDeviceSource+"-eth"+(_switchPortDestination-1));
				uit.width = 240;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				matrix.tx=(80*destination.x/100+origin.x-80*origin.x/100)-30;
				matrix.ty=(80*destination.y/100+origin.y-80*origin.y/100);
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
			}
			else if(_objectSrc=="computer" && _checkSource==true && _objectDst!="www" && _objectDst!="domain" && lineName!="wireless"){
				//uit.text = String("Computer Port:"+_computerPort+" - s"+_switchDeviceSource+"-eth"+(_switchPortDestination)+":("+_switchPortDestination+")");
				//getInterfaces.push("s"+_switchDeviceSource+"-eth"+(_switchPortDestination-1));
				
				uit.text = String("eth"+_computerPort);
				uit.width = 240;								
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
						
				matrix.tx=(20*destination.x/100+origin.x-20*origin.x/100)-20;
				matrix.ty=(20*destination.y/100+origin.y-20*origin.y/100);
					
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
				uit.text = String("eth"+(_switchPortDestination)+"("+_switchPortDestination+")");
				//getInterfaces.push("s"+_switchDeviceSource+"-eth"+(_switchPortDestination-1));
				uit.width = 240;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				matrix.tx=(80*destination.x/100+origin.x-80*origin.x/100)-30;
				matrix.ty=(80*destination.y/100+origin.y-80*origin.y/100);
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
			}
			else if(_objectDst=="computer" && _checkSource==false && _objectSrc!="www" && _objectSrc!="domain" && lineName!="wireless"){
				//getInterfaces.push("s"+_switchDeviceDestination+"-eth"+(_switchPortSource-1));
				uit.text = String("eth"+(_switchPortSource)+"("+_switchPortSource+")");
				uit.width = 240;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				
				matrix.tx=(20*destination.x/100+origin.x-20*origin.x/100)-30;
				matrix.ty=(20*destination.y/100+origin.y-20*origin.y/100);
				
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
				uit.text = String("eth"+_computerPort);			
				//getInterfaces.push("s"+_switchDeviceDestination+"-eth"+(_switchPortSource-1));
				uit.width = 240;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				
				matrix.tx=(80*destination.x/100+origin.x-80*origin.x/100)-20;
				matrix.ty=(80*destination.y/100+origin.y-80*origin.y/100);
				
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
			}
			else if((_objectDst=="switchOpenflow"||_objectDst=="wirelessRouter") && (_objectSrc=="switchOpenflow" ||_objectSrc=="wirelessRouter" ) && lineName!="wireless"){
				//getInterfaces.push("s"+_switchDeviceSource+"-eth"+(_switchPortDestination-1));
				//getInterfaces.push("s"+_switchDeviceDestination+"-eth"+(_switchPortSource-1));				
				uit.text = String("eth"+(_switchPortSource)+"("+_switchPortSource+")");
				uit.width = 210;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				
				matrix.tx=(20*destination.x/100+origin.x-20*origin.x/100)-30;
				matrix.ty=(20*destination.y/100+origin.y-20*origin.y/100);
				
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
				
				
				uit.text = String("eth"+(_switchPortDestination)+"("+_switchPortDestination+")");
				//getInterfaces.push("s"+_switchDeviceSource+"-eth"+(_switchPortDestination-1));
				//getInterfaces.push("s"+_switchDeviceDestination+"-eth"+(_switchPortSource-1));				
				uit.width = 210;
				textBitmapData = ImageSnapshot.captureBitmapData(uit);
				
				matrix.tx=(80*destination.x/100+origin.x-80*origin.x/100)-30;
				matrix.ty=(80*destination.y/100+origin.y-80*origin.y/100);
				
				graphics.beginBitmapFill(textBitmapData,matrix,false);
				graphics.lineStyle(0,0,0);
				graphics.drawRect(matrix.tx,matrix.ty,uit.measuredWidth,uit.measuredHeight);
				graphics.endFill();
			}
		}
	}
}