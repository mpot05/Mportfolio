//
//  WordPlayView.swift
//  WordPlay
//
//  Created by Michael Potter on 9/19/23.
//

import SwiftUI

struct WordPlayView: View {
    @State var Noun: String = ""
    var body: some View {
        NavigationView{
            VStack
            {
                Text("Hello")
                TextField("Please enter a Noun", text: $Noun)
                    .disableAutocorrection(true)
                    .frame(width:200)
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGray6))
                    .foregroundColor(.red)
                NavigationLink("To next page", destination: VerbView(Noun: $Noun, Verb: ""))
//                NavigationLink(destination: VerbView(Noun: $Noun, Verb: ""))
//                {
//                    Text("T")
//                }
            }
        }
        
        
    }
}

struct WordPlayView_Previews: PreviewProvider {
    static var previews: some View {
        WordPlayView(Noun: "")
    }
}
