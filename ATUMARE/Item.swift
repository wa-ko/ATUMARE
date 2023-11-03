//
//  Item.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/11/04.
//

import Foundation

struct Item: Codable, Identifiable {
    var id: String { uuid }
    let capacity: Int
    let departure: String
    let destination: String
    let name: String
    let time: String
    let uuid: String
    let passenger: Int
    let passengers: [PassengerModel]
}

struct PassengerModel: Codable {
    let namelist: String
    let comment: String
}
