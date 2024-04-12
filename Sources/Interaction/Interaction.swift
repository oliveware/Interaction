// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct Menu: View {
    enum Etat{
        case menu
        case gérer
        case obtenir
        case fournir
    }
    
    @State var etat: Etat = .menu
    
    public init() {}
    
    public var body: some View {
        Group {
            switch etat {
            case .menu:
                VStack(spacing:30) {
                    HStack(spacing:30) {
                        Button("Je gère", action:{etat = .gérer}).frame(width:100)
                        Button("J'obtiens", action:{etat = .obtenir}).frame(width:100)
                        Button("Je fournis", action:{etat = .fournir}).frame(width:100)
                    }
                }.padding(30)
            case .gérer:
                Imanage()
            case .obtenir:
                Iget()
            case .fournir:
                Iput()
            }
            
        }
    .toolbar {
        ToolbarItem(placement: .principal) {
            if etat != .menu {
                Button("back") {etat = .menu}
                    
            }
        }
    }
    }
}

#Preview {
    Menu()
}
