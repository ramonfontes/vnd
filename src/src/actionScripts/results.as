public function result(re:ResultEvent):void{
		 	instancesArrayCollection=new ArrayCollection();
		 	objectsArrayCollection=new ArrayCollection();
		      linksArrayCollection=new ArrayCollection();
		        linksNames=new Array(); 
		        names =new Array(); 
		        clear();
		      objectsXml=<objects name="objects"/>;
		 instancesArrayCollection=re.result.nsdlObjects.instances.instance;
		       for(var i:int;i<instancesArrayCollection.length;i++){
		      
		      	  names.push(instancesArrayCollection[i].name);
		      	}
		         objectsArrayCollection=re.result.nsdlObjects.objects.category ;
		     for(var j:int=0;j<objectsArrayCollection.length;j++){
		         var s:String=objectsArrayCollection[j].name;
		         var xmlList:XML = XML("<cater  name='"+s+"'/>");
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
		      	var s:String=linksArrayCollection[x].name;
		        var xmlList2:XMLList = XMLList("<subcater  name='"+linksArrayCollection[x].name+"' index='"+x+"'/>");	
		      	    xmlList.appendChild(xmlList2);
		      	 }
		      	 objectsXml.appendChild(xmlList);
		      allnames = names;
		      
		    } 
		    public function userObjresult(re:ResultEvent):void{
		        instancesArrayCollection=new ArrayCollection();
		 	objectsArrayCollection=new ArrayCollection();
		      linksArrayCollection=new ArrayCollection();   
		      linksNames=new Array(); 
		        names =new Array(); 
		           clear();
		      objectsXml=<objects name="objects"/>;  
		 instancesArrayCollection=re.result.nsdlObjects.instances.instance;
		       for(var i:int;i<instancesArrayCollection.length;i++){
		      
		      	  names.push(instancesArrayCollection[i].name);
		      	}
		         objectsArrayCollection=re.result.nsdlObjects.objects.category ;
		     for(var j:int=0;j<objectsArrayCollection.length;j++){
		         var s:String=objectsArrayCollection[j].name;
		         var xmlList:XML = XML("<cater  name='"+s+"'/>");
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
		      	var s:String=linksArrayCollection[x].name;
		        var xmlList2:XMLList = XMLList("<subcater  name='"+linksArrayCollection[x].name+"' index='"+x+"'/>");	
		      	    xmlList.appendChild(xmlList2);
		      	 }
		      	 objectsXml.appendChild(xmlList);
		       progressBar.visible=false;
              progressBar.includeInLayout=false;
		      userObjuploadeFileDlete();
			allnames = names;
		    } 