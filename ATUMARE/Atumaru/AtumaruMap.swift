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
    @State private var comment = ""
    @State private var isActive_car = false
    @State private var isActive_center = false
    @State private var isActive_walker = false
    
    var body: some View {
        NavigationStack {
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
                    TextField("コメント", text: $comment)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 260)
                        .position(x: 200, y: 575)
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
                                            .navigationDestination(isPresented: $isActive_car, destination: {
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
    AtumaruMap()
}
