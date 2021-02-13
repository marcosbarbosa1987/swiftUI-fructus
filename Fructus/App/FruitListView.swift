//
//  FruitListView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 11/02/21.
//

import SwiftUI

struct FruitListView: View {
    
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit]
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }//: Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
            
    }
}
