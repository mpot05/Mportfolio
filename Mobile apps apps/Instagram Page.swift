//
//  ContentView.swift
//  InstagramProfileApp
//
//  Created by Michael Potter on 9/19/23.
//

import SwiftUI

struct Instagram : View {
    var body: some View {
        VStack(spacing:4) {
            HStack{
                Spacer()
                Text("     Profile")
                    .font(.system(size:25))
                Spacer()
                Image(systemName:"line.3.horizontal")
                    .bold()
            }
            HStack{
                Image("Grabias baby")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:120,height:120)
                Spacer()
                Text("    5\nPosts")
                Spacer()
                Text("       8\nFollowers")
                Spacer()
                Text("       3\nFollowing")
                
            }
            HStack{
                Text("   Ryan Grabias")
                    .bold()
                Spacer()
                
            }
            HStack{
                Text("Built Ford Tough")
                Spacer()
                
            }
            RoundedRectangle(cornerRadius:10)
                .stroke(.gray,lineWidth:2)
                .frame(height:40)
                .foregroundColor(.white)
                .overlay(
                    Text("Edit Profile")
                        .bold()
                )
            
            VStack(spacing:2){
                HStack(spacing:2){
                    Image("Grabo coach")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("Grabo run")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("Grabo")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                HStack(spacing:2){
                    Image("Grabo LEG")
                        .resizable()
//                        .scaledToFit()
                        .frame(width: 150, height: 150)
//                        .clipped()
                    Image("Grabo pigeon")
                        .resizable()
                        .frame(width:150, height:150)
                    Rectangle()
                        .frame(width:150,height:150)
                        .foregroundColor(.white)
                    
                }
            }
            .padding()
                Spacer()
                
        }
        .padding()
    }
}

struct Instagram_Previews: PreviewProvider {
    static var previews: some View {
        Instagram()
    }
}
