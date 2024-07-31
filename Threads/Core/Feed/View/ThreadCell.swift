//
//  ThreadCell.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top, spacing: 12) {
                Image("denzel")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Denzel Washington")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button(action: {
                            
                        }) {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    Image("denzel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(8)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
            HStack(spacing: 16) {
                Button(action: {
                    
                }) {
                    Image(systemName: "heart")
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "bubble.right")
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "arrow.rectanglepath")
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "paperplane")
                }
            }
            .foregroundColor(.black)
            .padding(.horizontal, 45)
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
