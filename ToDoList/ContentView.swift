//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Text("To Do List").font(.system(size: 40, weight: .bold)).padding(15.0)
                    
                    // another way to create a button is to put the action as a parameter, and the inside of the {} is just the text content
                    Spacer(minLength: 35.0)
                    Button(action: {
                        // action
                    }){
                        Text("+").font(.system(size: 35, weight: .bold))
                    }.padding([.top, .bottom, .trailing], 20.0)
                    
                }.frame(maxWidth: .infinity) // might be unnecessary b/c of spacer ==> rather the contents should be max width
            }
            
        } // end of scrollview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
