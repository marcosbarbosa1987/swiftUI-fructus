//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 13/02/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    
    var titleLabel: String
    var descriptionLabel: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 8)
            HStack {
                Text(titleLabel).foregroundColor(Color.gray)
                Spacer()
                if (descriptionLabel != nil) {
                    Text(descriptionLabel!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                   EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview

struct SettngsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(titleLabel: "Developer", descriptionLabel: "Marcos Barbosa")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(titleLabel: "Website", descriptionLabel: nil, linkLabel: "Marcos developer site", linkDestination: "marcosbarbosa.dev")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
