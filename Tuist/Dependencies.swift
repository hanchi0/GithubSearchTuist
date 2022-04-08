import ProjectDescription

let dependencies = Dependencies(
    carthage: [
    ],
    swiftPackageManager: [
        .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/AliSoftware/Reusable.git", requirement: .upToNextMajor(from: "4.0.0")),
    ],
    platforms: [.iOS]
)
