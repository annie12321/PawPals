//
//  LoginView.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import SwiftUI

struct LoginView: View {
    let darkestGreen = Color("Colors/Color 1")
    let beige = Color("Colors/Color 2")
    let green = Color("Colors/Color")
    let lightGreen = Color("Colors/Color 8")
    let darkGreen = Color("Colors/Color 10")
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [green,darkGreen]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            Spacer()
            VStack {
                Label("PawPals", systemImage: "pawprint.fill")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                HStack {
                    Text("Raise your endangered animals Today!")
                        .foregroundColor(.black)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Spacer()
                
                Button(action: {}) {
                    Text("ENTER YOUR NAME")
                        .font(.title2)
                        .frame(width: 300, height: 50)
                        .foregroundColor(lightGreen)
                        .background(darkestGreen)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
