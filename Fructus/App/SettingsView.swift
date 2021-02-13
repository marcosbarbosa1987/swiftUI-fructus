//
//  SettingsView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 13/02/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20){
                    
                    // MARK: - Section One
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 8)
                        HStack(alignment: .center, spacing: 8) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section Two
                    
                    // MARK: - Section Three
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(titleLabel: "Developer", descriptionLabel: "Marcos Barbosa")
                        SettingsRowView(titleLabel: "Compatibility", descriptionLabel: "iOS 14")
                        SettingsRowView(titleLabel: "Website", linkLabel: "Marcos website", linkDestination: "marcosbarbosa.dev")
                        SettingsRowView(titleLabel: "Linkedin", linkLabel: "Marcos profile", linkDestination: "www.linkedin.com/in/marcos-barbosa-81898a115/")
                        SettingsRowView(titleLabel: "SwiftUI", descriptionLabel: "2.0")
                        SettingsRowView(titleLabel: "Version", descriptionLabel: "1.1.0")
                    }
                    
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            })//: ScrollView
        }//: Navigation
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
