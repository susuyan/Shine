//
//  File.swift
//  
//
//  Created by sanmy on 2019/12/19.
//

import Foundation
import PathKit
import SwiftCLI
import ShineKit

class NewCommand: ShineCommand {


    var arguments = OptionalCollectedParameter()
    
    init(shine: Shine) {
        super.init(shine: shine, name: "setup", description: "create new file")
    }

    override func execute() throws {
        try super.execute()
//        try! shine.createFile(arguments.value)
    }
}
