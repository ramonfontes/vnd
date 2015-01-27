import mx.collections.ArrayCollection;
import mx.rpc.events.ResultEvent;

private function load(eve:ResultEvent):void{
	var  xmlInfo:XMLList=eve.result.objects as XMLList;
	var  numberofnod:XMLList=eve.result.numberofnodes as XMLList;
	var  numberOfIns:XMLList=eve.result.numberOfInstances as XMLList;
	var  numberOfViews:XMLList=eve.result.numberOfViews as XMLList;
	var  numberOfTemplates:XMLList=eve.result.templates.template as XMLList;
	numberOfInstances=numberOfIns[0];
	numberOfNodes=numberofnod[0];
	Configurationpanel.removeAllChildren();  
	dropCanvas.removeAllChildren();
	temaplateArrcol.removeAll();
	for(var aa:int=0;aa<numberOfTemplates.length();aa++){
		temaplateArrcol.addItem(numberOfTemplates[aa].name);
	}
	setTemplateTree();
	for(var a:int=0;a<xmlInfo.length();a++){
		if(xmlInfo[a].type=='nodes'){
			var OB:objects=new objects();
			OB.id=xmlInfo[a].id;
			OB.name=xmlInfo[a].name;
			OB.x=xmlInfo[a].x;
			OB.y=xmlInfo[a].y;
			OB.motherTemplate=xmlInfo[a].motherTemplate.toString();
			if(xmlInfo[a].isChildTemplatedOne=='true')
			{OB.isChildTemplatedOne=true;}
			else  {OB.isChildTemplatedOne=false;}
			if(xmlInfo[a].isMOtherTemplate=='true')
			{OB.isMOtherTemplate=true;}
			else  {OB.isMOtherTemplate=false;}
			
			OB.img=xmlInfo[a].image ;
			OB.secondTime=true;  
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
			
			for(var b:int=0;b<xmlInfo[a].valueObjArr.length();b++){
				var objectsValueObjArr:ChangedTemp=new ChangedTemp();
				objectsValueObjArr.id=xmlInfo[a].valueObjArr[b].id;
				objectsValueObjArr.name=xmlInfo[a].valueObjArr[b].name;
				objectsValueObjArr.combeValue=xmlInfo[a].valueObjArr[b].combeValue;
				if(xmlInfo[a].valueObjArr[b].haschanged=='true')
				{objectsValueObjArr.haschanged=true;}
				else  {objectsValueObjArr.haschanged=false;}
				if(xmlInfo[a].valueObjArr[b].IsCombo=='true')
				{objectsValueObjArr.IsCombo=true;}
				else  {objectsValueObjArr.IsCombo=false;}
				valueObjArr.addItem(objectsValueObjArr);
			}
			OB.valueObjArr=valueObjArr; 
			var instanceArr:ArrayCollection=new ArrayCollection();
			for(var k:int=0;k<xmlInfo[a].Instances.length();k++){
				var ins:Instances=new Instances();
				ins.id=xmlInfo[a].Instances[k].id;
				ins.name=xmlInfo[a].Instances[k].name;
				ins.motherTemplate=xmlInfo[a].Instances[k].motherTemplate.toString();
				
				if(xmlInfo[a].Instances[k].isChildTemplatedOne=='true')
				{ins.isChildTemplatedOne=true;}
				else  {ins.isChildTemplatedOne=false;}
				if(xmlInfo[a].Instances[k].isMOtherTemplate=='true')
				{ins.isMOtherTemplate=true;}
				else  {ins.isMOtherTemplate=false;}
				
				var objparaArrayCol:ArrayCollection=new ArrayCollection();
				
				for(var b:int=0;b<xmlInfo[a].Instances[k].par.length();b++){
					var obInsPara:objParameter=new objParameter();
					obInsPara.id=xmlInfo[a].Instances[k].par[b].type;
					obInsPara.name=xmlInfo[a].Instances[k].par[b].name;
					if(xmlInfo[a].Instances[k].par[b].type=='options'){
						for(var bb:int=0;bb<xmlInfo[a].Instances[k].par[b].option.length();bb++){
							obInsPara.option.push(xmlInfo[a].Instances[k].par[b].option[bb]);
						}
					}
					objparaArrayCol.addItem(obInsPara);
				}
				ins.objparaArrayCol=objparaArrayCol;			
				var vaArr:ArrayCollection=new ArrayCollection();
				
				for(var j:int=0;j<xmlInfo[a].Instances[k].valueObjArr.length();j++){
					var obInsValueOb:ChangedTemp=new ChangedTemp();
					obInsValueOb.id=xmlInfo[a].Instances[k].valueObjArr[j].id;
					obInsValueOb.name=xmlInfo[a].Instances[k].valueObjArr[j].name;
					obInsValueOb.combeValue=xmlInfo[a].Instances[k].valueObjArr[j].combeValue;
					if(xmlInfo[a].Instances[k].valueObjArr[j].haschanged=='true')
					{obInsValueOb.haschanged=true;}
					else  {obInsValueOb.haschanged=false;}
					if(xmlInfo[a].Instances[k].valueObjArr[j].IsCombo=='true')
					{obInsValueOb.IsCombo=true;}
					else  {obInsValueOb.IsCombo=false;}
					vaArr.addItem(obInsValueOb);
				}						
				ins.valueObjArr=vaArr;
				ins.parentobj=OB;
				ins.secondTime=true;
				addChild(ins);
				removeChild(ins);
				instanceArr.addItem(ins); 
			}
			OB.instancArray=instanceArr; 
			
			for(var aa:int=0;aa<xmlInfo[a].linesStartingArray.name.length();aa++){
				var basLine:Link=new Link(new Number());
				basLine.name=xmlInfo[a].linesStartingArray.name[aa];
				OB.addToStartArray(basLine);
			}
			for(aa:int=0;aa<xmlInfo[a].linesEndingArray.name.length();aa++){
				var basLine:Link=new Link(new Number());
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
			link.id=xmlInfo[a].id;
			link.can.name=xmlInfo[a].name;
			link.name=xmlInfo[a].name;
			var sou:objects=new objects();
			sou.name=xmlInfo[a].source;
			link.can.source=sou;
			var des:objects=new objects();
			des.name=xmlInfo[a].destination;
			link.can.destination=des;
			link.lineColor=xmlInfo[a].lineColor;
			link.beginX=xmlInfo[a].beginX;
			link.beginY=xmlInfo[a].beginY;
			link.lineLength=xmlInfo[a].lineLength;
			link.lineHeight=xmlInfo[a].lineHeight;
			link.can.motherTemplate=xmlInfo[a].motherTemplate.toString();
			
			if(xmlInfo[a].isChildTemplatedOne=='true')
			{link.can.isChildTemplatedOne=true;}
			else  {link.can.isChildTemplatedOne=false;}
			if(xmlInfo[a].isMOtherTemplate=='true')
			{link.can.isMOtherTemplate=true;}
			else  {link.can.isMOtherTemplate=false;}
			link.can.secondTime=true;  
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
			link.can.objparaArrayCol=objparaArrayCol;     
			var valueObjArr:ArrayCollection=new ArrayCollection();
			
			for(var b:int=0;b<xmlInfo[a].valueObjArr.length();b++){
				var objectsValueObjArr:ChangedTemp=new ChangedTemp();
				objectsValueObjArr.id=xmlInfo[a].valueObjArr[b].id;
				objectsValueObjArr.name=xmlInfo[a].valueObjArr[b].name;
				objectsValueObjArr.combeValue=xmlInfo[a].valueObjArr[b].combeValue;
				if(xmlInfo[a].valueObjArr[b].haschanged=='true')
				{objectsValueObjArr.haschanged=true;}
				else  {objectsValueObjArr.haschanged=false;}
				if(xmlInfo[a].valueObjArr[b].IsCombo=='true')
				{objectsValueObjArr.IsCombo=true;}
				else  {objectsValueObjArr.IsCombo=false;}
				valueObjArr.addItem(objectsValueObjArr);
			}			
			link.can.valueObjArr=valueObjArr; 
			link.addEventListener(MouseEvent.MOUSE_DOWN,setobject);
			link.addEventListener(MouseEvent.MOUSE_DOWN,saveCurrentState);
			link.can.second();
			dropCanvas.addChild(link);
		}		
	}
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
