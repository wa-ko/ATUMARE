//
//  atumaru.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI

struct Atumaru: View {
    var body: some View {
        let red: Double = 197 / 255.0
        let green: Double = 198 / 255.0
        let blue: Double = 182 / 255.0
        let customColor = Color(red: red, green: green, blue: blue)
        
        ZStack {
            Color(customColor)
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack {
                    ForEach(0..<100, id: \.self) { _ in
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 298, height: 52)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(50)

                            HStack(spacing: 70) {
                                Text("名前")
                                    .foregroundColor(.black)
                                    .font(.system(size: 17))
                                Text("11:30時発")
                                Text("2/4")
                            }
                        }
                    }
                }
            }
            .frame(height: 510)
        }
    }
}

#Preview {
    Atumaru()
}
