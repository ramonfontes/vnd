
       public function saveFile():void{
       	saveXml=<root/>;
       	for(var i:int=0;i<dropCanvas.numChildren;i++){
       		
       	  if((dropCanvas.getChildAt(i) as Object).className=='objects'){
       		var UIob:objects=dropCanvas.getChildAt(i) as objects;
       		var object:XML = <objects></objects>;
                	var xmlList:XMLList = XMLList("<type>nodes</type>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<id>"+UIob.id+"</id>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIob.name+"</name>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<image>"+UIob.img+"</image>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isMOtherTemplate>"+UIob.isMOtherTemplate+"</isMOtherTemplate>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isChildTemplatedOne>"+UIob.isChildTemplatedOne+"</isChildTemplatedOne>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<motherTemplate>"+UIob.motherTemplate+"</motherTemplate>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<x>"+UIob.x+"</x>");
                        object.appendChild(xmlList); 
                    var xmlList:XMLList = XMLList("<y>"+UIob.y+"</y>");
                        object.appendChild(xmlList);
       		  for(var j:int=0;j<UIob.objparaArrayCol.length;j++){
       		  	var par:XML = <par></par>;
       		  	   var xmlList:XMLList = XMLList("<name>"+UIob.objparaArrayCol[j].name+"</name>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<type>"+UIob.objparaArrayCol[j].id+"</type>");
                        par.appendChild(xmlList);
                        if(UIob.objparaArrayCol[j].id=='options'){
                        	for(var oo:int=0;oo<UIob.objparaArrayCol[j].option.length;oo++){
                        var parOption:XMLList =XMLList("<option>"+UIob.objparaArrayCol[j].option[oo].toString()+"</option>");	
                         par.appendChild(parOption);
                        }}
                    object.appendChild(par);
       		    }
       		  for(var k:int=0;k<UIob.valueObjArr.length;k++){
       		  	var par:XML = <valueObjArr></valueObjArr>;
       		  	   var xmlList:XMLList = XMLList("<id>"+UIob.valueObjArr[k].id+"</id>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIob.valueObjArr[k].name+"</name>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<haschanged>"+UIob.valueObjArr[k].haschanged.toString()+"</haschanged>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<IsCombo>"+UIob.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<combeValue>"+UIob.valueObjArr[k].combeValue+"</combeValue>");
                        par.appendChild(xmlList);
                    object.appendChild(par);
       		     }
       		   for(var y:int=0;y<UIob.instancArray.length;y++){
       		   	 var ins:Instances=UIob.instancArray[y] as Instances;
       		   	 var par:XML = <Instances></Instances>;
       		   	 
                    var xmlList:XMLList = XMLList("<id>"+UIob.instancArray[y].id+"</id>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIob.instancArray[y].name+"</name>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isMOtherTemplate>"+UIob.instancArray[y].isMOtherTemplate+"</isMOtherTemplate>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isChildTemplatedOne>"+UIob.instancArray[y].isChildTemplatedOne+"</isChildTemplatedOne>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<motherTemplate>"+UIob.instancArray[y].motherTemplate+"</motherTemplate>");
                        par.appendChild(xmlList);
                    
       		  for(var j:int=0;j<UIob.instancArray[y].objparaArrayCol.length;j++){
       		  	var par1:XML = <par></par>;
       		  	   var xmlList:XMLList = XMLList("<name>"+UIob.instancArray[y].objparaArrayCol[j].name+"</name>");
                        par1.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<type>"+UIob.instancArray[y].objparaArrayCol[j].id+"</type>");
                        par1.appendChild(xmlList);
                        if(UIob.instancArray[y].objparaArrayCol[j].id=='options'){
                        	for(var oo:int=0;oo<UIob.instancArray[y].objparaArrayCol[j].option.length;oo++){
                        var parOption:XMLList =XMLList("<option>"+UIob.instancArray[y].objparaArrayCol[j].option[oo].toString()+"</option>");	
                         par1.appendChild(parOption);
                        }}
                    par.appendChild(par1);
       		    }
       		   // Alert.show(UIob.instancArray[y].valueObjArr.length.toString());
       		  for(var k:int=0;k<UIob.instancArray[y].valueObjArr.length;k++){
       		  	var par1:XML = <valueObjArr></valueObjArr>;
       		  	   var xmlList:XMLList = XMLList("<id>"+UIob.instancArray[y].valueObjArr[k].id+"</id>");
                        par1.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIob.instancArray[y].valueObjArr[k].name+"</name>");
                        par1.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<haschanged>"+UIob.instancArray[y].valueObjArr[k].haschanged.toString()+"</haschanged>");
                        par1.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<IsCombo>"+UIob.instancArray[y].valueObjArr[k].IsCombo.toString()+"</IsCombo>");
                        par1.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<combeValue>"+UIob.instancArray[y].valueObjArr[k].combeValue+"</combeValue>");
                        par1.appendChild(xmlList);
                    par.appendChild(par1);
       		     }
       		     
       		     object.appendChild(par); 
       		   } 
       		   	  var xmlLi2:XML = <linesStartingArray></linesStartingArray>;     
                    for(var ar:int=0;ar<UIob.linesStartingArray.length;ar++){
                    	var testname:String=UIob.linesStartingArray[ar].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	//Alert.show('ddscscscdcd');
                        	break;
                        	}
                        }
                        if(isExist){
                       
                    var xmlList:XMLList = XMLList("<name>"+UIob.linesStartingArray[ar].name+"</name>");
                        xmlLi2.appendChild(xmlList);
                    	}
                     }
                     object.appendChild(xmlLi2);
                     
                    var xmlLi3:XML = <linesEndingArray></linesEndingArray>;     
                    for(var ar:int=0;ar<UIob.linesEndingArray.length;ar++){
                    	var testname:String=UIob.linesEndingArray[ar].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	//Alert.show('ddscscscdcd');
                        	break;
                        	}
                        }
                        if(isExist){
                   
                    var xmlList:XMLList = XMLList("<name>"+UIob.linesEndingArray[ar].name+"</name>");
                        xmlLi3.appendChild(xmlList);
                     }
                     }
                     
                    object.appendChild(xmlLi3); 
       		   	 
       		   	 
       		   }
       		   else if((dropCanvas.getChildAt(i) as Object).className=='Link'){
       		   	var UIobLink:Link=dropCanvas.getChildAt(i) as Link;
       		var object:XML = <objects></objects>;
                	var xmlList:XMLList = XMLList("<type>links</type>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<id>"+UIobLink.id+"</id>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIobLink.can.name+"</name>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<source>"+UIobLink.can.source.name+"</source>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<destination>"+UIobLink.can.destination.name+"</destination>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isMOtherTemplate>"+UIobLink.can.isMOtherTemplate+"</isMOtherTemplate>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<isChildTemplatedOne>"+UIobLink.can.isChildTemplatedOne+"</isChildTemplatedOne>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<motherTemplate>"+UIobLink.can.motherTemplate+"</motherTemplate>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<lineColor>"+UIobLink.lineColor+"</lineColor>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<beginX>"+UIobLink.beginX+"</beginX>");
                        object.appendChild(xmlList); 
                    var xmlList:XMLList = XMLList("<beginY>"+UIobLink.beginY+"</beginY>");
                        object.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<lineLength>"+UIobLink.lineLength+"</lineLength>");
                        object.appendChild(xmlList); 
                    var xmlList:XMLList = XMLList("<lineHeight>"+UIobLink.lineHeight+"</lineHeight>");
                        object.appendChild(xmlList);
       		  for(var j:int=0;j<UIobLink.can.objparaArrayCol.length;j++){
       		  	var par:XML = <par></par>;
       		  	   var xmlList:XMLList = XMLList("<name>"+UIobLink.can.objparaArrayCol[j].name+"</name>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<type>"+UIobLink.can.objparaArrayCol[j].id+"</type>");
                        par.appendChild(xmlList);
                        if(UIobLink.can.objparaArrayCol[j].id=='options'){
                        	for(var oo:int=0;oo<UIobLink.can.objparaArrayCol[j].option.length;oo++){
                        var parOption:XMLList =XMLList("<option>"+UIobLink.can.objparaArrayCol[j].option[oo].toString()+"</option>");	
                         par.appendChild(parOption);
                        }}
                    object.appendChild(par);
       		    }
       		  for(var k:int=0;k<UIobLink.can.valueObjArr.length;k++){
       		  	var par:XML = <valueObjArr></valueObjArr>;
       		  	   var xmlList:XMLList = XMLList("<id>"+UIobLink.can.valueObjArr[k].id+"</id>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<name>"+UIobLink.can.valueObjArr[k].name+"</name>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<haschanged>"+UIobLink.can.valueObjArr[k].haschanged.toString()+"</haschanged>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<IsCombo>"+UIobLink.can.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
                        par.appendChild(xmlList);
                    var xmlList:XMLList = XMLList("<combeValue>"+UIobLink.can.valueObjArr[k].combeValue+"</combeValue>");
                        par.appendChild(xmlList);
                    object.appendChild(par);
       		     }
       		   }
       	    
       		saveXml.appendChild(object);
       		 
       	}  var templates:XMLList = XMLList("<templates></templates>");
            for(var kk:int=0;kk<temaplateArrcol.length;kk++){
       		  	var par:XML = <template></template>;
       		  	  
                    var xmlList:XMLList = XMLList("<name>"+temaplateArrcol[kk]+"</name>");
                        par.appendChild(xmlList);
                    templates.appendChild(par);
       		     }
       		  saveXml.appendChild(templates);
             var numberofnodes:XMLList = XMLList("<numberofnodes>"+numberOfNodes+"</numberofnodes>");
                        saveXml.appendChild(numberofnodes); 
            var numberOfInstances:XMLList = XMLList("<numberOfInstances>"+numberOfInstances+"</numberOfInstances>");
                        saveXml.appendChild(numberOfInstances); 
            var numberOfViews:XMLList = XMLList("<numberOfViews>"+ViewNumber+"</numberOfViews>");
                        saveXml.appendChild(numberOfViews); 
       localXmlservice.send();
       Alert.show("After 'Download' Button appeared you can download file ");
         if(saveBool){
         	clear();
         	saveBool=false;
         	// Alert.show(saveBool.toString());
         }  
       }