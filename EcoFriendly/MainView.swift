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
            
            ScopriView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Scopri")
                }
          
            
            SfideView()
                .badge(2)
                .tabItem {
                    Image(systemName: "leaf.arrow.triangle.circlepath")
                    Text("Sfide")
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
