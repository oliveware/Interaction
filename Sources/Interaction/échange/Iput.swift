//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 28/03/2024.
//

import SwiftUI

struct Iput: View {
    enum Etat{
        case fournir
        case donner
        case vendre
        case prêter
        case louer
    }
    
    @State var etat: Etat = .fournir
    
    var body: some View {
        Group {
        switch etat {
        case .fournir:
            VStack(spacing:30) {
                HStack(spacing:30) {
                    Text("Fournir").frame(width:100)
                    Text("gratuit").frame(width:100)
                    Text("payant").frame(width:100)
                }
                HStack(spacing:30) {
                    Text("définitif").frame(width:100)
                    Button("Je donne", action:{etat = .donner}).frame(width:100)
                    Button("Je vends", action:{etat = .vendre}).frame(width:100)
                    
                }
                
                HStack(spacing:30) {
                    Text("temporaire").frame(width:100)
                    Button("Je prête", action:{etat = .prêter}).frame(width:100)
                    Button("Je loue", action:{etat = .louer}).frame(width:100)
                    
                }
            }.padding(30)
        case .donner:
            Donner()
        case .vendre:
           Vendre()
        case .prêter:
            Prêter()
        case .louer:
            Loueur()
        }
    }.toolbar {
        ToolbarItem(placement: .principal) {
            if etat != .fournir {
                Button("fournir") {etat = .fournir}
                    .frame(width:100)
            }
        }
    }
    }
}

#Preview {
    Iput()
}
