//
//  SwiftUIView.swift
//  ImageChallenge
//
//  Created by Michael Potter on 2/10/23.
//

import SwiftUI

struct ImageChallengePictureView: View {
    var body: some View {
        Image("canyon")
            .clipShape(Circle())
            
    }
}

struct ImageChallengePictureView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengePictureView()
    }
}
