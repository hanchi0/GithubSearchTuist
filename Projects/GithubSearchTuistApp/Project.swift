import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "GithubSearchTuistApp",
    organizationName: "hanchi",
    options: .options(
        automaticSchemesOptions: .disabled
    ),
    packages: [],
    settings: .settings(configurations: [
        .debug(
            name: "Debug",
            xcconfig: .relativeToRoot("Configurations/DEV.xcconfig")
        ),
        .release(
            name: "Release",
            xcconfig: .relativeToRoot("Configurations/PROD.xcconfig")
        )
    ]),
    targets: Project.makeAppTargets(
        name: "GithubSearchTuistApp",
        platform: .iOS,
        dependencies: [
            .external(name: "Reusable"),
            .project(target: "GithubSearchTuistSearchFramework", path: .relativeToRoot("Projects/Feature/GithubSearchTuistSearch")),
            .project(target: "GithubSearchTuistSearchDetailFramework", path: .relativeToRoot("Projects/Feature/GithubSearchTuistSearchDetail"))
        ]
    ),
    schemes: [
        .init(
            name: "GithubSearchTuistApp-DEV",
            shared: true,
            hidden: false,
            buildAction: .buildAction(targets: ["GithubSearchTuistApp"]),
            testAction: .targets(["GithubSearchTuistAppTests"]),
            runAction: .runAction(configuration: "Debug"),
            archiveAction: .archiveAction(configuration: "Debug"),
            profileAction: .profileAction(configuration: "Debug"),
            analyzeAction: .analyzeAction(configuration: "Debug")
        ),
        .init(
            name: "GithubSearchTuistApp-PROD",
            shared: true,
            hidden: false,
            buildAction: .buildAction(targets: ["GithubSearchTuistApp"]),
            testAction: .targets(["GithubSearchTuistAppTests"]),
            runAction: .runAction(configuration: "Release"),
            archiveAction: .archiveAction(configuration: "Release"),
            profileAction: .profileAction(configuration: "Release"),
            analyzeAction: .analyzeAction(configuration: "Release")
        )
    ],
    fileHeaderTemplate: nil,
    additionalFiles: [],
    resourceSynthesizers: []
)
