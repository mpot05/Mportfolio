//
//  Sentence.swift
//  WordPlay
//
//  Created by Michael Potter on 9/20/23.
//

import Foundation
import SwiftUI

struct Sentence: View {
    @Binding var Noun: String
    @Binding var Verb: String
    @Binding var Adjective: String
    
    var body: some View{
        
        VStack{
//            Text("The \(Adjective) \(Noun) wanted to \(Verb)")
//                .font(.system(size:50))
            HStack{
                Text("The")
                Text("")
                    .foregroundColor(.yellow)
                Text("")
                    .foregroundColor(.red)
                Text("wanted to")
                Text("")
                    .foregroundColor(.green)
            }
        }
    }
}
