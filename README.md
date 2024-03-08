# Swift Package Remote Demo

The Swift Package Manager (SPM) is a built-in tool for managing the distribution of source code in the Swift programming language. It simplifies the process of sharing reusable code components and integrating dependencies into your Swift projects.

### How to create and publish Swift Package
- 1. Create SwiftPackageRemoteDemo on Local
- 2. Commit and Push the package to github
- 3. On Local Terminal, create tag for the repo, then push tag to origin
     
```git tag -a 0.0.1 -m "My first swift package with utils and greeting and success view"```
     
 ```git tag```
     
```git push origin --tags```

- 4. Now on the remote repo, should have the tag of first version of Swift Package
 
 ### How to update and publish new version on Swift Package
- 1. Update code inside SwiftPackageRemoteDemo on Local
- 2. Commit and Push the package to github
- 3. On Local Terminal, create tag for the repo, then push tag to origin
     
```git tag -a 0.0.2 -m "Update version"```
     
 ```git tag```
     
```git push origin --tags```

- 4. Now on the remote repo, should have the tag of 0.0.2 version of Swift Package

 ### How to add remote package to the project
 - 1. On the project, go to file and add package using the git hub url.
<img width="800" height="450" src="https://github.com/leemccormick/SwiftPackageRemoteDemo/assets/57606580/72fa6c48-dbf3-4b97-8025-804e40fa0db1">
 
 - 2. Import the package to use it in the project.

 ### How to update remote package in the project
 - 1. To update package code, go to remote repo on local and update code, push updated code to origin, On local terminal, create new git tag and push it to origin
 - 2. Then update package in this project, clean derived data, go to file, update package, reset package cahced, build and clean.

 ### How to inject remote dependency in local package
 - 1. Inside Local Package manifest file. Add Dependecy on after library and inside the target.
 - 2. In terminal, cd to the package directory and run this command 'swift package resolve' --> This will fetch the remote dependency into local package.

```swift package resolve```

<img width="800" height="450" alt="Screenshot 2024-03-08 at 10 24 40 AM" src="https://github.com/leemccormick/SwiftPackageRemoteDemo/assets/57606580/a53a3aa8-3c88-433a-b583-4a47010ac0cb">

 - 3. Test and Call some code of remote package inside local package target.
    
 ##### Example of manifest file when inject remote depedency

```
    // swift-tools-version: 5.9
    // The swift-tools-version declares the minimum version of Swift required to build this package.
    
    
    import PackageDescription
    
    let package = Package(
        name: "MySecondLibrary",
        platforms: [.iOS(.v17)],
        products: [
            .library(
                name: "MySecondLibrary",
                targets: ["MySecondLibrary"])
        ],
        dependencies: [
            .package(url: "https://github.com/leemccormick/SwiftPackageRemoteDemo", from: "0.0.1"),
        ],
        targets: [
            .target(
                name: "MySecondLibrary",
                dependencies: ["SwiftPackageRemoteDemo"]
            ),
            .testTarget(
                name: "MySecondLibraryTests",
                dependencies: ["MySecondLibrary"]),
        ]
    )
```
 ##### How to add example app inside package
- 1. Add Project Name "Example" to SwiftPackageRemoteDemo folder
- 2. Open the Example project and add SwiftPackageRemoteDemo package to the project.
     
<img width="800" height="450" src="https://github.com/leemccormick/SwiftPackageRemoteDemo/assets/57606580/2ae0d1aa-a0c3-4373-afd9-f006c48d5e28">
 
- 3. Import SwiftPackageRemoteDemo in Project and call it in in the new project App window
- 4. Clean up, delete test and unnessary files.
- 5. Test and run the Example project
     
<img width="800" height="450" src="https://github.com/leemccormick/SwiftPackageRemoteDemo/assets/57606580/cc3670ed-c0fe-494a-a23a-58be705e6cf4">

## Sources
- https://github.com/leemccormick/SwiftUI_Micro_Nav_Demo
- https://chmiti-safia.medium.com/spm-swift-package-manager-fc655b0aa414

### Test Project by Lee McCormick
Learning Switf, Xcode and SwiftUI is my passion. This project was built by following the tutorial and source code online.
