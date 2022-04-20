//
//  ProfileView.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 0){
            ZStack(alignment: .topTrailing) {
                //photo de profile
                RoundedImage(url: URL(string: "https://picsum.photos/400"))
                    .frame(height: 175)
               //bouton modifier sur la photo
                Button(action: {}, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(Color.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                })
                .padding(.vertical, 10)
                .offset(x: -10) // decaler le bouton vers la droite = -x sinon gauche = +x
            }
            
            Spacer().frame(height: 18)
            
            // Texte = nom,metier etc...
            Group {
                Text("Nikita, 25")
                    .foregroundColor(.textTitle)
                    .font(.system(size: 26, weight: .medium))
                
                Spacer().frame(height: 8)
                
                Text("Software Engineer")
                
                Spacer().frame(height: 22)
            }
            
            HStack(alignment: .top){
                Spacer()
                //bouton parametre
                Button(action: {    }, label: {
                    VStack{
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("SETTINGS")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondery)
                    }
                })
                Spacer()
                
                //bouton photo
                Button(action: {    }, label: {
                    VStack{
                        Image(systemName: "camera.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(22)
                            .background(Color.red)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                            
                        Text("ADD MEDIA")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondery)
                    }
            })
                Spacer()

                //bouton securité
                Button(action: {    }, label: {
                    VStack{
                        Image(systemName: "shield.fill")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                            
                        Text("SAFETY")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondery)
                        
                    }
                })
            
                Spacer()
            }
            
            Spacer().frame(height: 14)
            
            HStack{
                Text("Photo Tip: Put filter photo because you are ugly like evreyone else. Thanks you")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
            }
            .padding()
            .background(Color.pink)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            
            ZStack {
                Color.gray.opacity(0.18)
                
                ProfileSwipePromo {
                    //
                }
            }
            .padding(.top, 18)
        }
        .foregroundColor(Color.black.opacity(0.75)) // va en herité touts les textes au dessus
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .background(Color.defaultBackground)
    }
}
