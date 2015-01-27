public function setVisualizationsForExport(simXml:XML):XML{
	var visualization:XML=XML(<visualization id='vis01'/>);
	var description:XMLList=XMLList("<description/>");
	for(var i:int=0;i<dropCanvas.numChildren;i++){
		if(Object(dropCanvas.getChildAt(i)).className=='objects'){
			var object :XMLList=XMLList("<object id='"+dropCanvas.getChildAt(i).name+"'/>");
			var x:XMLList=XMLList("<x.position>"+dropCanvas.getChildAt(i).x+"</x.position>");
			object.appendChild(x);
		    var y:XMLList=XMLList("<y.position>"+dropCanvas.getChildAt(i).y+"</y.position>");
			object.appendChild(y);
			var z:XMLList=XMLList("<z.position>0</z.position>");
			object.appendChild(z);
			var color:XMLList=XMLList("<color></color>");
			object.appendChild(color);
			description.appendChild(object);
		}
	}
	visualization.appendChild(description);
	simXml.appendChild(visualization);
	return simXml;
}


public function setVisualizatrionTree():void{
	visualizationXml=<visualization name="visualizations"></visualization>; 
	var visualization:XML=XML(<visualization name='vis01'/>);
	var description:XMLList=XMLList("<description name='description'/>");
	for(var i:int=0;i<dropCanvas.numChildren;i++){
		if(Object(dropCanvas.getChildAt(i)).className=='objects'){
			var object :XMLList=XMLList("<object name='"+dropCanvas.getChildAt(i).name+"'  id='"+dropCanvas.getChildAt(i).name+"'/>");
			description.appendChild(object);
		}
	}
	visualization.appendChild(description);
	visualizationXml.appendChild(visualization);
	scenariosXml.replace("visualization",visualizationXml);
}
