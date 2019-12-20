import Foundation
import PathKit
import ShineKit
import SwiftCLI

class ShineCommand: Command {

    let shine: Shine
    let name: String
    let shortDescription: String
    let longDescription: String

    init(shine: Shine, name: String, description: String, longDescription: String = "") {
        self.shine = shine
        self.name = name
        shortDescription = description
        self.longDescription = longDescription
    }

    func execute() throws {}
}
