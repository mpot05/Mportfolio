//
//  Adjective.swift
//  WordPlay
//
//  Created by Michael Potter on 9/20/23.
//

import Foundation
import SwiftUI

struct Adjective: View {
    @Binding var Noun: String
    @Binding var Verb: String
    @State var Adjective: String
    var body: some View{
        VStack{
            TextField("Please enter an adjective", text: $Adjective)
                .disableAutocorrection(true)
                .frame(width:200)
                .multilineTextAlignment(.center)
                .background(Color(.systemGray6))
                .foregroundColor(.yellow)
            NavigationLink("To next page", destination: Sentence(Noun: $Noun, Verb: $Verb, Adjective: $Adjective))
        }
    }
}
