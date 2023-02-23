//
//  Navigation.swift
//  SwiftUI_Day4
//
//  Created by Abdulaziz Albahar on 2/22/23.
//

import SwiftUI

struct Nav1: View {
    
    @State var clicked: Bool = false
    
    @StateObject var myCountry: Country = Country(name: "Australia", color: .orange)
    
    var body: some View {
        
        
        NavigationStack {
            VStack {
                
                Text("Nav Screen 1").font(Font.system(
                    size: 30,
                    weight: Font.Weight.bold,
                    design: Font.Design.rounded
                )
                )
                
                Button(action: {
                    clicked = true
                }, label: {
                    Text("Click to proceed to next screen.")
                }).padding(.top)
                
                Text("Current country: " + myCountry.name).foregroundColor(myCountry.color).padding(.top)
                
                TextField("Set a new country name here", text: $myCountry.name)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)


            }.navigationDestination(isPresented: $clicked, destination: {
                Nav2(clicked: $clicked).environmentObject(myCountry)
            })
            
        }
    }
}

struct Nav2: View {
    
    @Environment(\.dismiss) private var dismiss // OPTIONAL, use this to dismiss a current view. Call dismiss().
    
    @Binding var clicked: Bool
    
    @EnvironmentObject var myCountry: Country // We use environment objects to share data across the whole app, like if we wanted to pass around an object which represents a user. Contrary to normally passing the object to a new view, this instantiates it as a 'StateObject', allowing us to continue monitoring changes in that object.
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text("Nav Screen 2").font(Font.system(
                size: 30,
                weight: Font.Weight.bold,
                design: Font.Design.rounded
                )
            )
            
            Button(action: {
                // Resets the boolean used to present the view -> therefore returning us to Nav1.
                clicked = false
            }, label: {
                Text("Click to return.")
            }).padding(.top)
            
            Text("Current country: " + myCountry.name).foregroundColor(myCountry.color).padding(.top)
            
            
            TextField("Set a new country name here", text: $myCountry.name)
                .frame(width: 100)
                .multilineTextAlignment(.center)
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Nav1()
    }
}
