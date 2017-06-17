/**
 * Created by Archana on 16-06-2017.
 */

public with sharing class TreeDataController {
    @AuraEnabled
    public static String getTreeItems(){
        List<Node> treeNodes = new List<Node>();

        Node node = new Node('Node1');
        node.Children = new List<Node>();
        Node child1 = new Node('Node1 - Child1');
        child1.Children = new List<Node>();
        child1.Children.add(new Node('Node1 - Child1 - Child1'));
        child1.Children.add(new Node('Node1 - Child1 - Child2'));
        child1.Children.add(new Node('Node1 - Child1 - Child3'));
        node.Children.add(child1);
        node.Children.add(new Node('Node1 - Child2'));

        treeNodes.add(node);
        treeNodes.add(new Node('Node2'));

        Node node3 = new Node('Node3');
        node3.Children=new List<Node>();
        node3.Children.add(new Node('Node3 - Child1'));
        node3.Children.add(new Node('Node3 - Child2'));
        Node node3Child3 = new Node('Node3 - Child3');
        node3Child3.Children = new List<Node>();
        node3Child3.Children.add(new Node('Node3 - Child3 - Child1'));
        node3Child3.Children.add(new Node('Node3 - Child3 - Child2'));
        node3Child3.Children.add(new Node('Node3 - Child3 - Child3'));
        node3Child3.Children.add(new Node('Node3 - Child3 - Child4'));
        node3Child3.Children.add(new Node('Node3 - Child3 - Child5'));
        node3.Children.add(node3Child3);
        node3.Children.add(new Node('Node3 - Child4'));
        node3.Children.add(new Node('Node3 - Child5'));
        treeNodes.add(node3);

        return JSON.serialize(treeNodes);
    }
}