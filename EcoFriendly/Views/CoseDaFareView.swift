//
//  TasksView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import SwiftUI

struct CoseDaFareView: View {
    
    let challenge: Sfida
    
    
    var body: some View {
        VStack {
            
            Text(challenge.spiegazione)
                .foregroundColor(Color.secondary)
                .padding()
            
            List {
                ForEach(challenge.componenti) { task in
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(task.immagineCosa)
                                .resizable()
                                .frame(width: 70, height: 70)
                        }
                        Text(task.descrizioneCosa)
                            .padding()
                    }
                    
                }
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Accetta la sfida!")
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .frame(width: 150, height: 50)
                    .background(Color.coloreVerde)
                    .cornerRadius(6)
                    .shadow(radius: 5)
                
            }
        }
    }
}
