//
//  ContentView.swift
//  SwiftUIExample3
//
//  Created by Adi Mizrahi on 13/08/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var pokemonName = "Charmander"
    
    var body: some View {
        VStack {
            Text(pokemonName)
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: 50
            )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            Button(
                action: { self.switchPokemon() },
                label: { Text("Random") }
            )
        }
    }
    func switchPokemon() {
        let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
        pokemonName = list.randomElement() ?? ""
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
