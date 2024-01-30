//
//  RockPaperScissorsView.swift
//  Rock Paper Scissors
//
//  Created by Michael Potter on 9/27/23.
//

import SwiftUI

struct RockPaperScissorsView: View {
    
    @State var game: Bool = true
    @State var cpu: Int = 0
    @State var pla: Int = 0
    var body: some View {
        VStack {
//            Spacer()
//            Spacer()
            if game {
                HStack{
                    Button(action: {
                        game.toggle()
                        cpu = Int.random(in: 0..<3)
                        pla = 0
                    })
                    {
                        Text("🪨")
                    }
                    Button(action: {
                        game.toggle()
                        cpu = Int.random(in: 0..<3)
                        pla = 1
                    })
                    {
                        Text("📃")
                    }
                    Button(action: {
                        game.toggle()
                        cpu = Int.random(in: 0..<3)
                        pla = 2
                    })
                    {
                        Text("✂️")
                    }
                    
                    
                    
                }
                
            }
            else {
                HStack {
//                    Spacer()
                    if pla == 0 {
                        Text("🪨")
                    }
                    else if pla == 1 {
                        Text("📃")
                    }
                    else {
                        Text("✂️")
                    }
                    
//                    Spacer()
                    
                    if cpu == 0 {
                        Text("🪨")
                    }
                    else if cpu == 1 {
                        Text("📃")
                    }
                    else {
                        Text("✂️")
                    }
                    
//                    Spacer()
                }
                
                
            }
//            Spacer()
            if game {
                Text("Click an object")
            }
            else {
                if (pla == 0) && (cpu == 0) {
                    Text("Tied")
                }
                else if (pla == 0) && (cpu == 1) {
                    Text("Computer won")
                }
                else if (pla == 0) && (cpu == 2) {
                    Text("Player won")
                }
                else if (pla == 1) && (cpu == 0) {
                    Text("Player won")
                }
                else if (pla == 1) && (cpu == 1) {
                    Text("Tied")
                }
                else if (pla == 1) && (cpu == 2) {
                    Text("Computer won")
                }
                else if (pla == 2) && (cpu == 0) {
                    Text("Computer won")
                }
                else if (pla == 2) && (cpu == 1) {
                    Text("Player won")
                }
                else if (pla == 2) && (cpu == 2) {
                    Text("Tied")
                }
                
            }
//            Spacer()
            Button(action: {
                if game == false{
                    game.toggle()
                }
            })
            {
                Text("Reset")
            }
//            Spacer()
//            Spacer()
        }
        
    }
}

struct RockPaperScissorsView_Previews: PreviewProvider {
    static var previews: some View {
        RockPaperScissorsView()
    }
}
