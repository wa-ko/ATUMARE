//
//  AtumaruMap.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI
import GoogleMaps

struct AtumaruMap: View {
    @State private var personName = ""
    
    var body: some View {
        ZStack {
            GoogleMapView()
            
            ZStack {
                Rectangle()
                    .frame(width: 300, height: 120)
                    .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.8))
                    .position(x: 200, y: 550)
                TextField("名前", text: $personName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100)
                    .position(x: 120, y: 525)
                TextField("コメント", text: $personName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 260)
                    .position(x: 200, y: 575)
            }
        }
    }
}

#Preview {
    AtumaruMap()
}
