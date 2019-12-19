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
import Files

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

    
    public func createFile(_ params:[String]) throws  {
        
        
    }

    public func setup(){
        output("执行setup")
    }

    public func generate(){
        output("执行generate")
    }
}
