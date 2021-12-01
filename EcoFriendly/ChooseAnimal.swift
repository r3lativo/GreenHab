//
//  ChooseAnimalView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 01/12/21.
//

import SwiftUI

struct ChooseAnimalView: View {
    @Binding var shouldShowOnboarding: Bool
    @State var userName: String
    
    var body: some View {
        VStack {
            Text("Scegli il tuo animale")
                .font(.system(size:42))
                .multilineTextAlignment(.center)
                .padding()
            
            VStack {
                HStack {
                    Image("polarBear")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("fish")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("lamb")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                HStack {
                    Image("seal")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("tarantula")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("loveBird")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                HStack {
                    Image("ganesha")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("fox")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Image("polarBear")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
            }
            
            
            TextField("Username", text: $userName)
                .font(.system(size:26))
                .multilineTextAlignment(.center)
                .onSubmit {
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            
            
        }
    }
}
