//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 12/04/2024.
//

import SwiftUI

struct Imanage: View {
    enum Etat{
        case gérer
        case enregistrer
        case contrôler
    }
    
    @State var etat: Etat = .gérer
    
    var body: some View {
        Group {
            switch etat {
            case .gérer:
                VStack(spacing:30) {
                    HStack(spacing:30) {
                        Button("J'enregistre", action:{etat = .enregistrer}).frame(width:100)
                        Button("Je contrôle", action:{etat = .contrôler}).frame(width:100)
                    }
                }.padding(30)
            case .enregistrer:
                Enregistrer()
            case .contrôler:
                Contrôler()
            }
            
        }
    .toolbar {
        ToolbarItem(placement: .principal) {
            if etat != .gérer {
                Button("gérer") {etat = .gérer}
                    
            }
        }
    }
    }
}

#Preview {
    Imanage()
}
