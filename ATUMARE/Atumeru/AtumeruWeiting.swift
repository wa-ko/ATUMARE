//
//  AtumeruWeiting.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI
import Foundation

struct AtumeruWeiting: View {
    @State private var isActive = false
    
    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0

        let customColor = Color(red: red, green: green, blue: blue)

        return ZStack {
            Color(customColor)
                .ignoresSafeArea()
            
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
                            isActive = true
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
    }
}

#Preview {
    AtumeruWeiting()
}
