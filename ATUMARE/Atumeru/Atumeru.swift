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

    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0
        let customColor = Color(red: red, green: green, blue: blue)

        NavigationStack {
            ZStack {
                Color(customColor)
                    .ignoresSafeArea()

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
        }
    }
}

#Preview {
    Atumeru()
}
