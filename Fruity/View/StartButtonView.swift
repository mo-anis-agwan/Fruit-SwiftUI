//
//  StartButtonView.swift
//  Fruity
//
//  Created by Anis on 26/04/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK - Properties
    @AppStorage("IsOnboarding") var IsOnboarding: Bool?
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            IsOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }) //: Button
        .accentColor(.white)
    }
}

    //MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
