import Foundation
import PathKit
import SwiftCLI
import ShineKit

class InitCommand: ShineCommand {


    var arguments = OptionalCollectedParameter()
    
    init(shine: Shine) {
        super.init(shine: shine, name: "init", description: "create new file")
    }

    override func execute() throws {
        try super.execute()
//        try! shine.createFile(arguments.value)
        try shine.initial()
    }
}
