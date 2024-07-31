//
//  ProfileView.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadsFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadsFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                HStack(alignment: .top, spacing: 100) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Berken Özbek")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("Berken_Ozbek")
                                .font(.subheadline)
                       }
                        Text("I am working as a software developer.")
                            .font(.caption)
                        Text("2 followers")
                            .font(.caption2)
                            .foregroundColor(Color(.systemGray))
                    }
                    CircularProfileImageView()
                }
                Button{
                    
                }label: {
                    Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 32)
                    .background(.black)
                    .cornerRadius(10)
                }
                VStack {
                    HStack {
                        ForEach(ProfileThreadsFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "ID", in: animation)
                                }else {
                                    Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                        LazyVStack {
                            ForEach(0...10, id: \.self) { thread in
                                    ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    ProfileView()
}
