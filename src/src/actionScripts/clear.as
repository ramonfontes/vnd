 public function clear():void{
              Configurationpanel.removeAllChildren();  
        	  dropCanvas.removeAllChildren();
              undoRedoDescriptor=-1;
              undostepsArray.removeAll();
              undostepsArray.refresh();
              firsTime=true;
              temaplateArrcol.removeAll();
              viewsarray.removeAll();
              setNetworkTree();
              setTemplateTree();
              setViewTree();
              focusobject=null;
              numberOfInstances=0;
              numberOfNodes=0;
              ViewNumber=0;
              
                }
                