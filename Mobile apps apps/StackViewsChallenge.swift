//
//  ContentView.swift
//  StackViewsChallenge
//
//  Created by Michael Potter on 2/9/23.
//

import SwiftUI

struct StackViewsView: View
{
    @Environment(\.colorScheme) var colorScheme
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Spacer()
                HStack
                {
                    Circle()
                        .overlay
                        {
                            Text("A/C")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("+/-")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("%")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("÷")
                                .foregroundColor(.black)
                                .font(.system(size:50))
                        }
                }
                HStack
                {
                    Circle()
                        .overlay
                        {
                            Text("7")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("8")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("9")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("x")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                }
                HStack
                {
                    Circle()
                        .overlay
                        {
                            Text("4")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("5")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("6")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("-")
                                .foregroundColor(.black)
                                .font(.system(size:40))
                        }
                }
                HStack
                {
                    Circle()
                        .overlay
                        {
                            Text("1")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("2")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("3")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("+")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                }
                HStack
                {
                    RoundedRectangle(cornerRadius:500)
                        .frame(width:175,height:80)
                        .overlay
                        {
                            HStack{
                                Text("     ")
                                Text("0")
                                    .foregroundColor(.black)
                                    .font(.system(size:30))
                                Spacer()
                            }
                        }
                    Circle()
                        .overlay
                        {
                            Text(".")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                    Circle()
                        .overlay
                        {
                            Text("=")
                                .foregroundColor(.black)
                                .font(.system(size:30))
                        }
                }
            }.foregroundColor(.orange)
        }
        .padding()
    }
    
    
    
}


struct StackViewsView_Previews: PreviewProvider {
    static var previews: some View {
        StackViewsView()
        
    }
}
