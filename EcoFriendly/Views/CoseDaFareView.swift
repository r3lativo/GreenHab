//
//  TasksView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import SwiftUI

struct CoseDaFareView: View {
    var body: some View {
        VStack {
            Text("Spiegazione da prendere in qualche modo")
                .foregroundColor(Color.secondary)
            
            List {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("frutta")
                            .resizable()
                            .frame(width: 70, height: 70)
                    }
                    Text("Lol")
                        .padding()
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

struct CoseDaFare_Previews: PreviewProvider {
    static var previews: some View {
        CoseDaFareView()
    }
}
