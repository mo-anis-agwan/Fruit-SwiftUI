//
//   FruitDetailView.swift
//  Fruity
//
//  Created by Anis on 27/04/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK:- Properties
    var fruit: Fruit
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20, content: {
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                    } //: Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }) //: Vstack
            } //: ScrollView
        } //: NavigationView
    }
}

    //MARK:- Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 12 mini")
    }
}
