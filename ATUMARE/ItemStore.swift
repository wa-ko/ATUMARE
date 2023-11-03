// ItemStore.swift

import Apollo
import Combine
import Foundation
import SwiftUI
import ATSUMAREAPI


class ItemStore: ObservableObject {
    @Published var items: [Item] = []

    init() {
        loadAllItems()
    }

    private func loadAllItems() {
        Network.shared.apollo.fetch(query: AllItemsQuery()) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let graphQLResult):
                    if let itemsData = graphQLResult.data?.allItems?.compactMap({ $0 }) {
                        self?.items = itemsData.map {
                            Item(capacity: $0.capacity ?? 0, // もしcapacityがnilの場合、デフォルト値を0に設定します
                                 departure: $0.departure ?? "", // 同様に、nilの場合のデフォルト値を設定
                                 destination: $0.destination ?? "",
                                 name: $0.name ?? "",
                                 time: $0.time ?? "",
                                 uuid: $0.uuid ?? "",
                                 passenger: $0.passenger ?? 0,
                                 passengers: $0.passengers?.compactMap {
                                    PassengerModel(namelist: $0?.namelist ?? "", comment: $0?.comment ?? "")
                                 } ?? [])
                        }
                    }
                    if let errors = graphQLResult.errors {
                        // エラーを処理します（例えば、アラートを表示するなど）
                        print(errors)
                    }
                case .failure(let error):
                    // フェッチに失敗した場合の処理
                    print(error)
                }
            }
        }

    }
}
