import Files
import Foundation
import PathKit
import Rainbow
import SwiftCLI
import Yams

public class Shine {

    public var path: Path
    public var linkPath: Path

    public var standardOut: WritableStream
    public var standardError: WritableStream

    public var verbose = false

    public init(
        path: Path,
        linkPath: Path,
        standardOut: WritableStream = Term.stdout,
        standardError: WritableStream = Term.stderr
    ) {

        self.standardOut = standardOut
        self.standardError = standardError
        self.path = path.absolute()
        self.linkPath = linkPath.absolute()
    }

    func output(_ string: String) {
        standardOut.print("🌱  \(string)")
    }

    func errorOutput(_ string: String) {
        standardError.print("🌱  \(string)")
    }

    public func closeStreams() {
        standardOut.closeWrite()
        standardError.closeWrite()
    }

    public func createFile(_ params: [String]) throws {}

    public func setup() {
        output("执行setup")
    }

    public func generate() {
        output("执行generate")
    }

    public func initial() throws {
        output("执行init")
        let filePath = Path("./shine.yml").string

        let file = try File(path: filePath)

        let content = try file.readAsString()

        let decoder = YAMLDecoder()

        let shineFile: Shinefile = try decoder.decode(Shinefile.self, from: content)

        // 创建一个目录

        try shineFile.directory.forEach { dir in
            let dirPath = Path("./Examples/\(dir)")
            output("mkdir \(dirPath)")
            try dirPath.mkdir()
        }

        output("enjoys!")
    }
}
