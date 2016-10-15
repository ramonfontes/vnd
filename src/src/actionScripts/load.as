import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

public function load(eve:ResultEvent):void{
	var obj:objParameter = new objParameter();
	var xmlInfo:XMLList=eve.result.objects as XMLList;
	var numberofnod:XMLList=eve.result.numberofnodes as XMLList;
	var numberOfViews:XMLList=eve.result.numberOfViews as XMLList;
	var cTimes:int=0;
	var check:Boolean=false;
	var arrayContIfaces1:Array=new Array();
	var np:int;
	var sr:String;
	var ds:String;
	var cc:int=0;
	var devicesrcport:int;
	var devicedstport:int;
	isInport=true;
	
	numberOfNodes=numberofnod[0]; 
	dropCanvas.removeAllChildren();
	
	for(var a:int=0;a<xmlInfo.length();a++){
		if(xmlInfo[a].type=='links'){
			cc++;
		}
	}
		
	for(a=0;a<xmlInfo.length();a++){
		if(xmlInfo[a].type=='nodes'){
			var OB:objects=new objects();
			OB.id=xmlInfo[a].id;
			OB.name=xmlInfo[a].name;
			OB.x=xmlInfo[a].x;
			OB.y=xmlInfo[a].y;			
			OB.img= xmlInfo[a].image;
			OB.secondTime=true;  
			OB.exportControll=true;
			var objparaArrayCol:ArrayCollection=new ArrayCollection();
			
			for(var b:int=0;b<xmlInfo[a].par.length();b++){
				var ob:objParameter=new objParameter();
				ob.id=xmlInfo[a].par[b].type;
				ob.name=xmlInfo[a].par[b].name;
				
				if(xmlInfo[a].par[b].type=='options'){
					for(var bb:int=0;bb<xmlInfo[a].par[b].option.length();bb++){
						ob.option.push(xmlInfo[a].par[b].option[bb]);
					}
				}
				objparaArrayCol.addItem(ob);
			}
			
			OB.objparaArrayCol=objparaArrayCol;     
			var valueObjArr:ArrayCollection=new ArrayCollection();
			
			for(b=0;b<xmlInfo[a].valueObjArr.length();b++){
				var objectsValueObjArr:ChangedTemp=new ChangedTemp();
				objectsValueObjArr.id=xmlInfo[a].valueObjArr[b].id;
				objectsValueObjArr.name=xmlInfo[a].valueObjArr[b].name;
				objectsValueObjArr.combeValue=xmlInfo[a].valueObjArr[b].combeValue;
				
				if(xmlInfo[a].valueObjArr[b].haschanged=='true'){
					objectsValueObjArr.haschanged=true;
				}
				else  {
					objectsValueObjArr.haschanged=false;
					
				}
				if(xmlInfo[a].valueObjArr[b].IsCombo=='true'){
					objectsValueObjArr.IsCombo=true;
				}
				else {
					objectsValueObjArr.IsCombo=false;
				}
				
				if(objectsValueObjArr.id=="flowName")
					cTimes++;
				
				valueObjArr.addItem(objectsValueObjArr);
			}
			
			OB.countNumber=cTimes;	 	
			OB.valueObjArr=valueObjArr; 
			var instanceArr:ArrayCollection=new ArrayCollection();
			for(var k:int=0;k<xmlInfo[a].Instances.length();k++){
				objparaArrayCol=new ArrayCollection();
				for(b=0;b<xmlInfo[a].Instances[k].par.length();b++){
					var obInsPara:objParameter=new objParameter();
					obInsPara.id=xmlInfo[a].Instances[k].par[b].type;
					obInsPara.name=xmlInfo[a].Instances[k].par[b].name;
					
					if(xmlInfo[a].Instances[k].par[b].type=='options'){
						for(bb=0;bb<xmlInfo[a].Instances[k].par[b].option.length();bb++){
							obInsPara.option.push(xmlInfo[a].Instances[k].par[b].option[bb]);
						}
					}
					objparaArrayCol.addItem(obInsPara);
				}
				var vaArr:ArrayCollection=new ArrayCollection();
				for(var jjj:int=0;jjj<xmlInfo[a].Instances[k].valueObjArr.length();jjj++){
					var obInsValueOb:ChangedTemp=new ChangedTemp();
					obInsValueOb.id=xmlInfo[a].Instances[k].valueObjArr[jjj].id;
					obInsValueOb.name=xmlInfo[a].Instances[k].valueObjArr[jjj].name;
					obInsValueOb.combeValue=xmlInfo[a].Instances[k].valueObjArr[jjj].combeValue;
					if(xmlInfo[a].Instances[k].valueObjArr[jjj].haschanged=='true'){
						obInsValueOb.haschanged=true;
					}
					else {
						obInsValueOb.haschanged=false;
					}
					if(xmlInfo[a].Instances[k].valueObjArr[jjj].IsCombo=='true'){
						obInsValueOb.IsCombo=true;
					}
					else {
						obInsValueOb.IsCombo=false;
					}
					vaArr.addItem(obInsValueOb);
				}
			}
			
			OB.instancArray=instanceArr;         		    
			for(aa=0;aa<xmlInfo[a].linesStartingArray.name.length();aa++){
				var basLine:Link=new Link(new Number());
				basLine.name=xmlInfo[a].linesStartingArray.name[aa];
				OB.addToStartArray(basLine);
			}
			for(aa=0;aa<xmlInfo[a].linesEndingArray.name.length();aa++){
				basLine=new Link(new Number());
				basLine.name=xmlInfo[a].linesEndingArray.name[aa];
				OB.addToEndArray(basLine);
			}
			dropCanvas.addChild(OB);
			OB.addEventListener("defaultDownEve",setobject); 
			OB.addEventListener("defaultMoveEve",myMove);
			OB.addEventListener("defaultDownEve",saveCurrentState);
			OB.addEventListener("ChangedDownEveForComponent",mdown);
			OB.addEventListener("ChangedUpEveForComponent",mUp);
		}
			
		else if(xmlInfo[a].type=='links'){
			var link:Link=new Link(xmlInfo[a].lineColor);
			var src:objects=new objects();
			var des:objects=new objects();
			link.lineColor=xmlInfo[a].lineColor;
			link.beginX=xmlInfo[a].beginX;
			link.beginY=xmlInfo[a].beginY;
			link.lineLength=xmlInfo[a].lineLength;
			link.lineHeight=xmlInfo[a].lineHeight;
			link.id=xmlInfo[a].id;
			link.can.name=xmlInfo[a].name;
			link.name=xmlInfo[a].name;
			link.lineName=link.name.slice(0,8);
			devicesrcport=xmlInfo[a].deviceSourcePort;
			devicedstport=xmlInfo[a].deviceDestinationPort;
			
			src.name=xmlInfo[a].source;
			var srcc = src
			link.can.source=srcc;
			var obsr:String=String(link.can.source);
			
			des.name=xmlInfo[a].destination;
			var dess = des
			link.can.destination=dess;			
			var obds:String=String(link.can.destination);
			
			if(obsr.slice(0,6)=="Switch"){
				sr="Switch";
			}
			else if(obsr.slice(0,7)=="Station"){
				sr="Station";
			}
			else if(obsr.slice(0,3)=="Car"){
				sr="Car";
			}
			else if(obsr.slice(0,10)=="Smartphone"){
				sr="Smartphone";
			}
			else if(obsr.slice(0,12)=="Access Point"){
				sr="Access Point";
			}
			else if(obsr.slice(0,8)=="Computer"){
				sr="Computer";
			}
			else if(obsr.slice(0,10)=="Controller"){
				sr="Controller";
			}
			
			if(obds.slice(0,6)=="Switch"){
				ds="Switch";
			}
			else if(obds.slice(0,12)=="Access Point"){
				ds="Access Point";
			}
			else if(obds.slice(0,8)=="Computer"){
				ds="Computer";
			}
			else if(obds.slice(0,7)=="Station"){
				ds="Station";
			}
			else if(obsr.slice(0,3)=="Car"){
				ds="Car";
			}
			else if(obsr.slice(0,10)=="Smartphone"){
				ds="Smartphone";
			}
			else if(obds.slice(0,10)=="Controller"){
				ds="Controller";
			}
			
			link.objectDst=ds;			
			link.objectSrc=sr;
			
			if(link.name.slice(0,8)=="wireless")
				link.can.lineName = "wireless"
			else if (link.name.slice(0,5)=="fiber")
				link.can.lineName = "fiber"
			else if (link.name.slice(0,8)=="ethernet")
				link.can.lineName = "ethernet"
			
			if(sr=="Switch"&&ds!="Controller"){
				np=int(obsr.slice(7,9));	
				link.switchDeviceDestination=np;
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=0;
				}
				if(arrayContIfacesCheck[np]<devicesrcport)
					arrayContIfacesCheck[np]=devicesrcport;				
				link.switchPortSource=devicesrcport;
				link.can.sourcePort=devicesrcport;				
				if(obds.slice(0,10)!="Controller")
					getInterfaces.push("s"+np+"-eth"+link.can.sourcePort);
				//arrayST[np]=arrayContIfacesCheck[np];
				}
			
			else if(sr=="Access Point"&&link.name.slice(0,8)!="wireless"&&ds!="Controller"){
				np=int(obsr.slice(13,15));	
				link.switchDeviceDestination=np;
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=0;
				}
				if(arrayContIfacesCheck[np]<devicesrcport)
					arrayContIfacesCheck[np]=devicesrcport;				
				link.switchPortSource=devicesrcport;
				link.can.sourcePort=devicesrcport;		
				
				if(obds.slice(0,10)!="Controller")
					getInterfaces.push("s"+np+"-eth"+link.can.sourcePort);
			}
			
			else if(sr=="Computer"&&ds!="Controller"){
				link.checkSource=true;
				link.computerPort=0;
			}		
			
			else if(sr=="Station"&&ds!="Controller"){
				link.checkSource=true;
				link.stationPort=0;
			}	
			
			if(ds=="Switch"&&sr!="Controller"){
				np=int(obds.slice(7,9));	
				link.switchDeviceSource=np;
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=0;			
				}
				if(arrayContIfacesCheck[np]<devicedstport)
					arrayContIfacesCheck[np]=devicedstport;				
				link.switchPortDestination=devicedstport;				
				link.can.destinationPort=devicedstport;
				if(obsr.slice(0,10)!="Controller")
					getInterfaces.push("s"+np+"-eth"+link.can.destinationPort);				
				}
					
			else if(ds=="Access Point"&&link.name.slice(0,8)!="wireless"&&sr!="Controller"){
				np=int(obds.slice(7,9));	
				link.switchDeviceSource=np;
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=0;			
				}
				if(arrayContIfacesCheck[np]<devicedstport)
					arrayContIfacesCheck[np]=devicedstport;			
				link.switchPortDestination=devicedstport;
				link.can.destinationPort=devicedstport;
			
				if(obsr.slice(0,10)!="Controller")
					getInterfaces.push("s"+np+"-eth"+link.can.destinationPort);
				
			}
			else if(ds=="Computer"&&sr!="Controller"){
				ds="Computer";
				link.checkSource=false;
				link.computerPort=0;
			}	
			else if(ds=="Station"&&sr!="Controller"){
				ds="Station";
				link.checkSource=false;
				link.stationPort=0;
			}	
						
			link.can.secondTime=true;  
			objparaArrayCol=new ArrayCollection();
			for(b=0;b<xmlInfo[a].par.length();b++){
				ob=new objParameter();
				ob.id=xmlInfo[a].par[b].type;
				ob.name=xmlInfo[a].par[b].name;
				if(xmlInfo[a].par[b].type=='options'){
					for(bb=0;bb<xmlInfo[a].par[b].option.length();bb++){
						ob.option.push(xmlInfo[a].par[b].option[bb]);
					}
				}
				objparaArrayCol.addItem(ob);
			}
			
			link.can.objparaArrayCol=objparaArrayCol;     
			valueObjArr=new ArrayCollection();
			for(b=0;b<xmlInfo[a].valueObjArr.length();b++){
				objectsValueObjArr=new ChangedTemp();
				objectsValueObjArr.id=xmlInfo[a].valueObjArr[b].id;
				objectsValueObjArr.name=xmlInfo[a].valueObjArr[b].name;
				objectsValueObjArr.combeValue=xmlInfo[a].valueObjArr[b].combeValue;
				if(xmlInfo[a].valueObjArr[b].haschanged=='true'){
					objectsValueObjArr.haschanged=true;
				}
				else  {
					objectsValueObjArr.haschanged=false;
				}
				if(xmlInfo[a].valueObjArr[b].IsCombo=='true'){
					objectsValueObjArr.IsCombo=true;}
				else  {
					objectsValueObjArr.IsCombo=false;
				}
				valueObjArr.addItem(objectsValueObjArr);
			}
			link.can.valueObjArr=valueObjArr; 
			link.addEventListener(MouseEvent.MOUSE_DOWN,setobject);
			link.addEventListener(MouseEvent.MOUSE_DOWN,saveCurrentState);
			link.can.ini();
			dropCanvas.addChild(link);
		}		
	}	

	exportControllforcombo=true;
	undoRedoDescriptor=-1;
	undostepsArray.removeAll();
	undostepsArray.refresh();
	firsTime=true;
	setNetworkTree();
	focusobject=null;
	progressBar.visible=false;
	progressBar.includeInLayout=false;
	uploadeFileDlete();
}