//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 7/18/23.
//

import Foundation

// make the objects identifiable so they can be iterated over ==> though in java you can just iterate over objects in an arraylist normally, but right now we're dealing with an interface!
class ToDoItem : Identifiable{
    var title : String
    var isImportant : Bool
    var taskId = UUID() // generates a random, unique identifier for each object ==> instance of this class ==> task
    
    
    init(){
        self.title = ""
        self.isImportant = false
    }
    
    init(title:String, isImportant: Bool){ // = false ??
        self.title = title
        self.isImportant = isImportant
    }
    
    
    
}
