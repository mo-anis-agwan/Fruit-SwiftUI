//
//  NutrientsView.swift
//  Fruity
//
//  Created by Anis on 27/04/21.
//

import SwiftUI

struct NutrientsView: View {
    //MARK:- Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK:- Body
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors.first)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HStack
                } //: ForEach
            }
        } //: GroupBox
    }
}

        //MARK:- Preview
struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
            
    }
}
