// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: regulatory/usa/ca/CAAgency.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Provides an enumeration of California licensure agencies.

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

/// Enumerates California executive agencies involved in cannabis licensure.
public enum Opencannabis_Regulatory_Usa_Ca_CaliforniaAgency: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unknown agency backstop value.
  case unknownAgency // = 0

  /// California Department of Farm and Agriculture
  case cdfa // = 1

  /// Bureau of Cannabis Control
  case cbcc // = 2

  /// Department of Consumer Affairs
  case cdca // = 3

  /// California Department of Public Health
  case cdph // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknownAgency
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownAgency
    case 1: self = .cdfa
    case 2: self = .cbcc
    case 3: self = .cdca
    case 4: self = .cdph
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknownAgency: return 0
    case .cdfa: return 1
    case .cbcc: return 2
    case .cdca: return 3
    case .cdph: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Regulatory_Usa_Ca_CaliforniaAgency: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Regulatory_Usa_Ca_CaliforniaAgency] = [
    .unknownAgency,
    .cdfa,
    .cbcc,
    .cdca,
    .cdph,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Opencannabis_Regulatory_Usa_Ca_CaliforniaAgency: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_AGENCY"),
    1: .same(proto: "CDFA"),
    2: .same(proto: "CBCC"),
    3: .same(proto: "CDCA"),
    4: .same(proto: "CDPH"),
  ]
}
