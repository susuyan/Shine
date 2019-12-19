//
//  File.swift
//  
//
//  Created by sanmy on 2019/12/19.
//

import Foundation
import SwiftCLI

public enum ShineError: Error, CustomStringConvertible, Equatable, LocalizedError {

    case exist(String)
    case failure(String)

    public var description: String {
        switch self {
        case let .exist(file): return "文件已存在\(file)"
        case let .failure(reason): return "缺少参数\(reason)"
        }
    }

    public static func == (lhs: ShineError, rhs: ShineError) -> Bool {
        return lhs.description == rhs.description
    }

    public var errorDescription: String? {
        return description
    }
}
