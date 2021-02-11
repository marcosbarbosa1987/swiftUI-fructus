//
//  OnboardingView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 10/02/21.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit]
    
    // MARK: - Body
    
    var body: some View {
        
        TabView {
            ForEach(fruits) { item in
                FuitCardView(fruit: item)
            }//: Loop
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: [fruitsData[0]])
    }
}
