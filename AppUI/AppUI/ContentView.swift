//
//  ContentView.swift
//  AppUI
//
//  Created by 花井悠真 on 2026/09/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("プロフィール") {
                ProfileView()
            }
            .navigationTitle("ホーム")
        }
    }
}

// NavigationStackView から呼び出される
struct ProfileView: View {
    var body: some View {
        Text("プロフィール画面")
            .navigationTitle("プロフィール")
    }
}

struct NavigationListView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("フルーツ")) {
                    NavigationLink("Apple", value: "Apple")
                    NavigationLink("Orange", value: "Orange")
                    NavigationLink("Banana", value: "Banana")
                }
            }
            .navigationDestination(for: String.self) { fruit in
                Text(fruit)
            }
            .navigationTitle("ホーム")
        }
    }
}

#Preview {
    NavigationListView()
}
