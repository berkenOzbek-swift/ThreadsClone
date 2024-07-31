//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Berken Özbek on 31.07.2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("denzel")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
