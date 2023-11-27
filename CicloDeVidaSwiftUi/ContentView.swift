//
//  ContentView.swift
//  CicloDeVidaSwiftUi
//
//  Created by Daniel Moya on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = true
    
    var body: some View {
        VStack {
            if show {
                Text("Hello, world!")
                    .onAppear{
                        print("Aparecio el texto de bienvenida")
                    }.onDisappear{
                        print("Desaparecio el texto de bienvenida")
                    }
            }
            Button(action:{
                self.show.toggle()
            }){
                if show == true {
                    Text("Desaparecer texto")
                } else {
                    Text("Mostrar texto")
                }
            }.onAppear{
                print("Aparecio el boton")
            }
            
        }
        .padding()
        .onAppear{
            print("Aparecio el vstack")
        }
    }
}

#Preview {
    ContentView()
}
