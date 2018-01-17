// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/ProductFlags.proto
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

/// top-level flags
public enum Structs_ProductFlag: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case visible // = 0
  case hidden // = 1
  case premium // = 2
  case featured // = 3
  case organic // = 4
  case exclusive // = 5
  case inHouse // = 6
  case lastChance // = 7
  case limitedTime // = 8
  case onSale // = 9
  case UNRECOGNIZED(Int)

  public init() {
    self = .visible
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .visible
    case 1: self = .hidden
    case 2: self = .premium
    case 3: self = .featured
    case 4: self = .organic
    case 5: self = .exclusive
    case 6: self = .inHouse
    case 7: self = .lastChance
    case 8: self = .limitedTime
    case 9: self = .onSale
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .visible: return 0
    case .hidden: return 1
    case .premium: return 2
    case .featured: return 3
    case .organic: return 4
    case .exclusive: return 5
    case .inHouse: return 6
    case .lastChance: return 7
    case .limitedTime: return 8
    case .onSale: return 9
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Structs_ProductFlag: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VISIBLE"),
    1: .same(proto: "HIDDEN"),
    2: .same(proto: "PREMIUM"),
    3: .same(proto: "FEATURED"),
    4: .same(proto: "ORGANIC"),
    5: .same(proto: "EXCLUSIVE"),
    6: .same(proto: "IN_HOUSE"),
    7: .same(proto: "LAST_CHANCE"),
    8: .same(proto: "LIMITED_TIME"),
    9: .same(proto: "ON_SALE"),
  ]
}
