//
//  ContentView.swift
//  ImageChallenge
//
//  Created by Michael Potter on 2/10/23.
//

import SwiftUI

struct ImageChallengeView: View
{
    var body: some View
    {
        ZStack{
            ImageChallengePictureView()
            VStack {
                
                Text("N")
                HStack{
                    Image(systemName:"arrow.up.left")
                    Image(systemName:"arrow.up")
                    Image(systemName:"arrow.up.right")
                }
                ZStack{
                    Text("W                  ")
                    Text("                 E")
                    Image(systemName: "globe")
                        .imageScale(.large)
                    HStack
                    {
                        Text("")
                        Image(systemName:"arrow.left")
                        Text("  ")
                        Image(systemName:"arrow.right")
                        Text("")
                    }
                }
                HStack{
                    
                    Image(systemName:"arrow.down.left")
                    Image(systemName:"arrow.down")
                    Image(systemName:"arrow.down.right")
                    
                }
                Text("S")
                
                
            }
            Text("\n\n\n\n\n\nSW                           ")
                .font(.system(size:10))
            Text("\n\n\n\n\n\n                            SE")
                .font(.system(size:10))
            Text("NW                           \n\n\n\n\n\n")
                .font(.system(size:10))
            Text("                            NE\n\n\n\n\n\n")
                .font(.system(size:10))
            .padding()
        }
    }
}

struct ImageChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengeView()
    }
}
