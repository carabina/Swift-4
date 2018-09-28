// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: temporal/Time.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Provides time-of-day-related definitions and structures.

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

/// Specifies a particular time of day.
public struct Opencannabis_Temporal_Time: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Time"

  /// Time specification option.
  public var spec: Opencannabis_Temporal_Time.OneOf_Spec? = nil

  /// ISO8601 time format.
  public var iso8601: String {
    get {
      if case .iso8601(let v)? = spec {return v}
      return String()
    }
    set {spec = .iso8601(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Time specification option.
  public enum OneOf_Spec: Equatable {
    /// ISO8601 time format.
    case iso8601(String)

    public static func ==(lhs: Opencannabis_Temporal_Time.OneOf_Spec, rhs: Opencannabis_Temporal_Time.OneOf_Spec) -> Bool {
      switch (lhs, rhs) {
      case (.iso8601(let l), .iso8601(let r)): return l == r
      }
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.spec != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.spec = .iso8601(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .iso8601(let v)? = self.spec {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.temporal"

extension Opencannabis_Temporal_Time: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "iso8601"),
  ]

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Temporal_Time) -> Bool {
    if self.spec != other.spec {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
