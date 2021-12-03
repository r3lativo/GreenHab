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
        NavigationView {
            
            
            HStack(spacing:10){
                
                VStack(spacing:100) {
                    Image("salamander")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Image("fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Image("turtle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                VStack(spacing:100){
                    Image("fox")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Image("penguin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Image("seal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                VStack(spacing:100){
                    Image("jaguar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()                    
                    Image("tarantula")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Image("ganesha")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                
                
                .navigationTitle("Modifica il profilo")
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
