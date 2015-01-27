public function saveCurrentState(eve:Event):void {
          	if(firsTime){      
               undoRedoDescriptor++;
               var saveitemsArray:ArrayCollection=new ArrayCollection();
           	
           	for(var i:int=0;i<dropCanvas.numChildren;i++){ 
                var UIob:Object= dropCanvas.getChildAt(i) ;
                var saveobj:UserPrefs=new UserPrefs();
                    saveobj.savingUIobject=UIob;
                    saveobj.xx=UIob.x;
                    saveobj.yy=UIob.y;
                if(UIob.hasOwnProperty('lineLength')){
                	saveobj.isLine=true;
                	saveobj.lineLength=UIob.lineLength;
                    saveobj.lineHeight=UIob.lineHeight;
                }
                saveitemsArray.addItem(saveobj);
              }
               undostepsArray.addItem(saveitemsArray);
             }
            else { var b:int;
                for(var j:int=undoRedoDescriptor+1;j<undostepsArray.length;b++){
          		undostepsArray.removeItemAt(j);
          		}
          	     undostepsArray.refresh();
          	  firsTime=true;
              }        
            }
            
      public function undo(eve:Event):void {
             	 if (firsTime){
             	    saveCurrentState(eve);
             	     firsTime=false;
             	      }
             	   undoRedoDescriptor--;
             	if(undoRedoDescriptor>-1){
             		dropCanvas.removeAllChildren();
                  var dupArr:ArrayCollection;
             	      dupArr=undostepsArray.getItemAt(undoRedoDescriptor) as ArrayCollection;
             	   if(dupArr.length!=0) {
             	    for(var i:int=0;i<dupArr.length;i++){
                	var bb:UserPrefs=dupArr.getItemAt(i) as UserPrefs;
                	if(bb.isLine==false){
                	var ne:DisplayObject=bb.savingUIobject as DisplayObject;
                	ne.y=bb.yy;
                	ne.x=bb.xx;
                	dropCanvas.addChild(ne);}
                	if(bb.isLine==true){
                	var nee:Link=bb.savingUIobject as Link;	
                    nee.y=bb.yy;
                	nee.x=bb.xx;
                    nee.lineLength=bb.lineLength;
                    nee.lineHeight=bb.lineHeight;
                    dropCanvas.addChild(nee);
                    }
                     }
                     myMove2();
                    }
                   else {} 
                 }
               else {
               undoRedoDescriptor=0;
                }
            setNetworkTree();
             }
            public function redo():void {
                     undoRedoDescriptor++;
              if(undoRedoDescriptor<undostepsArray.length){
              	      
             	  	 dropCanvas.removeAllChildren();
             	  var dupArr:ArrayCollection;
             	      dupArr=undostepsArray.getItemAt(undoRedoDescriptor) as ArrayCollection;
             	  if(dupArr.length!=0) {
             	  	for(var i:int=0;i<dupArr.length;i++){
                	var bb:UserPrefs=dupArr.getItemAt(i) as UserPrefs;
                	if(bb.isLine==false){
                	var ne:DisplayObject=bb.savingUIobject as DisplayObject;
                	ne.y=bb.yy;
                	ne.x=bb.xx;
                	dropCanvas.addChild(ne);}
                	if(bb.isLine==true){
                	var nee:Link=bb.savingUIobject as Link;	
                    nee.y=bb.yy;
                	nee.x=bb.xx;
                    nee.lineLength=bb.lineLength;
                    nee.lineHeight=bb.lineHeight;
                    dropCanvas.addChild(nee);
                      }}
                    myMove2();
                        }
                    else {}
                 }
            else
               undoRedoDescriptor=undostepsArray.length-1;
               setNetworkTree();
             }
            
            public function myMove(event:Event):void {
            	event.target.positionx.text=event.target.x;
            	event.target.positiony.text=event.target.y;
                var startingobjs:ArrayCollection=event.target.getStartArray();
            	var endingobjs:ArrayCollection=event.target.getEndArray();
            	for(var i:int=0;i<startingobjs.length;i++){
            	        var testname:String=startingobjs[i].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	break;
                        	}
                        }
                        if(isExist){
              Link(dropCanvas.getChildByName(startingobjs[i].name)).beginY=event.target.y+(event.target.height)/2;
              Link(dropCanvas.getChildByName(startingobjs[i].name)).beginX=event.target.x+(event.target.width)/2;
            		
            	   }
            	 }
            	
              for(var i:int=0;i<endingobjs.length;i++){
                        var testname:String=endingobjs[i].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	break;
                        	}
                        }
                        if(isExist){
              
              Link(dropCanvas.getChildByName(endingobjs[i].name)).lineHeight=event.target.y+(event.target.height)/2;
              Link(dropCanvas.getChildByName(endingobjs[i].name)).lineLength=event.target.x+(event.target.width)/2;
            		}
            	 }
            }
            
            
            public function myMove2():void {
            	var arr:Array=dropCanvas.getChildren();
            	for(var j:int=0;j<arr.length;j++){
            	if(!arr[j].hasOwnProperty('lineLength')){
            	var startingobjs:ArrayCollection=arr[j].getStartArray();
            	var endingobjs:ArrayCollection=arr[j].getEndArray();
            	for(var i:int=0;i<startingobjs.length;i++){
                        var testname:String=startingobjs[i].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	break;
                        	}
                        }
                        if(isExist){
              
              Link(dropCanvas.getChildByName(startingobjs[i].name)).beginY=arr[j].y+(arr[j].height)/2;
              Link(dropCanvas.getChildByName(startingobjs[i].name)).beginX=arr[j].x+(arr[j].width)/2;
            		}
            		 
            	 }
            	
              for(var i:int=0;i<endingobjs.length;i++){
                        var testname:String=endingobjs[i].name;
                        var testarray:Array=dropCanvas.getChildren();
                        var isExist:Boolean=false;
                        for(var count:int=0;count<testarray.length;count++){
                        	if(testname==testarray[count].name){
                        	isExist=true;
                        	break;
                        	}
                        }
                        if(isExist){ 
              Link(dropCanvas.getChildByName(endingobjs[i].name)).lineHeight=arr[j].y+(arr[j].height)/2;
              Link(dropCanvas.getChildByName(endingobjs[i].name)).lineLength=arr[j].x+(arr[j].width)/2;
            		}
            	 }
            }}}
            

