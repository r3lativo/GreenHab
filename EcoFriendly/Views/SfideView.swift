//
//  SfideView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI


struct SfideView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(sfida) { challenge in
                    NavigationLink(destination: CoseDaFareView(challenge: challenge)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.coloreVerde)
                            
                            HStack {
                                Text(challenge.nomeSfida)
                                    .font(.system(size: 26))
                                    .foregroundColor(Color.primary)
                                    .fontWeight(.medium)
                                    .padding(.leading)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                
                                Image(challenge.iconaSfida)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                    .padding()
                            }
                            
                        }
                        .frame(height: 180)
                        .padding(.top, 5.0)
                    }
                }
                .padding()
            }
            .navigationTitle("Sfide")
            
        }
    }
}


struct SfideView_Previews: PreviewProvider {
    static var previews: some View {
        SfideView()
    }
}


/*
 ZStack {
     RoundedRectangle(cornerRadius: 20)
         .foregroundColor(Color.coloreVerde)
     
     HStack {
         VStack {
             Text(sfida.nomeSfida)
                 .font(.system(size:26))
                 .fontWeight(.semibold)
                 .padding(.bottom, 60.0)
                 .padding(.leading)
         }
         Spacer()
         
         VStack {
             Image(sfida.iconaSfida)
                 .resizable()
                 .scaledToFit()
                 .frame(width: 100, height: 100)
                 .padding(.trailing)
                 .padding(.top, 30.0)
         }
     }
 }
 */
