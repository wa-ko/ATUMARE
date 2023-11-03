//
//  Atumeru.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI

struct Atumeru: View {
    @State private var name = ""
    @State private var departureName = ""
    @State private var destinationName = ""
    @State private var date = Date()
    @State private var selectedValue = 1
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
                    Text("設定画面")
                        .padding(.bottom, 30)
                        .font(.title3)

                    VStack(spacing: 0) {
                        Text("名前")
                            .padding(.bottom, 0)
                        TextField("あなたの名前", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 200)
                            .padding()
                    }
                    
                    VStack(spacing: 15) {
                        Text("出発地")
                            .padding(.bottom, 0)
                        TextField("入力してください", text: $departureName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 200)
                    }

                    VStack(spacing: 15) {
                        Text("目的地")
                            .padding(.top, 10)
                        TextField("入力してください", text: $departureName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 200)
                        
                    }

                    VStack(spacing: 15) {
                        Text("出発時間")
                            .padding(.top, 10)
                        DatePicker("", selection: $date, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }

                    VStack(spacing: 15) {
                        Text("定員 (自身を除く)")
                            .padding(.top, 10)
                        Picker("人数を選択", selection: $selectedValue) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                        }
                    }
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
    Atumeru()
}
