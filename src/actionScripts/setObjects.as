import flash.display.DisplayObject;
import flash.events.Event;
import mx.collections.ArrayCollection;
import mx.managers.PopUpManager;

public var aa:int=0;
public var removeqospanel:Boolean=false;
public var objpar1:objParameter = new objParameter();

public function setobject(eve:Event):void {
		
	if(aa==0){
		PopUpManager.addPopUp(popup_ob, this, false);
		PopUpManager.removePopUp(popup_ob);
	}
	
	if(eve.target.name.slice(0,8)=="Computer"||eve.target.name.slice(0,14)=="Switch"
		||eve.target.name.slice(0,14)=="Access Point"||eve.target.name.slice(0,7)=="Station"
		||eve.target.name.slice(0,5)=="fiber"||eve.target.name.slice(0,8)=="ethernet"
		||eve.target.name.slice(0,8)=="wireless"||eve.target.name.slice(0,10)=="Smartphone"){
		//PopUpManager.removePopUp(popup_ob);
		removeqospanel=true;
	}
	else
		removeqospanel=false;
	
	aa++;
	if(ViewBool){		
		if(focusobject!=null && viewfirstTime){
			viewsObjects.addItem(focusobject);
			viewfirstTime=false;
		}	      	 
		var bool:Boolean=false;
		
		for(var i:int=0;i<viewsObjects.length;i++){
			if(viewsObjects[i].name==eve.target.name){
				bool=true;
				break;
			}
		}
		if(!bool)
			viewsObjects.addItem(eve.target);
		setfocusforView();
	}
	else{  
		removefocusforView();
		if(focusobject!=null){
			focusobject.removeFoc();
		}
		popup_ob.Configurationpanel1.enabled;		
		popup_ob.Qospanel.enabled;
		
		focusobject=eve.target;
		focusobject.setFoc();
		popup_ob.Configurationpanel1.removeAllChildren();
		popup_ob.Qospanel.removeAllChildren();
		popup_ob.Queuepanel.removeAllChildren();
		
		var qos:Object=qos1;
		var queue:Object=accessQueue;
		var pg:Object=eve.target.can;
		
		pg.visible=true;
		pg.includeInLayout=true;
		qos.visible=true;
		qos.includeInLayout=true;
		queue.visible=true;
		queue.includeInLayout=true;
		
		popup_ob.Queuepanel.addChild(queue as DisplayObject);	
		popup_ob.Qospanel.addChild(qos as DisplayObject);	
		popup_ob.Configurationpanel1.addChild(pg as DisplayObject);	
		
		if (removeqospanel==true){
			popup_ob.canvasqos.enabled=false;
			popup_ob.canvasqueue.enabled=false;			
		}
		else if(removeqospanel==false){			
			popup_ob.canvasqos.enabled=true;
			popup_ob.canvasqueue.enabled=true;
		}
		popup_ob.Configurationpanel.selectedChild=popup_ob.canvasconfig;
		
		names = new Array();
		for(i=0; i<allnames.length; i++){
			objpar1.qosname[i]=allnames[i];
			qos1.objparaArrayCol.addItem(objpar1);
			accessQueue.objparaArrayCol.addItem(objpar1);
		}
	}
}

public function setobject2(ob:Object):void {
	if(focusobject!=null){
		focusobject.removeFoc(); 			  
		removeViewFocus1();
	}
	focusobject=ob;
	focusobject.setFoc();
	var pg:Object;
	pg=focusobject.can;
	pg.visible=true;
	pg.includeInLayout=true;
	popup_ob.Configurationpanel.addChild(pg as DisplayObject);
	if(focusobject){
		names = new Array();
		for(var i:int=0; i<allnames.length; i++){
			var arr:ArrayCollection=focusobject.objparaArrayCol as ArrayCollection;
			for(var x:int = 0;x<arr.length;x++){
				if( arr[x].id=='qosinstance' && allnames[i] == arr[x].name)
					names.push(allnames[i]);
			}
		}
		
	}
}