//
//  ContentView.swift
//  Buttons
//
//  Created by Michael Potter on 2/8/23.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            mvp
        }
        .padding()
    }
}
extension ButtonsView
{
    var mvp : some View
    {
        VStack
        {
            
            
            
        }
    }
}
struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
