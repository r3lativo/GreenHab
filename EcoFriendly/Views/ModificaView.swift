//
//  ModificaView.swift
//  EcoFriendly
//
//  Created by Matthew Amelino on 03/12/21.
//

import SwiftUI

struct ModificaView: View {
    @Binding var showModal: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ModificaView_Previews: PreviewProvider {
    static var previews: some View {
        ModificaView(showModal:
                            .constant(true))
    }
}
