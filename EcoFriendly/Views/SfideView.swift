//
//  SfideView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui ci sono le sfide. Andranno divise in "in corso" e "completate"




struct SfideView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(sfida) { sfida in
                    NavigationLink(destination: TasksView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.coloreVerde)
                            
                            HStack {
                                Text(sfida.nomeSfida)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color.primary)
                                        .fontWeight(.medium)
                                        .padding(.leading)
                                        .multilineTextAlignment(.leading)
                                
                                Spacer()
                                
                                Image(sfida.iconaSfida)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                            }
                        }
                    }
                }
                .padding(.horizontal)
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
