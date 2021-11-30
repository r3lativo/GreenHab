//
//  MainView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  View principale, per ora è la tabview che di rimando mostra
//  le cose collegate ad ogni tab

struct MainView: View {
    var body: some View {
        TabView() {
            
            
            SfideView()
                .badge(2)
                .tabItem {
                    Image(systemName: "leaf.arrow.triangle.circlepath")
                    Text("Sfide")
                }
            
            VicinoATeView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Vicino a te")
                }
            
            ProfiloView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profilo")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
