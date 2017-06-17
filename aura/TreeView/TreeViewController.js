/**
 * Created by Archana on 16-06-2017.
 */
({
        handleClick : function (cmp, event, helper) {
            var controlsIndex = event.currentTarget.getAttribute('aria-controls');
            var node = cmp.get('v.treeItems['+controlsIndex+']');
            cmp.set('v.treeItems['+controlsIndex+'].IsExpanded',!node.IsExpanded);
        }
    })