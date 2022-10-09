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
                    Label(title: { Text("Cardápio RU")
                            .bold()
                            .foregroundColor(Color("Grinch"))
                            .font(.system(size: 40))
                    },
                          icon: { Image(systemName: "menucard")
                            .font(.system(size: 30, weight: .bold, design: .default))
                    })
                        .frame(width: 300, height: 50, alignment: .center)
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
                            .font(.system(size: 45))
                    },
                          icon: { Image(systemName: "bus")
                            .font(.system(size: 25, weight: .bold, design: .default))
                    })
                        .frame(width: 300, height: 50, alignment: .center)
                        .background(Color .yellow)
                        .foregroundColor(Color("Grinch"))
                        .clipShape(Capsule())
                })
            }
            .navigationTitle("INFORMA UFABC")
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
