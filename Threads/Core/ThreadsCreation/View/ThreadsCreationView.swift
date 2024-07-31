//
//  ThreadsCreationView.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct ThreadsCreationView: View {
    @State private var newThread = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    VStack(alignment: .leading, spacing: 2) {
                        Text("berken_ozbek")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        TextField("Start a Thread...", text: $newThread)
                    }
                    .font(.footnote)
                    Spacer()
                    if newThread.isEmpty {
                        Button {
                            newThread = ""
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {
                        
                    }
                    .opacity(newThread.isEmpty ? 0.5 : 1.0)
                    .disabled(newThread.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    ThreadsCreationView()
}

