//
//  ContentView.swift
//  InformaUFABC
//
//  Created by Sara Batista dos Santos Felix on 10/4/22.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Link(destination: URL(string: "https://proap.ufabc.edu.br/nutricao-e-restaurantes-universitarios/cardapio-semanal")!,
                     label: {
                    Label(title: { Text("Restaurante Universitário")},
                          icon: { Image(systemName: "menucard")})
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color .yellow)
                        .foregroundColor(Color("Grinch"))
                        .clipShape(Capsule())
                })
            }
            .navigationTitle("INFORMA UFABC")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
