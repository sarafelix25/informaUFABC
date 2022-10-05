//
//  ContentView.swift
//  InformaUFABC
//
//  Created by Sara Batista dos Santos Felix on 10/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {

            Text("Informa UFABC").font(.largeTitle).bold()
                .foregroundColor(Color("Grinch"))

                .padding(.all)
            HStack(spacing: 20) {
                Button(action: {}) {
                    HStack{
                        Text("Ru")
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(Color .yellow)
                    .foregroundColor(Color("Grinch"))
                    .clipShape(Capsule())
                }

                Button(action: {}) {
                    HStack{
                        Text("Fretado")
                            .fontWeight(.bold)
                    }
                }
                .padding()
                .background(Color .yellow)
                .foregroundColor(Color("Grinch"))
                .clipShape(Capsule())

                Button(action: {}) {
                    HStack{
                        Text("Agenda")
                            .fontWeight(.bold)
                    }
                }
                .padding()
                .background(Color .yellow)
                .foregroundColor(Color("Grinch"))
                .clipShape(Capsule())
            }
        }
    }

    struct GrowingButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
