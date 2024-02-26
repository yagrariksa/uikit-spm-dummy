// swift-tools-version:5.7
//
//  Package.swift
//  a
//
//  Created by Daffa Yagrariksa on 26/02/24.
//

import Foundation
import PackageDescription

let package = Package(
    name: "a",
    platforms: [
            .iOS(.v16)
        ],
        products: [
            .library(
                name: "a",
                targets: ["a"])
        ],
        dependencies: [],
        targets: [
            .target(
                name: "a",
                path: "a/Module",
                sources: ["Classes"],
                resources: [
                    .process("Assets")
                ]
            )
        ]
)
