//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 28/03/2024.
//

import SwiftUI

struct Iget: View {
    
    enum Etat{
        case obtenir
        case demander
        case acheter
        case emprunter
        case louer
    }
    
    @State var etat: Etat = .obtenir
    var body: some View {
        Group{
            switch etat {
            case .obtenir:
                VStack(spacing:30) {
                    HStack(spacing:30) {
                        Text("Obtenir").frame(width:100)
                        Text("gratuit").frame(width:100)
                        Text("payant").frame(width:100)
                    }
                    HStack(spacing:30) {
                        Text("définitif").frame(width:100)
                        Button("Je demande", action:{etat = .demander}).frame(width:100)
                        Button("J'achète", action:{etat = .acheter}).frame(width:100)
                        
                    }
                    
                    HStack(spacing:30) {
                        Text("temporaire").frame(width:100)
                        Button("J'emprunte", action:{etat = .emprunter}).frame(width:100)
                        Button("Je loue", action:{etat = .louer}).frame(width:100)
                        
                    }
                }.padding(30)
                
            case .demander:
                Demander()
            case .acheter:
                Acheter()
            case .emprunter:
                Emprunter()
            case .louer:
                Locataire()
            }
        }.toolbar {
            ToolbarItem(placement: .principal) {
                if etat != .obtenir {
                    Button("obtenir") {etat = .obtenir}
                        .frame(width:100)
                }
            }
        }
    }
    
}

#Preview {
    Iget()
}
