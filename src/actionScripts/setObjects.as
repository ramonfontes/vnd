import flash.display.DisplayObject;
import flash.events.Event;
import mx.collections.ArrayCollection;
import mx.managers.PopUpManager;
import mx.controls.Alert;
public var aa:int=0;
public var removeqospanel:Boolean=false;
public var objpar1:objParameter = new objParameter();

public function setobject(eve:Event):void {
		
	if(aa==0){
		PopUpManager.addPopUp(popup_ob, this, false);
		PopUpManager.removePopUp(popup_ob);
	}
	
	if(eve.target.id=="Computer"||eve.target.id=="Switch"||eve.target.id=="Car"
		||eve.target.id=="Access Point"||eve.target.id=="Station"
		||eve.target.id=="fiber"||eve.target.id=="ethernet"
		||eve.target.id=="wireless"||eve.target.id=="Smartphone"){
		removeqospanel=true;
	}
	else
		removeqospanel=true;
	
	
	aa++;
	if(ViewBool){		
		if(focusobject!=null && viewfirstTime){
			if (eve.target.id!="Station" && eve.target.id!="Access Point" && eve.target.id!="Car"){
				viewsObjects.addItem(focusobject);
			}
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
		if (eve.target.id!="Station" && eve.target.id!="Access Point" && eve.target.id!="Car"){
		removefocusforView();
		if(focusobject!=null){
			focusobject.removeFoc();
		}
		popup_ob.Configurationpanel1.enabled;		
		//popup_ob.Qospanel.enabled;
		
		focusobject=eve.target;
		focusobject.setFoc();
		}
		popup_ob.Configurationpanel1.removeAllChildren();
		
		var queue:Object=accessQueue;
		var pg:Object=eve.target.can;
		
		pg.visible=true;
		pg.includeInLayout=true;
		queue.visible=true;
		queue.includeInLayout=true;
		
		popup_ob.Configurationpanel1.addChild(pg as DisplayObject);	
		
		popup_ob.Configurationpanel.selectedChild=popup_ob.canvasconfig;
		
		names = new Array();
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