//
//  ProfileView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui c'è il profilo. Per ora è solo un test.
//  Andrà creato un file Swift "Profilo" in cui conserviamo
//  i dati del singolo profilo e qui mettiamo i dati presi da lì
//  (come in Articoli & ArticoliView...)
//
//  Non ho ancora iniziato a lavorare sui progressi
//  né su l'edit del profilo 

struct ProfiloView: View {
    @State private var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack(spacing:20) {
                Image("polarBear")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("MarcoVerde")
                    .font(.title)
                    .fontWeight(.regular)
                Text("Progressi")
                    .font(.largeTitle)
                    .fontWeight(.light)
                
                
                
                
                
            }
            .navigationTitle("Profilo")
        
            .navigationBarItems(trailing:
                                    Button(action: {
                showModal.toggle()
            }) {
                Text("Modifica")
            })
            .sheet(isPresented: $showModal) {
                ModificaView(showModal: $showModal)
            }
           
        }
    }
    
    
    
}
struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
