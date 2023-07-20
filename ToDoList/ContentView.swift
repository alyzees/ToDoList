//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    // this property (dynamic) will keep track of whether or not to show the new task creator (NewToDoView)
    @State private var showNewTaskCreator = false
    @State var toDoItemsList : [ToDoItem] = [] // initializing an empty array of "data type"/ class ToDoItem
    
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Text("To Do List").font(.system(size: 40, weight: .bold)).padding(15.0)
                    
                    // another way to create a button is to put the action as a parameter, and the inside of the {} is just the text content
                    Spacer(minLength: 35.0)
                    Button(action: {
                        // action
                        
                        // verifying that we are referring to this State property
                        self.showNewTaskCreator = true
                        // converts the property to true so the New Task view can be shown as an overlayed sheet on the main view
                    }){
                        Text("+").font(.system(size: 35, weight: .bold))
                    }.padding([.top, .bottom, .trailing], 20.0)
                    
                }.frame(maxWidth: .infinity) // might be unnecessary b/c of spacer ==> rather the contents should be max width
            }
            
        } // end of scrollview
        
        // List view
        // we will iterate over the array of to do items and display them here in a list
        List{
            // esentially a for loop built in feature
            // item is temp variable
            ForEach(toDoItemsList){ item in
                Text(item.title)
            }
        }
        
        
        // We are not opening up an entirely new page as we do with NavigationStacks/Links
        // We are "calling" the NewToDoView Struct to bring all of the views to this page
        // appears at the bottom b/c we placed it after main VStack
        
        if (showNewTaskCreator){ // == true
            NewToDoView(title: "", isImportant: false)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
