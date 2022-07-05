//
//  CircularImageView.swift
//  FruitsWidgetExample
//
//  Created by Erge Gevher Akova on 6.07.2022.
//

import SwiftUI

struct CircularImageView: View {
    
    var image: Image
    
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.purple, lineWidth: 5)).shadow(color: .purple, radius: 10, x: 5, y: 5 )
        
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("strawberry"))
    }
}
