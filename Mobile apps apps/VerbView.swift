//
//  VerbView.swift
//  WordPlay
//
//  Created by Michael Potter on 9/19/23.
//

import Foundation
import SwiftUI

struct VerbView: View {
//
    @Binding var Noun: String
    @State var Verb: String
    var body: some View {
//        Text(Noun)
//        Text(Verb)
        TextField("Please enter a verb", text: $Verb)
            .disableAutocorrection(true)
            .frame(width:200)
            .multilineTextAlignment(.center)
            .background(Color(.systemGray6))
            .foregroundColor(.green)
        NavigationLink("To next page", destination: Adjective(Noun: $Noun, Verb: $Verb, Adjective: ""))
    }
}

//struct VerbView_Previews: PreviewProvider {
//    @State static var Noun: String = ""
//    static var previews: some View {
//        VerbView(Noun: $Noun, verb: $Verb)
//    }
//}
