//
//  SettingsView.swift
//  Fruity
//
//  Created by Anis on 27/04/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20) {
                    //MARK:- Section 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fruity", labelImage: "info.circle"),
                        content: {
                            Divider().padding(.horizontal, 4)
                            HStack(alignment: .center, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                
                                Text("Mostly fruits are naturally low in fats, sodium, and calories. None have cholestrol. Fruits are souces of many essential nrutrients, inlcuding potassium, dietary fiber, vitamins, and much more.")
                                    .font(.footnote)
                            })
                        })
                    
                    
                    //MARK:- Section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"),
                        content: {
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you can restart the app by toggle the switch in this. It starts the app process and will show welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minWidth: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            })
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        })
                    
                    
                    //MARK:- Section 3
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"),
                             content: {
                                SettingsRowView(name: "Developer", content: "Anis Agwan")
                                SettingsRowView(name: "Compatibility", content: "iOS 14")
                                SettingsRowView(name: "Twitter", linkLabel: "@idiot_alderson", linkDestination: "https://twitter.com/idiot_alderson")
                                SettingsRowView(name: "SwiftUI", content: "2.0")
                                SettingsRowView(name: "Version", content: "1.0.0")
                                })
                    } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

//MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 mini")
    }
}
