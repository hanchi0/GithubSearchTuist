import ProjectDescription
import ProjectDescriptionHelpers


// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "Network",
    organizationName: "hanchi",
    options: .options(),
    packages: [
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0"))
    ],
    settings: .settings(),
    targets: Project.makeCoreModuleTargets(
        name: "Network",
        platform: .iOS,
        dependencies: [
//            .package(product: "Moya")
            .external(name: "Moya")
//            .xcframework(path: .relativeToRoot("Tuist/Dependencies/Carthage/Build/Moya.xcframework"))
        ]
    ),
    schemes: [],
    fileHeaderTemplate: nil,
    additionalFiles: [],
    resourceSynthesizers: []
)
