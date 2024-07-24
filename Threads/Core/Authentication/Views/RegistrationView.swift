//
//  RegistrationView.swift
//  Threads
//
//  Created by Berken Özbek on 24.07.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    TextField("Enter your Email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter your Password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    TextField("Enter your Fullname", text: $fullname)
                        .modifier(ThreadsTextFieldModifier())
                    TextField("Enter your Username", text: $username)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                Button {
                    dismiss()
                }label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                Spacer()
                
                Divider()
                
                NavigationLink {
                    LoginView()
                }label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
