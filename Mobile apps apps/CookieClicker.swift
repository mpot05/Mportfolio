//
//  ContentView.swift
//  Something
//
//  Created by Michael Potter on 5/25/23.
//

import SwiftUI

struct CookieClickerView: View {
    @State var rps = 0
    @State var backG = Color.white
    @State var cookies = 0
    @State var cps = 1
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action: {
                    var ran = Int.random(in: 1..<11)
                    if(ran==1){
                        backG = .red
                    }
                    if(ran==2){
                        backG = .blue
                    }
                    if(ran==3){
                        backG = .white
                    }
                    if(ran==4){
                        backG = .purple
                    }
                    if(ran==5){
                        backG = .green
                    }
                    if(ran==6){
                        backG = .brown
                    }
                    if(ran==7){
                        backG = .gray
                    }
                    if(ran==8){
                        backG = .indigo
                    }
                    if(ran==9){
                        backG = .orange
                    }
                    if(ran==10){
                        backG = .pink
                    }
                }){
                    Text("..")
                        .font(.system(size:15))
                        .foregroundColor(.black)
                }
            }
            
            Text("Things")
                .font(.system(size:40))
                .multilineTextAlignment(.center)
            
            Button(action: {
                rps = Int.random(in:1..<4)
            }){
                Text("Rock Paper Scissors")
                    .font(.system(size:25))
                    .foregroundColor(.black)
            }
            .padding()
            if(rps==1){
                Text("🪨")
                    .font(.system(size:50))
            }
            else if(rps==2){
                Text("📃")
                    .font(.system(size:50))
            }
            else if(rps==3){
                Text("✂️")
                    .font(.system(size:50))
            }
            else{
                Text(" ")
                    .font(.system(size:50))
            }
            
            Text("Cookie Clicker")
            Text("")
            Text("\(cookies)")
            Button(action: {
                cookies+=cps
            }){
                Text("🍪")
                    .font(.system(size:100))
            }
            Button(action: {
                if(cookies>=20){
                    cookies-=20
                    cps+=1
                }
            }){
                Text("🏭\n\n\(cps) cps")
                    .font(.system(size:50))
                    .foregroundColor(.black)
            }
            
           Spacer()
        }
        .padding()
        .background(backG)
    }
}

struct CookieClickerView_Previews: PreviewProvider {
    static var previews: some View {
        CookieClickerView()
    }
}
