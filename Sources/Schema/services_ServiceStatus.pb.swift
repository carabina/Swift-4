// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: services/ServiceStatus.proto
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

/// Specifies the status of this service in PING responses.
public enum Bloombox_Schema_Services_ServiceStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The state of the service is not known.
  case unknown // = 0

  /// The service is up and functioning normally.
  case up // = 1

  /// The service is down.
  case down // = 2

  /// The service is under maintenance.
  case maintenance // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .up
    case 2: self = .down
    case 3: self = .maintenance
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .up: return 1
    case .down: return 2
    case .maintenance: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bloombox_Schema_Services_ServiceStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bloombox_Schema_Services_ServiceStatus] = [
    .unknown,
    .up,
    .down,
    .maintenance,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Bloombox_Schema_Services_ServiceStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "UP"),
    2: .same(proto: "DOWN"),
    3: .same(proto: "MAINTENANCE"),
  ]
}
