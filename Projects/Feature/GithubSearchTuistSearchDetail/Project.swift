import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "GithubSearchTuistSearchDetail",
    organizationName: "hanchi",
    options: .options(),
    packages: [],
//    settings: .settings(
//        base: [:],
//        configurations: [
//            .debug(
//                name: "DEV",
//                settings: [:],
//                xcconfig: .relativeToRoot("Projects/Configurations/DEV.xcconfig")
//            ),
//            .release(
//                name: "PROD",
//                settings: [:],
//                xcconfig: .relativeToRoot("Projects/Configurations/PROD.xcconfig")
//            )
//        ],
//        defaultSettings: .recommended
//    ),
    targets: Project.makeModuleTargets(
        name: "GithubSearchTuistSearchDetail",
        platform: .iOS,
        dependencies:[
            .project(target: "Core", path: .relativeToRoot("Projects/Basic/Core")),
            .project(target: "Entity", path: .relativeToRoot("Projects/Basic/Entity")),
            .project(target: "Network", path: .relativeToRoot("Projects/Basic/Network"))
        ]
    ),
    schemes: [],
    fileHeaderTemplate: nil,
    additionalFiles: [],
    resourceSynthesizers: []
)
