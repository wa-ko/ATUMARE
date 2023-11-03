//
//  Itemsi.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/11/04.
//

import Foundation
import SwiftUI

struct ItemsListView: View {
    @ObservedObject var store = ItemStore()

    var body: some View {
        NavigationView {
            List(store.items) { item in
                VStack(alignment: .leading) {
                    Text(item.name).font(.headline)
                    Text("出発地: \(item.departure)")
                    Text("目的地: \(item.destination)")
                    Text("時間: \(item.time)")
                    Text("定員: \(item.capacity)")
                    Text("乗客数: \(item.passenger)")
                    ForEach(item.passengers, id: \.namelist) { passenger in
                        VStack(alignment: .leading) {
                            Text("乗客: \(passenger.namelist)")
                            Text("コメント: \(passenger.comment)")
                        }
                    }
                }
            }
            .navigationTitle("全てのアイテム")
        }
    }
}



// プレビュー用

struct ItemsListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsListView()
    }
}
