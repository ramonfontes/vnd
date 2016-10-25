import flash.events.MouseEvent;
import mx.controls.Alert;
import mx.managers.CursorManager;
	
public var src:String;
public var dst:String;
private var source:String;
public var targetSrc:Object; 

private function mdown(event:MouseEvent):void {
	
	if(event.target.className=='objects'){
		    var lin:Object=linksArrayCollection[linkCombo.selectedIndex];
			line=new Link(lin.color); 
			line._objectSrc = event.target.id;
			targetSrc = event.target;
			
			if(line._objectSrc=="Computer"){
				source="Computer";
				cont_click++;
			}
			else if(line._objectSrc=="Station"){
				source="Station";
				cont_click++;
			}
			else if(line._objectSrc=="Car"){
				source="Car";
				cont_click++;
			}
			else if(line._objectSrc=="Smartphone"){
				source="Smartphone";
				cont_click++;
			}
			else if(line._objectSrc=="Access Point"){
				source="Access Point";
				cont_click++;
			}
			else if(line._objectSrc=="Switch"){
				source="Switch";
				cont_click++;
			}
			else if(line._objectSrc=="Controller"){
				source="Controller";
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
        
       
private function mUp(event:MouseEvent):void {
	var targetDst:Object=event.target; 
	var objs:Array=dropCanvas.getChildren();
	var label:String;
	var iface_:String;
	var dstPort:int;
	dst=targetDst.id;	
	
	if(targetDst==obj||src=="Computer"&&dst=="Controller"||src=="Controller"&&dst=="Computer"
		||(String(line)=="wireless"&&src=="Controller")||(String(line)=="wireless"&&dst=="Controller")
			||(String(line)=="wireless"&&dst=="Switch")||(String(line)=="wireless"&&src=="Switch")
			||src=="Smartphone"&&dst=="Computer"||dst=="Smartphone"&&src=="Computer"
			||dst=="Smartphone"&&src=="Controller"||src=="Smartphone"&&dst=="Controller"
			||dst=="Smartphone"&&src=="Switch"||src=="Smartphone"&&dst=="Switch"
			||dst=="Smartphone"&&src=="Access Point"||src=="Smartphone"&&dst=="Access Point"
			||src=="Station"&&dst=="Controller"||src=="Controller"&&dst=="Station"
			||src=="Car"&&dst=="Controller"){
		Alert.show("You cannot connect these devices!");
		src="";
		dst="";
		cont_click=0;
		
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
			line._objectDst = targetDst.id;
			
			if((source=="Switch" || source=="Access Point") && dst!="Controller" && String(line) != "wireless"){
				if (src == "Access Point"){
					label = "ap";
					iface_ = "eth";
					if(targetSrc.iface==0){
						targetSrc.iface = 1;
					}
				}
				else if (src == "Switch"){
					label = "s";
					iface_ = "eth";
				}
				targetSrc.iface++;
				line.srcPort=targetSrc.iface;
				line.can.sourcePort=line.srcPort;
				
				if (dst == "Station"){
					label = "sta";
					iface_ = "wlan";
					dstPort = targetDst.iface++; 
				}
				else if (dst == "Computer"){
					label = "h";
					iface_ = "eth";
					dstPort = targetDst.iface++;
				}
				else if (dst == "Switch"){
					label = "s";
					iface_ = "eth";
					targetDst.iface++; 
					dstPort = targetDst.iface;	
				}
				else if (dst == "Access Point"){
					label = "ap";
					iface_ = "eth";
					targetDst.iface++;	
					dstPort = targetDst.iface; 
				}				
							
				line.dstPort = dstPort;
				line.can.destinationPort=line.dstPort;	
				line._checkSource=true;
			}
			else if(source=="Access Point" && (dst=="Station" || dst=="Car")  && String(line)=="wireless"){
				if(targetSrc.wirelessExists == false){
					targetSrc.wirelessExists = true;
				}
				line.srcPort=targetSrc.iface;
				line.can.sourcePort=line.srcPort;
				
				dstPort = targetDst.iface++; 					
				line.dstPort=dstPort;
				line.can.destinationPort=line.dstPort;	
				line._checkSource=true;
				
			}	
			else if((source=="Station" || source=="Car") && dst=="Access Point" && String(line)=="wireless"){
				line.srcPort=targetSrc.iface++;
				line.can.sourcePort=line.srcPort;
				
				if(targetDst.wirelessExists == false){
					//targetDst.iface++;
					targetDst.wirelessExists = true;
				}			
				line.dstPort = event.target.iface; 	
				line.can.destinationPort = line.dstPort;	
				line._checkSource = true;
			}
	
			else if((source=="Station" || source=="Computer") && dst!="Controller" && String(line) != "wireless"){
				if(src == "Station"){
					label = "sta";
					iface_ = "wlan";
				}
				else if(src == "Computer"){
					label = "h";
					iface_ = "eth";
				}				
				line.srcPort=targetSrc.iface++; 
				line.can.sourcePort=line.srcPort;
				
				if(dst == "Computer" || dst == "Station"){
					line.dstPort = targetDst.iface++;
				}
				else if(dst == "Access Point"){
					label = "ap";
					iface_ = "eth";
					if(targetDst.iface==0){
						targetDst.iface = 1;
					}
					targetDst.iface++; 
					line.dstPort = targetDst.iface; 
				}
				else if(dst == "Switch"){
					label = "s";
					iface_ = "eth";
					targetDst.iface++; 
					line.dstPort = targetDst.iface; 
				}				
				line.can.destinationPort = line.dstPort;	
				line._checkSource = true;
			}				

			saveCurrentState(event);
			line.lineLength=event.target.x+(event.target.width)/2;
            line.lineHeight=event.target.y+(event.target.height)/2;
			obj.addToStartArray(line);
			event.target.addToEndArray(line);
			var targ = event.target
			line.can.destination=targ;
			
            if(focusobject!=null){
		        focusobject.removeFoc();
		        focusobject=null;
			}	        			
			
	        line.can.ini();			
            dropCanvas.addChild(line); 
			dropCanvas.setChildIndex(line,0);
            CursorManager.removeAllCursors();
            objectsTree.dragEnabled=true;
            setNetworkTree();
            line.addEventListener(MouseEvent.MOUSE_DOWN,setobject);
            line.addEventListener(MouseEvent.MOUSE_DOWN,saveCurrentState);
			line=null;
			source="";
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