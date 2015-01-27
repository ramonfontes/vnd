  public function setobject(eve:Event):void {
		
	      if(ViewBool){
	      	Templatetype=false;
	      	 if(focusobject!=null && viewfirstTime){
	      	 viewsObjects.addItem(focusobject);
	      	 viewfirstTime=false;
	      	 }
	      	 var bool:Boolean=false;
	      	
	      	 for(var i:int=0;i<viewsObjects.length;i++){
	      	 
	      	 	if(viewsObjects[i].name==eve.target.name ){
	      	 		bool=true;
	      	 		break;
	      	 	}
	      	 }if(!bool)
	      	viewsObjects.addItem(eve.target);
	      	setfocusforView();
	      }
	     else{Templatetype=false;  
	     removefocusforView();
	     
	     if(focusobject!=null){
	        focusobject.removeFoc();}
		    focusobject=eve.target;
		    focusobject.setFoc();
		   
		    Configurationpanel.removeAllChildren();
		   	var pg:Object;
		   	pg=eve.target.can;
		   	pg.visible=true;
		  	pg.includeInLayout=true;
		   	
	       Configurationpanel.addChild(pg as DisplayObject);
			
			names = new Array();
			for(var i:int=0; i<allnames.length; i++)
			{
				var arr:ArrayCollection=focusobject.objparaArrayCol as ArrayCollection;
				for(var x:int = 0;x<arr.length;x++)
				{
						if( arr[x].id=='instance' && allnames[i] == arr[x].name)
						names.push(allnames[i]);
				}
			}
	       }}
	       public function setobject2(ob:Object):void {
	         if(focusobject!=null){
	          focusobject.removeFoc(); 
	          //
	     removeViewFocus1();
	     //
	          }
		    focusobject=ob;
		  focusobject.setFoc();
		  var pg:Object;
		   	pg=focusobject.can;
		   	pg.visible=true;
		  	pg.includeInLayout=true;
		  Configurationpanel.addChild(pg as DisplayObject);
			if(focusobject)
			{
		    		names = new Array();
				for(var i:int=0; i<allnames.length; i++)
				{
					var arr:ArrayCollection=focusobject.objparaArrayCol as ArrayCollection;
					for(var x:int = 0;x<arr.length;x++)
					{
						if( arr[x].id=='instance' && allnames[i] == arr[x].name)
						names.push(allnames[i]);
					}
				}
			}
	       }
		   	  public function setobject3(ob:Object):void {
	         if(focusobject!=null){
	          focusobject.removeFoc(); 
	          //
	     removeViewFocus1();
	     //
	          }
		    focusobject=ob;
		  	if(focusobject)
			{
		    		names = new Array();
				for(var i:int=0; i<allnames.length; i++)
				{
					var arr:ArrayCollection=focusobject.objparaArrayCol as ArrayCollection;
					for(var x:int = 0;x<arr.length;x++)
					{
						if( arr[x].id=='instance' && allnames[i] == arr[x].name)
						names.push(allnames[i]);
					}
				}
			}
	       }