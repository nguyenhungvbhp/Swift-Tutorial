//: Playground - noun: a place where people can play

import UIKit

class Node {
    //value of node
    var value: String
    
    //children of node, A node have children list
    var children:[Node] = []
    
    //A node have a parent and a node can not parent such node root
    var parent: Node?
    
    //initialize with value of Node
    init(value: String) {
        self.value = value
    }
    
    func add(child: Node) {
        child.parent = self//Parent of child node is Node current
        children.append(child)
    }
    
}

extension Node: CustomStringConvertible {
    var description: String {
        var text = "\(self.value)"
        if !children.isEmpty {
        text += "("
            
            for child in children {
                text += child.description + ","
            }
            
           text += ")"
        }
        return text
    }
}

var beveragesNode = Node(value: "beverages")//root node
var hotNode = Node(value: "hot")
var coldNode = Node(value: "cold")
var teaNode = Node(value: "tea")
var coffeeNode = Node(value: "coffee")
var cocoaNode = Node(value: "cocoa")
var blackNode = Node(value: "black")
var greenNode = Node(value: "green")
var chaiNode = Node(value: "chai")
var sodaNode = Node(value: "soda")
var milkNode = Node(value: "milk")
var gingerAleNode = Node(value: "ginger ale")
var bitterLemonNode = Node(value: "bitter lemon")
beveragesNode.add(child: hotNode)
beveragesNode.add(child: coldNode)
hotNode.add(child: teaNode)
hotNode.add(child: coffeeNode)
hotNode.add(child: cocoaNode)
teaNode.add(child: blackNode)
teaNode.add(child: greenNode)
teaNode.add(child: chaiNode)
coldNode.add(child: sodaNode)
coldNode.add(child: milkNode)
sodaNode.add(child: gingerAleNode)
sodaNode.add(child: bitterLemonNode)

print(beveragesNode)

//TODO: extention todo find value
extension Node {
    func search(value: String) -> Node? {//? because it return nill in case not found value
        
        if self.value == value {
            return self//return node current
        }
        
        for child in children {
            let tempNode = child.search(value: value)
            if tempNode != nil {
                return tempNode
            }
            
        }
        print("nillll")
        return nil
    }
}

print(beveragesNode.search(value: "tea"))


class NodeGerneric<T> {
    var value:T
    var children: [NodeGerneric] = []
    var parent: NodeGerneric?
    init(value:T) {
        self.value = value
    }
    
    //add child
    func addChild(child:NodeGerneric)  {
        children.append(child)
        child.parent = self
    }
}

extension NodeGerneric where T: Equatable{
    
    func search(value: T) -> NodeGerneric? {
        if self.value == value {
            return self
        }
        
        for child in self.children {
            let nodegerneric = child.search(value: value)
            if nodegerneric != nil {
                return nodegerneric
            }
        }
        return nil
    }
}

extension NodeGerneric: CustomStringConvertible {
    var description: String {
        var text = "\(self.value)"
        if !children.isEmpty {
            text += "("
            
            for child in children {
                text += child.description + ","
            }
            
            text += ")"
        }
        return text
    }
}

let root = NodeGerneric(value: 4)
let child1 = NodeGerneric(value: 5)
let child2 = NodeGerneric(value: 6)
root.addChild(child: child1)
root.addChild(child: child2)
print(root.search(value: 4))
