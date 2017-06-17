/**
 * Created by Archana on 16-06-2017.
 */

public with sharing class Node {
    public Node(String name){
        this.Name = name;
        IsExpanded = false;
    }
    public String Name{get;set;}
    public List<Node> Children{get;set;}
    public Boolean IsExpanded{get;set;}
}