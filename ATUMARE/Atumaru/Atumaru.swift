//
//  atumaru.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
}

struct Atumaru: View {
    @State private var isNavigationActive = false
    
    let items: [Item] = [
            Item(name: "佐藤"),
            Item(name: "高橋"),
            Item(name: "鈴木"),
        ]
    
    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0
        let customColor = Color(red: red, green: green, blue: blue)
        
        NavigationStack {
            ZStack {
                Color(customColor)
                    .ignoresSafeArea()
                
                ScrollView {
                    LazyVStack {
                        ForEach(items) { item in
                            Button(action: {
                                isNavigationActive = true
                            }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 298, height: 52)
                                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        .cornerRadius(50)

                                    HStack(spacing: 70) {
                                        Text(item.name)
                                            .foregroundColor(.black)
                                            .font(.system(size: 17))
                                        Text("11:30時発")
                                        Text("2/4")
                                    }
                                }
                            }
                        }
                    }
                }.frame(height: 510)
            }.navigationDestination(isPresented: $isNavigationActive, destination: {
                AtumaruMap()
            })
        }
    }
}

#Preview {
    Atumaru()
}
