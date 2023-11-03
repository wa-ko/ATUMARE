//
//  AtumeruWeiting.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI
import Foundation

struct AtumeruWeiting: View {
    @State private var isActive_list = false
    @State private var isActive_car = false
    @State private var isActive_center = false
    @State private var isActive_walker = false
    
    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0

        let customColor = Color(red: red, green: green, blue: blue)
        
        NavigationStack {
            ZStack {
                Color(customColor)
                
                Rectangle()
                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .frame(width: 352, height: 590)
                    .cornerRadius(30)

                VStack {
                    Text("待機中...")
                        .font(.title3)
                    ScrollView {
                        LazyVStack {
                            ForEach(0..<100, id: \.self)
                            { _ in
                            Button(action: {
                                isActive_list = true
                            }) {
                                    ZStack {
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 298, height: 52)
                                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        .cornerRadius(50)

                                        HStack {
                                            Text("名前")
                                            .foregroundColor(.black)
                                            .font(.system(size: 17))
                                            Text("~までお願いします。")
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .frame(height: 510)
                }
            }
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
                                }
                        
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
                                .navigationDestination(isPresented: $isActive_walker, destination: {
                                    Atumaru()
                                })
                    }
                }
            }
        }
    }
}

#Preview {
    AtumeruWeiting()
}
