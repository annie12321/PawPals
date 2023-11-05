//
//  Home.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import SwiftUI

struct HomeView: View {
    let pet: CurrentPet
    let arcticFox = Image("ArcticFox")
    let darkestGreen = Color("Colors/Color 1")
    let beige = Color("Colors/Color 2")
    let green = Color("Colors/Color")
    let lightGreen = Color("Colors/Color 8")
    let darkGreen = Color("Colors/Color 10")
    let darkRed = Color("Colors/Color 7")
    var showingAffectionView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [green, darkGreen]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(darkestGreen)
                    Spacer()
                    Text("\(pet.affectionLvl)")
                        .font(.system(size: 25))
                        .foregroundColor(darkRed)
                    NavigationLink {
                        BuildAffectionView(pet: pet)
                    } label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 35, height: 30)
                            .foregroundColor(darkRed)
                    }
                }
                .padding()

                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(darkestGreen)
                    ZStack(alignment: .leading) {
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(beige)
                                .cornerRadius(8)
                            Image(systemName: "chevron.backward")
                        }
                        Text("Home")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(beige)
                    }
                    .frame(width: .infinity, height: 20)
                    .padding([.horizontal])
                }
                .frame(height: 60)

                HStack {
                    Image(.arcticFox)
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                Text("LITTLE WHITE SAYS HI :)")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(darkestGreen)
                    
                Spacer()
                
                Divider()
                HStack(alignment: .center) {
                    Button(action: {}) {
                        Image(systemName: "person.2.fill")
                            .resizable()
                            .frame(width: 35, height: 30)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 35, height: 30)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "pawprint.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "newspaper.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                .foregroundColor(darkestGreen)
                .padding([.top], 20)
                .padding([.horizontal], 40)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var pet = CurrentPet.sampleData[0]
    static var previews: some View {
        HomeView(pet: pet)
            .background(pet.theme.mainColor)
    }
}
