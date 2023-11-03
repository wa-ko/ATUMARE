//
//  ContentView.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/09.
//

import SwiftUI

struct ContentView: View {
    
    enum Selection {
        case atumeru
        case button
        case atumaru
    }
    
    @State var selection: Selection = .atumeru
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                Button(action:{}){
                    Image(systemName: "plus")
                }
                .buttonStyle(circleButtonStyle())
                .padding(.bottom, 45)

                    TabView(selection: $selection) {
                        
                        PageOneView()// Viewファイル①
                            .tabItem {
                                Label("Page1", systemImage: "1.circle")
                            }
                            .tag(Selection.atumeru)
                        
                        ButtonView()   // Viewファイル②
                            .tabItem {
                                Label("Page2", systemImage: "2.circle")
                            }
                            .tag(Selection.button)
                        
                        
                        
                        PageTwoView()   // Viewファイル②
                        
                            .tabItem {
                                Label("Page3", systemImage: "3.circle")
                            }
                            .tag(Selection.atumaru)
                    }
                }
            }
        }
        .navigationTitle("ATUMARE")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}


struct PageOneView: View {
    var body: some View {
        ZStack {
            Color.yellow  // 背景色
            Text("Page1")
        } // ZStack

    
    } // body
} // View


struct ButtonView: View {
    var body: some View {
        ZStack {
            Color.pink    // 背景色
            Text("Page1")
        } // ZStack

    } // body
} // View

struct circleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .font(.system(size: 30, weight: .bold))
            .background(
                Circle()
                    .strokeBorder(Color.white, lineWidth: 3)
                    .background(
                        Circle()
                            .fill(Color.red)
                    )
                    .frame(width: 66, height: 66)
                    .shadow(color: Color.blue, radius: 8)
            )
            .scaleEffect(configuration.isPressed ? 1.1 : 1.0)
    }
}

struct PageTwoView: View {
    var body: some View {

        ZStack {
            Color.blue  // 背景色
            Text("Page1")
        } // ZStack

    } // body
} // View
