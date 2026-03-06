// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SQLiteMigrationManager.swift",
    products: [
        .library(name: "SQLiteMigrationManager", targets: ["SQLiteMigrationManager"])
    ],
    dependencies: [
        .package(url: "https://github.com/happy-health/SQLite.swift.git", .exact("0.13.3-gh"))
    ],
    targets: [
        .target(
            name: "SQLiteMigrationManager",
            dependencies: ["SQLite"],
            path: "Sources",
            sources: ["SQLiteMigrationManager.swift"]),
        .testTarget(
            name: "SQLiteMigrationManagerTests",
            dependencies: ["SQLiteMigrationManager"],
            path: "Tests",
            sources: ["SQLiteMigrationManagerTests.swift"])
    ])
