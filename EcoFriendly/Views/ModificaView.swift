//
//  ModificaView.swift
//  EcoFriendly
//
//  Created by Matthew Amelino on 03/12/21.
//

import SwiftUI

struct ModificaView: View {
    @Binding var showModal: Bool
    var body: some View {
        
        
        
        VStack(spacing: 50){
            
            HStack(spacing:30) {
                Button(action: {}) {
                    Image("salamander")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("jaguar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
         }
            HStack(spacing:30){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("fox")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("seal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("penguin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                
            }
            HStack(spacing:30){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("polarBear")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("turtle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("ganesha")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                
            }
            
            
            
            
        }
    }
}

struct ModificaView_Previews: PreviewProvider {
    static var previews: some View {
        ModificaView(showModal:
                            .constant(true))
    }
}
