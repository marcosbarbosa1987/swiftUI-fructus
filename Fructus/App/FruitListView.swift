//
//  FruitListView.swift
//  Fructus
//
//  Created by Marcos Barbosa on 11/02/21.
//

import SwiftUI

struct FruitListView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit]
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 8)
                }
            }
            .navigationTitle("Fruits")
        }//: Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
