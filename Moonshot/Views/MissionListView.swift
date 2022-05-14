//
//  MissionListView.swift
//  Moonshot
//
//  Created by Michael & Diana Pascucci on 5/7/22.
//

import SwiftUI

struct MissionListView: View {
    
    // MARK: - PROPERTIES AND CONSTANTS
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    // MARK: - BODY
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .padding(5)
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundColor(.white)
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.5))
                        }
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(.lightBackground)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground)
                    )
                }
            }
        }
        .listStyle(.plain)
        .listRowBackground(Color.darkBackground)
    }
}

// MARK: - PREVIEW
struct MissionListView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        MissionListView(astronauts: astronauts, missions: missions)
    }
}
