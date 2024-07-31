//
//  EditProfileView.swift
//  Threads
//
//  Created by Berken Özbek on 31.07.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var link = ""
    @State private var bioText = ""
    @State private var isPrivateProfile = true
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Berken Özbek")
                        }
                        .font(.footnote)
                        Spacer()
                        CircularProfileImageView()
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter Bio...", text: $bioText)
                    }
                    .font(.footnote)
                    Divider()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField("Add Link...", text: $link)
                    }
                    .font(.footnote)
                    Divider()
                    Toggle("Private Profile", isOn: $isPrivateProfile)
                    Divider()
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading ) {
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing ) {
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
