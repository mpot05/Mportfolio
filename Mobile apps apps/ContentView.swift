//
//  ContentView.swift
//  Mobile apps apps
//
//  Created by Michael Potter on 1/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
                Form{
                    Section{
                        NavigationLink("Calculator app ", destination: CalculatorView())
                    }
                    Section{
                        NavigationLink("ShapesChallenge ", destination: ShapesChallenge())
                    }
                    Section{
                        NavigationLink("Instagram Page", destination: Instagram())
                    }
                    Section{
                        NavigationLink("StackViews", destination: StackViewsView())
                    }
                    Section{
                        NavigationLink("ImageChallenge", destination: ImageChallengeView())
                    }
                    Section{
                        NavigationLink("WordPlayView", destination: WordPlayView())
                    }
                    Section{
                        NavigationLink("Rock Paper Scissors", destination: RockPaperScissorsView())
                    }
                    Section{
                        NavigationLink("Quiz App", destination: QuizAppView())
                    }
                    Section{
                        NavigationLink("Cookie Clicker 🍪", destination: CookieClickerView())
                    }
                }
                .foregroundStyle(.blue)
                .navigationTitle("MPortfolio")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
