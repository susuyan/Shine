import Foundation
import PathKit
import ShineKit
import SwiftCLI

class GenerateCommand: ShineCommand {

    var arguments = OptionalCollectedParameter()

    init(shine: Shine) {
        super.init(shine: shine, name: "generate", description: "create new file")
    }

    override func execute() throws {
        try super.execute()
        shine.generate()
    }
}
