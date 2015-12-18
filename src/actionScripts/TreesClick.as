import flash.display.DisplayObject;
import flash.events.Event;
import mx.collections.ArrayCollection;
import mx.controls.Tree;
import mx.events.ListEvent;
import mx.managers.CursorManager;
import mx.controls.Alert;

private function tree_itemClick(evt:ListEvent):void {
	var t:Tree = evt.currentTarget as Tree;
    Parent = evt.itemRenderer.data.@parent;
    child = evt.itemRenderer.data.@name;
		
	if(child=="Computer"||"Station"||"Controller"||"Smartphone"||"Switch"||"Access Point"){
		var objs:Array=dropCanvas.getChildren();
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
   
	if(evt.itemRenderer.data.hasOwnProperty('@parent')){
        preview.setImage(evt.itemRenderer.data.@name);
        type=true;
    } 
    else if(evt.itemRenderer.data.hasOwnProperty('@index')) {
        type==false;
		preview.setImage(evt.itemRenderer.data.@name);
        linkCombo.selectedIndex=evt.itemRenderer.data.@index;
        listnerremoverHandler();
        CursorManager.setCursor(loaderCursor);
        objectsTree.selectedIndex=0;
        objectsTree.dragEnabled=false;
    }
    else {
        type==false;
        preview.setImageEmpty();
    }
}

private function network_itemClick(evt:ListEvent):void {
	focustreeobject = null;
	preview.setImageEmpty();
	type=false;
	//popup_ob.Configurationpanel.enabled;
	popup_ob.Configurationpanel.removeAllChildren();
    var dataObj:Object = evt.itemRenderer.data;
		
	if(dataObj.hasOwnProperty('@parent')) { 
      	var og:Object= dropCanvas.getChildByName(dataObj.@parent);
        setobject2(og);
		var ac:ArrayCollection = og.instancArray;
		var instanceName:String = dataObj.@name;
		//setFocusTreeObject(ac,instanceName);
		names = new Array();
		//Alert.show(String(allnames.length))
		if(focustreeobject){
			for(i=0; i<allnames.length; i++){
				var arr:ArrayCollection=focustreeobject.objparaArrayCol as ArrayCollection;
				for(var x:int = 0;x<arr.length;x++){
					if( arr[x].id=='qos' && allnames[i] == arr[x].name)
					names.push(allnames[i]);
				}
			}
		}		
		var aa:ArrayCollection=og.instancArray;
        for(var i:int=0;i<aa.length;i++) {
            if(aa[i].name==dataObj.@name) {
				//popup_ob.Configurationpanel.enabled;
				popup_ob.Configurationpanel.addChild(aa[i] as DisplayObject);
                break;
            }
        }
        viewType=false;
	}
    else if(dataObj.hasOwnProperty('@object')){
        og = dropCanvas.getChildByName(dataObj.@name);
        setobject2(og);
        viewType=false;
    }
    
    else if(dataObj.hasOwnProperty('@view')){
        DelviewType=evt.itemRenderer.data.@name;
        viewType=true;
        networkTree.dragEnabled=false;
        setViewFocus(DelviewType);
    }
}
           
private function network_itemClick2(evt:Event):void{
	preview.setImageEmpty();
	type=false;
	popup_ob.Configurationpanel.removeAllChildren();
}