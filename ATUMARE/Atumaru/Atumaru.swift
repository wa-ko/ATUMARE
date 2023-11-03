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
    @State private var isActive_list = false
    @State private var isActive_car = false
    @State private var isActive_center = false
    @State private var isActive_walker = false
    
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
                    
                    ScrollView {
                        LazyVStack {
                            ForEach(items) { item in
                                Button(action: {
                                    isActive_list = true
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
                    }.padding()
                }.navigationDestination(isPresented: $isActive_list, destination: {
                    AtumaruMap()
                })
                .navigationBarTitle("ATSUMARE", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack(spacing: -10) {
                            Button(action: {
                                isActive_car = true
                                    }) {
                                        VStack(spacing: -5) {
                                        Image("directions_car-directions_car_symbol")
                                        .resizable()
                                        .foregroundStyle(Color.black)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35, height: 45)
                                        .padding(.top, 30)
                                            
                                        Text("ATSUMERU")
                                        .foregroundStyle(Color.black)
                                        .font(.system(size: 15))
                                        }
                                    }.navigationDestination(isPresented: $isActive_car, destination: {
                                        Atumeru()
                                    })
                            
                            Button(action: {
                                isActive_center = true
                                    }) {
                                        ZStack() {
                                        Image("red_round")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 90)
                                        .padding(.top, -40)
                                            
                                        Circle()
                                        .fill(Color.black)
                                        .frame(width: 35, height: 80)
                                        .padding(.top, -35)
                                        .overlay(
                                            Circle()
                                            .stroke      (Color.black, lineWidth: 4)
                                            .frame(width: 60, height: 50)
                                            .padding(.top, -35)
                                        )
                                        }
                                    }
                            
                            Button(action: {
                                isActive_walker = true
                                    }) {
                                        VStack(spacing: 5) {
                                        Image("hail-hail_symbol")
                                        .resizable()
                                        .foregroundStyle(Color.black)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35, height: 35)
                                        .padding(.top, 30)
                                            
                                        Text("ATSUMARU")
                                        .font(.system(size: 15))
                                        .foregroundStyle(Color.black)
                                        }
                                    }
                        }
                    }
                }
            }
    }
}

#Preview {
    Atumaru()
}
