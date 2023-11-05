//
//  BuildAffectionView.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import SwiftUI

struct BuildAffectionView: View {
    let pet: CurrentPet
    let arcticFox = Image("ArcticFox")
    let lightBlue = Color("Colors/Color 3")
    let midBlue = Color("Colors/Color 6")
    let darkBlue = Color("Colors/Color 4")
    let darkestBlue = Color("Colors/Color 5")
    let darkRed = Color("Colors/Color 7")
    let beige = Color("Colors/Color 2")
    
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [lightBlue,midBlue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(darkestBlue)
                    Spacer()
                    Text("\(pet.affectionLvl)")
                        .font(.system(size: 25))
                        .foregroundColor(darkRed)
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 35, height: 30)
                        .foregroundColor(darkRed)
                }
                .padding()

                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(darkestBlue)
                    ZStack(alignment: .leading) {
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(beige)
                                .cornerRadius(8)
                            Image(systemName: "chevron.backward")
                        }
                        Text("Build Affection with " + pet.name)
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

                Divider()

                HStack {
                    VStack {
                        Image(systemName: "questionmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Quizzes")
                    }
                    .frame(width: 130, height: 130)
                    .foregroundColor(darkestBlue)
                    .background(beige)
                    .cornerRadius(10)
                    .padding()
                    Spacer()
                    VStack {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Tasks")
                    }
                    .frame(width: 130, height: 130)
                    .foregroundColor(darkestBlue)
                    .background(beige)
                    .cornerRadius(10)
                    .padding()
                }
                .padding()
                
                Divider()
                
                HStack(alignment: .center) {
                    Image(systemName: "person.2.fill")
                        .resizable()
                        .frame(width: 35, height: 30)
                    Spacer()
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 35, height: 30)
                    Spacer()
                    Image(systemName: "pawprint.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "newspaper.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .foregroundColor(darkestBlue)
                .padding([.top], 20)
                .padding([.horizontal], 40)
            }
        }
    }
}

struct BuildAffectionView_Previews: PreviewProvider {
    static var pet = CurrentPet.sampleData[0]
    static var previews: some View {
        BuildAffectionView(pet: pet)
            .background(pet.theme.mainColor)
    }
}
