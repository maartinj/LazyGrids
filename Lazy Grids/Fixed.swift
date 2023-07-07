//
//  Fixed.swift
//  Lazy Grids
//
//  Created by Stewart Lynch on 2021-02-06.
//

import SwiftUI

struct Fixed: View {
    let colors:[Color]
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(1..<401) { index in
                    colors[index % colors.count]
                        .overlay(
                            Text("\(index)")
                        )
                        .frame(height: 100)
                }
            }
        }
        .embedInNavigation()
    }
}

struct Fixed_Previews: PreviewProvider {
    static var previews: some View {
        Fixed(colors: [.red, .orange, .yellow, .green, .blue, .purple, .gray])
    }
}
