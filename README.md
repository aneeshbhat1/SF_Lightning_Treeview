# SF_Lightning_Treeview
This is a <b>'n-level'</b> tree view component developed in lightning. The component is developed by using the styles from Lightning Design System(LDS). 
However, the style defined in LDS cannot be reused as is in the application since, LDS just provides a way to style your elements that match the lightning theme. 

The <b>'TreeviewContainer'</b> component in the code above, reads the data to be displayed using the Apex controller. The data read should have the hierarchical structure just like how it's displayed in the tree view. The first level of nodes are displyed by the <b>'TreeViewContainer'</b> and the rest of the nodes are displayed by the <b>'TreeView'</b> component recursively.

The first level nodes have a slightly different style as compared to the nodes in the lower levels and hence the 2 separate components.

The 'click' behaviour(icon change + expand/collapse) of the node is handled using a property in the <b>'Node'</b> object instead of accessing the elements from the DOM directly.

The treeview looks like the snapshot below:

![Alt text](https://github.com/aneeshbhat1/SF_Lightning_Treeview/blob/master/Treeview.png)
