//
//  ContentView.swift
//  Organizer
//
//  Created by Josh Santos on 3/4/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Chat()
                .tabItem {
                    Image(systemName: "message")
                    Text("Messages")
                }.tag(1).accessibilityLabel("Messages")
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }.tag(2).accessibilityLabel("Calendar")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
