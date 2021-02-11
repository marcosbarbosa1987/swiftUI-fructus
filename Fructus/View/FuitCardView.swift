//
//  FuitCardView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 10/02/21.
//

import SwiftUI

struct FuitCardView: View {
    
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Fruit: Headline
                Text("Blueberries are sweet, nutritious and wildly popular fruit all world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button: Start
                StartButtonView()
                
            } //: VStack
        } //: ZStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDart")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        .padding(.all, 16)
    }
}

// MARK: - Preview

struct FuitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FuitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
