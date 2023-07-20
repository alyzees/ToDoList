//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct NewToDoView: View {
    //
    @State var title : String
    @State var isImportant : Bool
    
    // this view will be connected with the main content view a bit differently
    // this view will be part of the root view, it will be an expandable sheet OVER the main view
    var body: some View {
        
        VStack{
            Text("New Task").font(.system(size : 25.0, weight: .bold))
            
            TextField("Enter your task here...", text  : $title).padding(15.0).background(Color(.systemGroupedBackground)).cornerRadius(10.0)
            // basically it's binding the value of what is entered into the text field to the global variable title
            
//                        Toggle(isOn : $isImportant){
//                            // isOn does not initialize the toggle to true/false, but it binds the value to the global variable isImportant
//                            Text("Is this task important?")
//                        }.padding(20.0)
            
            
            HStack (spacing: 10.0){
                Text("Is this task important?")
                Spacer()
                Text("No")
                Toggle(isOn : $isImportant){
                    // isOn does not initialize the toggle to true/false, but it binds the value to the global variable isImportant
                }.labelsHidden()
                Text("Yes")
            }.padding(.all, 15.0)
            // end of HStack
            
            Button(action: {
                
            }){
                Text("Create task")
            }
            
            
        }.padding(20.0) // end of VStack
            
        }
    }


struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        // we have to initialize a certain value for the preview to show up when it calls the NewToDoView Struct
        NewToDoView(title: "", isImportant: false)
    }
}
