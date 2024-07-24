//
//  FeedView.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
                .refreshable {
                    print("DEBUG: Refresh Threads")
                }
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FeedView()
}
