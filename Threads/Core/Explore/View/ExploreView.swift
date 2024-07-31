//
//  ExploreView.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        VStack {
                            UserCell()
                            .padding(.vertical, 4)
                             Divider()
                        }
                       
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $search, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
