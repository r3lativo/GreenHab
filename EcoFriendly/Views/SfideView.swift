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
                VStack {
                    List {
                        Section(header: Text ("Seleziona sfida")) {
                            HStack {
                                VStack {
                                    Text("Sfida 1")
                                        .font(.system(size:26))
                                        .padding(.bottom, 60.0)
                                }
                                Spacer()
                                
                                VStack {
                                    Image("polarBear")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .padding(.trailing)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


struct SfideView_Previews: PreviewProvider {
    static var previews: some View {
        SfideView()
    }
}

/*
 VStack {
 List {
 ForEach(sfida) { sfida in
 HStack {
 VStack {
 Text(sfida.nomeSfida)
 .font(.system(size:26))
 .padding(.bottom, 60.0)
 }
 Spacer()
 
 VStack {
 Image(sfida.iconaSfida)
 .resizable()
 .scaledToFit()
 .frame(width: 100, height: 100)
 .padding(.trailing)
 }
 }
 }
 }
 }
 */
