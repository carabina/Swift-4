// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: base/Language.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Specifies languages available for specification, usually
/// used as an attachment to content or media.
public enum Opencannabis_Base_Language: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// English.
  case english // = 0

  /// Spanish.
  case spanish // = 1

  /// French.
  case french // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .english
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .english
    case 1: self = .spanish
    case 2: self = .french
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .english: return 0
    case .spanish: return 1
    case .french: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Opencannabis_Base_Language: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ENGLISH"),
    1: .same(proto: "SPANISH"),
    2: .same(proto: "FRENCH"),
  ]
}
