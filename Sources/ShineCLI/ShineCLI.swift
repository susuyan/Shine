//
//  File.swift
//  
//
//  Created by sanmy on 2019/12/19.
//

import Foundation
import PathKit
import Rainbow
import SwiftCLI
import ShineKit

public class ShineCLI {
    public let version = "0.1.0"

    let shine: Shine
    let cli: CLI

    public init() {

        var shinePath: Path = "/usr/local/lib/Shine"
        var linkPath: Path = "/usr/local/bin"

        if let path = ProcessInfo.processInfo.environment["SHINE_PATH"], !path.isEmpty {
            shinePath = Path(path)
        }
        if let path = ProcessInfo.processInfo.environment["SHINE_LINK_PATH"], !path.isEmpty {
            linkPath = Path(path)
        }

        Shine = Shine(path: ShinePath, linkPath: linkPath)

        cli = CLI(name: "shine", version: version, description: "blog command", commands: [NewCommand(Shine: Shine)])
    }

    public func execute(arguments: [String]? = nil) {
        let status: Int32
        if let arguments = arguments {
            status = cli.go(with: arguments)
        } else {
            status = cli.go()
        }
        exit(status)
    }
}

extension ShineError: ProcessError {

    public var message: String? {
        return "🌱  \(description.red)"
    }

    public var exitStatus: Int32 {
        return 1
    }
}

