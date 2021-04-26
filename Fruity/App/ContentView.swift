//
//  ContentView.swift
//  Fruity
//
//  Created by Anis on 26/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: Navigation
    }
}
    //MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 12 mini")
    }
}
