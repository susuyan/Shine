import Foundation
import PathKit
import ShineKit
import SwiftCLI

class SetupCommand: ShineCommand {

    var arguments = OptionalCollectedParameter()

    init(shine: Shine) {
        super.init(shine: shine, name: "setup", description: "create new file")
    }

    override func execute() throws {
        try super.execute()
//        try! shine.createFile(arguments.value)
        shine.setup()
    }
}
