// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: base/Language.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies natural language-related messages and enumerations. Also enumerates registered languages.

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

/// Specifies languages available for specification, usually used as an attachment to content or media.
public enum Opencannabis_Base_Language: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default or unset language.
  case unspecified // = 0

  /// English.
  case english // = 1

  /// Spanish.
  case spanish // = 2

  /// French.
  case french // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .english
    case 2: self = .spanish
    case 3: self = .french
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .english: return 1
    case .spanish: return 2
    case .french: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Base_Language: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Base_Language] = [
    .unspecified,
    .english,
    .spanish,
    .french,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Opencannabis_Base_Language: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LANGUAGE_UNSPECIFIED"),
    1: .same(proto: "ENGLISH"),
    2: .same(proto: "SPANISH"),
    3: .same(proto: "FRENCH"),
  ]
}
