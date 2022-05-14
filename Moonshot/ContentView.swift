//
//  ContentView.swift
//  Moonshot
//
//  Created by Michael & Diana Pascucci on 5/5/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - @STATE PROPERTIES
    @State private var isGridView = true
    
    // MARK: - PROPERTIES AND CONSTANTS
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                if isGridView {
                    ScrollView {
                        MissionGridView(astronauts: astronauts, missions: missions)
                    }
                } else {
                    MissionListView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    isGridView.toggle()
                } label: {
                    Image(systemName: isGridView ? "list.bullet" : "square.grid.3x3")
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
