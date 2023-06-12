//
//  ContentView.swift
//  SwiftUI-GridView
//
//  Created by macOS on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    let data = (1...10).map { "\($0)" }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: createColumns()) {
                    ForEach(data, id: \.self) { item in
                        Image("pokemon_" + "\(item)")
                            .frame(width: 180, height: 180)
                            .background(Color.white)
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: SwiftUI.ContentMode.fit)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Pokemons")
        }
    }
    
    func createColumns() -> [GridItem] {
        let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 5), count: 2)
        return columns
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
