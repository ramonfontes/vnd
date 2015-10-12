import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

public function result(re:ResultEvent):void{
		
	qosArrayCollection=new ArrayCollection();
	objectsArrayCollection=new ArrayCollection();
	linksArrayCollection=new ArrayCollection();
	linksNames=new Array(); 
	names=new Array(); 
	clear();
	objectsXml=<objects name="objects"/>;
		
	qosArrayCollection=re.result.nsdlObjects.instances.qosinstance;
		
	linksArrayCollection=re.result.nsdlObjects.links.link;
	var xmlList:XML = XML("<cater  name='links'/>");
	
	for(var x:int=0;x<linksArrayCollection.length;x++){
		linksNames.push(linksArrayCollection[x].name);
		s=linksArrayCollection[x].name;
		xmlList2 = XMLList("<subcater  name='"+linksArrayCollection[x].name+"' index='"+x+"'/>");	
		xmlList.appendChild(xmlList2);
	}		      	 
	objectsXml.appendChild(xmlList);
		
	for(var i:int;i<qosArrayCollection.length;i++){
		names.push(qosArrayCollection[i].name);
	}
	
	objectsArrayCollection=re.result.nsdlObjects.objects.category;
	var s:String;
	var xmlList2:XMLList;		
		
	for(var j:int=0;j<objectsArrayCollection.length;j++){
		s=objectsArrayCollection[j].name;
		xmlList = XML("<cater  name='"+s+"'/>");
        var tempArr:ArrayCollection=objectsArrayCollection[j].object
			
   	 	for(var y:int=0;y<tempArr.length;y++){
			xmlList2 = XMLList("<subcater  name='"+tempArr[y].name+"' parent='"+objectsArrayCollection[j].name+"'/>");	
			xmlList.appendChild(xmlList2);
		}		
		objectsXml.appendChild(xmlList);			
	}	
	allnames = names;
} 
		    
public function userObjresult(re:ResultEvent):void{
	qosArrayCollection=new ArrayCollection();
	objectsArrayCollection=new ArrayCollection();
	linksArrayCollection=new ArrayCollection();   
	linksNames=new Array(); 
	names=new Array(); 
	clear();
	objectsXml=<objects name="objects"/>;  
	qosArrayCollection=re.result.nsdlObjects.instances.qosinstance;
	
	for(var i:int;i<qosArrayCollection.length;i++){
		names.push(qosArrayCollection[i].name);
	}
		         
	objectsArrayCollection=re.result.nsdlObjects.objects.category;
	
	for(var j:int=0;j<objectsArrayCollection.length;j++){
		var s:String=objectsArrayCollection[j].name;
		xmlList = XML("<cater  name='"+s+"'/>");
        var tempArr:ArrayCollection=objectsArrayCollection[j].object
		
		for(var y:int=0;y<tempArr.length;y++){
			var xmlList2:XMLList = XMLList("<subcater  name='"+tempArr[y].name+"' parent='"+objectsArrayCollection[j].name+"'/>");	
		    xmlList.appendChild(xmlList2);
		}
		objectsXml.appendChild(xmlList);
	}
	
	linksArrayCollection=re.result.nsdlObjects.links.link;
	var xmlList:XML = XML("<cater  name='links'/>");
	
	for(var x:int=0;x<linksArrayCollection.length;x++){
		linksNames.push(linksArrayCollection[x].name);
		s=linksArrayCollection[x].name;
		xmlList2 = XMLList("<subcater  name='"+linksArrayCollection[x].name+"' index='"+x+"'/>");	
		xmlList.appendChild(xmlList2);
	}
	
	objectsXml.appendChild(xmlList);
	progressBar.visible=false;
    progressBar.includeInLayout=false;
	userObjuploadeFileDlete();
	allnames = names;
	} 