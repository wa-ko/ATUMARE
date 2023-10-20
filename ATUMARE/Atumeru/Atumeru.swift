//
//  Atumeru.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI
import Foundation

struct Atumeru: View {
    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0
        let customColor = Color(red: red, green: green, blue: blue)
        @State var name = ""
        @State var isShowingView: Bool = false

        return ZStack {
            Color(customColor)
                .ignoresSafeArea()
            
            Rectangle()
                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                .frame(width: 352, height: 590)
                .cornerRadius(30)
            
            VStack {
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
                    Button {
                        isShowingView.toggle()
                    } label: {
                        Text("こちらをタップ")
                    }
                    .sheet(isPresented: $isShowingView) {
                        AtumeruWeiting()
                    }
                }
            }
        }
    }
}

#Preview {
    Atumeru()
}
