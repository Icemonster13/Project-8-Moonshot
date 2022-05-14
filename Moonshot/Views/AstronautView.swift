//
//  AstronautView.swift
//  Moonshot
//
//  Created by Michael & Diana Pascucci on 5/6/22.
//

import SwiftUI

struct AstronautView: View {
    
    // MARK: - PROPERTIES AND CONSTANTS
    let astronaut: Astronaut
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                CustomDivider(width: 300.0)
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts["aldrin"]!)
            .preferredColorScheme(.dark)
    }
}
