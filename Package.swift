// swift-tools-version: 5.7

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import AppleProductTypes
import PackageDescription

let package = Package(
    name: "Core ML Demos",
    platforms: [
        .iOS("16.1")
    ],
    products: [
        .iOSApplication(
            name: "Core ML Demos",
            targets: ["AppModule"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .camera),
            accentColor: .presetColor(.orange),
            supportedDeviceFamilies: [
                .pad,
                .phone,
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad])),
            ],
            capabilities: [
                .camera(purposeString: "Core ML Demos accesses the camera to obtain input data to ML models.")
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
