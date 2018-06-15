// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: identity/ids/Passport.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies structures that allow storage/expression of a user's passport as government-issued ID.

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

/// Specifies a model for a nation-state-issued passport.
public struct Bloombox_Schema_Identity_Ids_Passport {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Barcode from the passport, if any.
  public var barcode: Data = SwiftProtobuf.Internal.emptyData

  /// Nation that issued this passport, as an abbreviated string code, like "US" or "UK".
  public var nation: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.identity.ids"

extension Bloombox_Schema_Identity_Ids_Passport: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Passport"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "barcode"),
    2: .same(proto: "nation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.barcode)
      case 2: try decoder.decodeSingularStringField(value: &self.nation)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.barcode.isEmpty {
      try visitor.visitSingularBytesField(value: self.barcode, fieldNumber: 1)
    }
    if !self.nation.isEmpty {
      try visitor.visitSingularStringField(value: self.nation, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Ids_Passport) -> Bool {
    if self.barcode != other.barcode {return false}
    if self.nation != other.nation {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
