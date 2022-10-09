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
            VStack(spacing: 10) {
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
                        .padding(.all)
                })


                Link(destination: URL(string: "https://pu.ufabc.edu.br/horarios-dos-onibus-old")!,
                     label: {
                    Label(title: { Text("Fretado")
                            .bold()
                            .foregroundColor(Color("Grinch"))
                    },
                          icon: { Image(systemName: "bus")
                            .font(.system(size: 18, weight: .bold, design: .default))
                    })
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color .yellow)
                        .foregroundColor(Color("Grinch"))
                        .clipShape(Capsule())
                })
            }
            .navigationTitle("INFORMA UFABC")
            .frame(alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
