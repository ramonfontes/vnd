import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.managers.CursorManager;
	
private var checkinport:Array=[];
public var cont:int;
public var cont1:int=0;
public var np:int;
public var src:String;
public var dst:String;
private var namme:String;

private function mdown(event:MouseEvent):void {
	if(event.target.className=='objects'){
		    var lin:Object=linksArrayCollection[linkCombo.selectedIndex];
			line=new Link(lin.color); 
			line._objectSrc = event.target.id;
			if(line._objectSrc=="Computer"){
				namme="Computer";
				cont_click++;
			}
			else if(line._objectSrc=="Station"){
				namme="Computer";
				cont_click++;
			}
			else if(line._objectSrc=="Smartphone"){
				namme="Smartphone";
				cont_click++;
			}
			else if(line._objectSrc=="Access Point"){
				namme="Access Point";
				np=event.target.name.slice(13,15);	
				cont_click++;
			}
			else if(line._objectSrc=="Switch"){
				namme="Switch";
				np=event.target.name.slice(7,9);	
				cont_click++;
			}
			else if(line._objectSrc=="Controller"){
				namme="Controller";
				cont_click++;
			}

			for(var z:int=0;z<lin.par.length;z++){
		        var objpar:objParameter=new objParameter();
		        objpar.id=lin.par[z].type;
		        objpar.name=lin.par[z].name;
				if(lin.par[z].type=='options'){
                   	for(var pp:int=0;pp<lin.par[z].option.length;pp++)
                      	objpar.option.push(lin.par[z].option[pp]);
                }                
				line.can.objparaArrayCol.addItem(objpar);
            }      
			line.id=linkCombo.value.toString();
            line.name=line.can.name=linkCombo.value.toString()+'_'+(++numberOfNodes);			
	        var targ = event.target
			line.can.source=targ;
		
        obj=event.target;
		src=event.target.id;
        line.beginX=obj.x+(obj.width)/2;
        line.beginY=obj.y+(obj.height)/2;		
    }  
}
        
private function mMove(event:MouseEvent):void {	
	//line.lineHeight=dropCanvas.mouseX;
 //   line.lineLength=event.localX;	
	
	//Alert.show(String(line.lineHeight=dropCanvas.mouseX));
}
       
private function mUp(event:MouseEvent):void {
	var bool:Object=event.target; 
	var objs:Array=dropCanvas.getChildren();
	dst=event.target.id;
	if(bool==obj||src=="Computer"&&dst=="Controller"||src=="Controller"&&dst=="Computer"
		||(String(line)=="wireless"&&src=="Controller")||(String(line)=="wireless"&&dst=="Controller")
			||(String(line)=="wireless"&&dst=="Switch")||(String(line)=="wireless"&&src=="Switch")
			||src=="Smartphone"&&dst=="Computer"||dst=="Smartphone"&&src=="Computer"
			||dst=="Smartphone"&&src=="Controller"||src=="Smartphone"&&dst=="Controller"
			||dst=="Smartphone"&&src=="Switch"||src=="Smartphone"&&dst=="Switch"
			||dst=="Smartphone"&&src=="Access Point"||src=="Smartphone"&&dst=="Access Point"
			||src=="Station"&&dst=="Controller"||src=="Controller"&&dst=="Station"){
		Alert.show("You cannot connect these devices!");
		src="";
		dst="";
		cont_click=0;
		var tempp:String=String(bool);
		var tempp1:String=String(objs);
		tempp=tempp.substring(tempp.length-18, tempp.length);
		tempp1=tempp1.substring(tempp1.length-18, tempp1.length);
		line=null;
		obj=null;
		CursorManager.removeAllCursors();
		objectsTree.dragEnabled=true;
		for(var i:int=0;i<objs.length;i++){
			if(!objs[i].hasOwnProperty('lineLength') ){
				objs[i].listnerAddHandler();
			}
		}
	}	
	else if(cont_click==1){			
		 if(line!=null){ 
			line.lineName=String(line);
			line.can.lineName=line.lineName;
			
			if(checkinport[np]!=false)
				checkinport[np]=isInport;
			
			if((namme=="Switch"||namme=="Access Point")&&dst!="Controller"&&String(line)!="wireless"){
				line._switchDeviceDestination=np;
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=1;
					checkinport[np]=false;
				}
				else if(checkinport[np]==true&&arrayContIfacesCheck[np]!=undefined){
					arrayContIfacesCheck[np]=arrayContIfacesCheck[np]+1;
					checkinport[np]=false;
				}
				
				cont=arrayContIfacesCheck[np];
				line._switchPortSource=cont;
				getInterfaces.push("s"+np+"-eth"+cont);
				arrayContIfacesCheck[np]=cont+1;	
				line.can.sourcePort=line._switchPortSource;
			}			
			else if(namme=="Computer"){
				line._checkSource=true;
				line._computerPort=0;
			}
			else if(namme=="Station"){
				line._checkSource=true;
				line._computerPort=0;
			}
			
			line._objectDst = event.target.id;
			if(line._objectDst=="Computer"){
				line._checkSource=false;
				line._computerPort=0;
			}
			else if(line._objectDst=="Station"){
				line._checkSource=false;
				line._computerPort=0;
			}
			else if((line._objectDst=="Switch"||line._objectDst=="Access Point")&&src!="Controller"&&String(line)!="wireless"){
				if(line._objectDst=="Switch")
					np=event.target.name.slice(7,9);	
				else
					np=event.target.name.slice(13,15);	
				
				if(checkinport[np]!=false)
					checkinport[np]=isInport;
				
				line._switchDeviceSource=np;
				
				if(arrayContIfacesCheck[np]==undefined){
					arrayContIfacesCheck[np]=1;
					checkinport[np]=false;
				}
				else if(checkinport[np]==true&&arrayContIfacesCheck[np]!=undefined){
					arrayContIfacesCheck[np]=arrayContIfacesCheck[np]+1;
					checkinport[np]=false;
				}
				cont=arrayContIfacesCheck[np];
				line._switchPortDestination=cont;	
				getInterfaces.push("s"+np+"-eth"+cont);
				arrayContIfacesCheck[np]=cont+1;	
				line.can.destinationPort=line._switchPortDestination;
			}
			saveCurrentState(event);
			line.lineLength=event.target.x+(event.target.width)/2;
            line.lineHeight=event.target.y+(event.target.height)/2;
			obj.addToStartArray(line);
			event.target.addToEndArray(line);
			var targ = event.target
			line.can.destination=targ;//destination object
			
            if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;
			}	        			
			
	        line.can.ini();			
            dropCanvas.addChild(line); 
			dropCanvas.setChildIndex(line,0);
            CursorManager.removeAllCursors();
            objectsTree.dragEnabled=true;
        	//networkTree.dragEnabled=true;
            setNetworkTree();
            line.addEventListener(MouseEvent.MOUSE_DOWN,setobject);
            line.addEventListener(MouseEvent.MOUSE_DOWN,saveCurrentState);
			line=null;
			namme="";
			cont_click=0;
			src="";
			dst="";
			
            for(i=0;i<objs.length;i++){
        		if(!objs[i].hasOwnProperty('lineLength') ){
            		objs[i].listnerAddHandler();
                }
            }
        } 
	}
}