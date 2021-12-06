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
    
    @State var immagineUtente = "polarBear"
    
    var body: some View {
        NavigationView {
            
            VStack(spacing:20) {
                Image(immagineUtente)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 280)
                Text("MarcoVerde")
                    .font(.title)
                    .fontWeight(.regular)
                Text("Progressi")
                    .font(.largeTitle)
                    .fontWeight(.light)
                HStack(alignment: .center, spacing: 60) {
                    VStack{
                        Image("christmas")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("VerdeNatale")
                            .font(.footnote)
                            .fontWeight(.light)
                        
                        
                    }
                    VStack{
                        Image("shopping")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("SpesaGreen")
                            .font(.footnote)
                            .fontWeight(.light)
                        
                    }
                    VStack{
                        Image("night")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("SerataLowWaste")
                            .font(.footnote)
                            .fontWeight(.light)
                        
                    }
                    
                }
                
                
                
                Spacer()
                
            }
            
            
            .navigationTitle("Profilo")
            
            .navigationBarItems(trailing:
                                    Button(action: {
                showModal.toggle()
                
            }) {
                   Text("Modifica")
                    .foregroundColor(.teal)
                   // .padding( .top, 90.0)
                    
            } )
                      
            .sheet(isPresented: $showModal) {
                ModificaView(showModal: $showModal, immagineUtente: $immagineUtente)
            }
            
        }
    }
    
    
    
}
struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
