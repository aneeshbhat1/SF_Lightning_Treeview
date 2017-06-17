/**
 * Created by Archana on 17-06-2017.
 */
({
    doInit: function(cmp) {
          var action = cmp.get("c.getTreeItems");
          action.setCallback(this,function(response){
              debugger;
              cmp.set("v.treeItems",JSON.parse(response.getReturnValue()));
          });
          $A.enqueueAction(action);
    },
    handleClick : function (cmp, event, helper) {
        var controlsIndex = event.currentTarget.getAttribute('aria-controls');
        var node = cmp.get('v.treeItems['+controlsIndex+']');
        cmp.set('v.treeItems['+controlsIndex+'].IsExpanded',!node.IsExpanded);
    }
})