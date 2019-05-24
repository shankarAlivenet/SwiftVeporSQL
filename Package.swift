// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftVeporSQL",
    products: [
        .library(name: "SwiftVeporSQL", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        // 🐬 Pure Swift MySQL client built on non-blocking, event-driven sockets.
        .package(url: "https://github.com/vapor/mysql.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "MySQL", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

