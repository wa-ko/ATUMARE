//
//  Package.swift
//  ATUMARE
//
//  Created by 若生優希 on 2023/10/21.
//
// Package.swift

// ...

dependencies: [
    .package(url: "https://github.com/apollographql/apollo-ios.git", .upToNextMajor(from: "0.45.0")),
    // 他の依存関係を追加することもできます
],

targets: [
    .target(
        name: "YourProjectName",
        dependencies: [
            .product(name: "Apollo", package: "apollo-ios"),
        ]),
    // ...
]
