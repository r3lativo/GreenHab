//
//  ProfileView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI


struct ProfiloView: View {
    
    @State private var showModal: Bool = false
    @AppStorage("nomeUtente") var nomeUtente = ""
    @State var immagineUtente = "polarBear"
    @State var badges: [String] = UserDefaults.standard.object(forKey: "badges") as? [String] ?? []
    
    var body: some View {
        NavigationView {
            
            VStack(spacing:20) {
                Image(immagineUtente)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 280)
                    .padding([.top, .leading, .trailing])
                
                Text(nomeUtente)
                    .font(.title)
                    .fontWeight(.regular)
                    .padding(.bottom)
                
                Text("Progressi")
                    .font(.title)
                    .fontWeight(.light)
                    .padding(.trailing, 270.0)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 30) {
                        
                        ForEach(badges, id:\.self) { badge in
                            Image("badge_\(badge)")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                        }
                        
                    }
                    .padding([.bottom, .trailing, .leading])
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
            .onAppear {
                nomeUtente = UserDefaults.standard.string(forKey: "nomeUtente") ?? ""
                badges =  UserDefaults.standard.object(forKey: "badges") as? [String] ?? []
                print(badges.count)
            }
        }
    }
}


struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
