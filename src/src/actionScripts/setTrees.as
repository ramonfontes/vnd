import mx.controls.Alert;
import mx.collections.ArrayCollection;

public function setNetworkTree():void {
    userobjectsXml=<objects name="objects"></objects>;
    var arr:Array=dropCanvas.getChildren();
    for(var count:int=0;count<arr.length;count++){
        if(arr[count].className=='objects'){
			var compo:XMLList=XMLList("<component name='"+arr[count].name+"' object='object'/>");
			var ins:Array=arr[count].instancArray.toArray();
			addChilds(ins, compo, arr[count].name);
			userobjectsXml.appendChild(compo);
		}
 		if(arr[count].className=='Link'){
         	var compo2:XMLList=XMLList("<component name='"+arr[count].name+"' object='object'/>");
         	userobjectsXml.appendChild(compo2);
        }
    }
    networkXml.replace("objects",userobjectsXml);
    setVisualizatrionTree();
    networkTree.expandChildrenOf("objects",true);
    validateNow();
}

public function addChilds(intanceArray:Array, ParentXML:XMLList, ParentName:String):void{
	for(var i:int=0;i<intanceArray.length;i++){		
		var  instance:XMLList=XMLList("<parm name='"+intanceArray[i].name+"' parent='"+ParentName+"'/>");
		if(intanceArray[i].instancArray){
			var childIns:Array = intanceArray[i].instancArray.toArray();
			addChilds(childIns, instance, ParentName);
		}
		ParentXML.appendChild(instance);  	
	}
}
         	
public function setViewTree():void {
    viewsXml=<views name="views"></views>;  
    var arr:ArrayCollection=viewsarray;
    for(var count:int=0;count<arr.length;count++){
        var tempArr:viewObjects=arr[count];
        var temp:XML=XML("<view name='"+tempArr.name+"' view='"+tempArr.name+"' />");
        for(var i:int=0;i<tempArr.objects.length;i++){
        	var tempArray:Object=tempArr.objects[i];
         	var tempA:XML=XML("<view name='"+tempArray.name+"'  />");
            temp.appendChild(tempA);
        }
        viewsXml.appendChild(temp);
    }   
	networkXml.replace("views",viewsXml);
}       		