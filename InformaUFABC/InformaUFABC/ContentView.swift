//
//  ContentView.swift
//  InformaUFABC
//
//  Created by Sara Batista dos Santos Felix on 10/4/22.
//

import SwiftUI
import WebKit

struct ContentView: View {

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(named: "Grinch") as Any]
    }
    var body: some View {
        NavigationView {
            VStack {
                Link(destination: URL(string: "https://proap.ufabc.edu.br/nutricao-e-restaurantes-universitarios/cardapio-semanal")!,
                     label: {
                    Label(title: { Text("Restaurante Universitário")
                            .bold()
                            .foregroundColor(Color("Grinch"))
                    },
                          icon: { Image(systemName: "menucard")
                            .font(.system(size: 20, weight: .bold, design: .default))
                    })
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
