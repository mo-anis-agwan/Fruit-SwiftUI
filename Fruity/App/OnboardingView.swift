//
//  OnboardingView.swift
//  Fruity
//
//  Created by Anis on 27/04/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {
                item in
                FruitCardView(fruit: item)
            } //: Loop
        } //: Tab View
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

    //MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 12 mini")
    }
}
