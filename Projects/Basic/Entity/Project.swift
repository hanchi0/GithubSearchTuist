import ProjectDescription
import ProjectDescriptionHelpers


// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "Entity",
    organizationName: "hanchi",
    options: .options(),
    packages: [],
    settings: .settings(),
    targets: Project.makeCoreModuleTargets(
        name: "Entity",
        platform: .iOS,
        dependencies: [
        ]
    ),
    schemes: [],
    fileHeaderTemplate: nil,
    additionalFiles: [],
    resourceSynthesizers: []
)
