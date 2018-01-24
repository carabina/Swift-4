// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: identity/pass/PassKey.proto
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

public struct Bloombox_Schema_Identity_Pass_PassKey: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PassKey"

  public var encoded: String = String()

  public var serial: String = String()

  public var uid: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.encoded)
      case 2: try decoder.decodeSingularStringField(value: &self.serial)
      case 3: try decoder.decodeSingularStringField(value: &self.uid)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularStringField(value: self.encoded, fieldNumber: 1)
    }
    if !self.serial.isEmpty {
      try visitor.visitSingularStringField(value: self.serial, fieldNumber: 2)
    }
    if !self.uid.isEmpty {
      try visitor.visitSingularStringField(value: self.uid, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.identity.pass"

extension Bloombox_Schema_Identity_Pass_PassKey: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
    2: .same(proto: "serial"),
    3: .same(proto: "uid"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Pass_PassKey) -> Bool {
    if self.encoded != other.encoded {return false}
    if self.serial != other.serial {return false}
    if self.uid != other.uid {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
