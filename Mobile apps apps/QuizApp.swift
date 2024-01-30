//
//  ContentView.swift
//  Quiz app
//
//  Created by Michael Potter on 3/10/23.
//

import SwiftUI

struct QuizAppView: View
{
    @State var score = 0
    @State var correct = false
    @State var wrong = false
    @State var QuestAnswered = false
    @State var Option1 = ["19","Cat","21"]
    @State var Option2 = ["21","Dog","I can't do math"]
    @State var Option3 = ["28","Dinosaur","0"]
    @State var Option4 = ["32","Roomba","2^12"]
    
    @State var Questions = ["Question 1: What is 3 times 7?","Question 2: Which is the best animal?","Question 3: If 3x - y = 12, what is the value of (8^x/2^y)*0 ?"]
    @State var Questionnum = 0
    @State var Question = ""
    @State var emoji1 = ""
    @State var emoji2 = ""
    @State var emoji3 = ""
    @State var emoji4 = ""
    @State var name = ""
//"❌"
//"✅"
    var body: some View
    {
        
        
        VStack
        {
            TextField("Enter your name",text: $name)
                .multilineTextAlignment(.center)
                .padding(.bottom,25)
                .textFieldStyle(.roundedBorder)
            Text("\(Questions[Questionnum])")
            
            Button("\(Option1[Questionnum]) \(emoji1)",action:{
                if (Questionnum==0){
                    correct=true
                    QuestAnswered = true
                    emoji1 =  "✅"
                    if emoji3 != "❌" && emoji2 != "❌" && emoji4 != "❌"{
                        calcScore()
                    }
                    
                }
                if (Questionnum==1){
                    wrong=true
                    emoji1="❌"
                }
                if (Questionnum==2){
                    wrong=true
                    emoji1="❌"
                }
            })
            .frame(width:200)
            .border(.red)
            .background(.yellow)
            .clipShape(Rectangle())
            .padding()
            .alert("Nice job \(name)", isPresented: $correct){
                Button("Ok",role: .cancel) {}
            }
            .alert("Almost there \(name)", isPresented: $wrong){
                Button("Ok",role: .cancel) {wrong=false}
            }
            
            Button("\(Option2[Questionnum]) \(emoji2)",action:{
                if (Questionnum==0){
                    wrong=true
                    emoji2 = "❌"
                }
                if (Questionnum==1){
                    correct=true
                    emoji2="✅"
                    QuestAnswered=true
                    if emoji1 != "❌" && emoji3 != "❌" && emoji4 != "❌"{
                        calcScore()
                    }
                    
                }
                if (Questionnum==2){
                    wrong=true
                    emoji2="❌"
                }
            })
            .frame(width:200)
            .border(.red)
            .background(.yellow)
            .clipShape(Rectangle())
            .padding()
            .alert("Nice job \(name)", isPresented: $correct){
                Button("Ok",role: .cancel) {}
            }
            .alert("Almost there \(name)", isPresented: $wrong){
                Button("Ok",role: .cancel) {wrong=false}
            }
            Button("\(Option3[Questionnum]) \(emoji3)",action:{
                if (Questionnum==0){
                    wrong=true
                    emoji3 = "❌"
                }
                if (Questionnum==1){
                    wrong=true
                    emoji3="❌"
                }
                if (Questionnum==2){
                    correct=true
                    emoji3="✅"
                    QuestAnswered=true
                    if emoji1 != "❌" && emoji2 != "❌" && emoji4 != "❌"{
                        calcScore()
                    }
                }
            })
            .frame(width:200)
            .border(.red)
            .background(.yellow)
            .clipShape(Rectangle())
            .padding()
            .alert("Nice job \(name)", isPresented: $correct){
                Button("Ok",role: .cancel) {}
            }
            .alert("Almost there \(name)", isPresented: $wrong){
                Button("Ok",role: .cancel) {wrong=false}
            }
            Button("\(Option4[Questionnum]) \(emoji4)",action:{
                if (Questionnum==0){
                    wrong=true
                    emoji4 = "❌"
                }
                if (Questionnum==1){
                    wrong=true
                    emoji4="❌"
                }
                if (Questionnum==2){
                    wrong=true
                    emoji4="❌"
                }
            })
            .frame(width:200)
            .border(.red)
            .background(.yellow)
            .clipShape(Rectangle())
            .padding()
            .alert("Nice job \(name)", isPresented: $correct){
                Button("Ok",role: .cancel) {}
            }
            .alert("Almost there \(name)", isPresented: $wrong){
                Button("Ok",role: .cancel) {wrong=false}
            }
            
            
            Button("Next Question",action:{
                nextQuest()
            })
            .padding(.top, 80.0)
            .padding(.bottom, 80.0)
            
            
            if Questionnum==2 && QuestAnswered==true{
                Button("Reset",action:{
                    resetQuest()
                })
            }
            if Questionnum==2 && QuestAnswered==true{
                Text("\(score)/3")
            }
        }
        .padding()
    }
    
    func nextQuest(){
        if QuestAnswered==true{
            if Questionnum==2{
                Questionnum=2
            }
            else{
                Questionnum+=1
                emoji1=""
                emoji2=""
                emoji3=""
                emoji4=""
                correct=false
                wrong=false
                QuestAnswered=false
            }
            
        }
    }
    func resetQuest(){
        Questionnum=0
        emoji1=""
        emoji2=""
        emoji3=""
        emoji4=""
        correct=false
        wrong=false
        QuestAnswered=false
        score = 0
    }
    func calcScore(){
        
        score += 1
    }
}

struct QuizAppView_Previews: PreviewProvider {
    static var previews: some View {
        QuizAppView()
    }
}
