//
//  ContentView.swift
//  ShapesChallenge
//
//  Created by Michael Potter on 2/3/23.
//

import SwiftUI

struct ShapesChallenge: View {
    var body: some View {
        VStack
        {
            
            Circle()
                .size(width:100,height:100)
                .background(.blue)
            Rectangle()
                .trim(from: 0.5, to:1 )            .background(.green)
                .foregroundColor(.white)
            Ellipse()
                .stroke(.orange,lineWidth:5)
                .background(.brown)
            Capsule(style:.circular)
                .frame(width:300, height:100)
                .foregroundColor(.cyan)
            RoundedRectangle(cornerRadius:10)
                .frame(width:200,height:100)
                .foregroundColor(.red)
            mvp
            
            
                
            
        }
        .padding()
        
    }
}



extension ShapesChallenge
{
    var mvp : some View
    {
        VStack
        {
            Rectangle()
                .frame(width:100,height:100)
                .foregroundColor(.blue)
                .border(.black,width:20)
            RoundedRectangle(cornerRadius:10)
                .frame(width:300,height:50)
                .overlay{
                    Text("Click me")
                        .font(.custom("American Typewriter",size:35))
                        .foregroundColor(.white)
                }
                .foregroundColor(.blue)
            
            Path{ path in
                path.move(to: CGPoint(x:200,y:50))
                path.addLine(to:CGPoint(x:325,y:100))
                path.addLine(to:CGPoint(x:75,y:100))
                path.addLine(to:CGPoint(x:200,y:50))
            }
            .fill(Color.yellow)
            .frame(width:380,height:75)
        
            
        }
    }
}
struct ShapesChallenge_Previews: PreviewProvider {
    static var previews: some View {
        ShapesChallenge()
    }
}
