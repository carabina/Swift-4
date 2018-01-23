// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/generic/Event.proto
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

/// Represents a generic event, which can carry an arbitrary payload and is bound to an unenumerated collection.
public struct Bloombox_Schema_Analytics_Generic_Event: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Event"

  /// Payload data for this event.
  public var payload: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _storage._payload ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_uniqueStorage()._payload = newValue}
  }
  /// Returns true if `payload` has been explicitly set.
  public var hasPayload: Bool {return _storage._payload != nil}
  /// Clears the value of `payload`. Subsequent reads from it will return its default value.
  public mutating func clearPayload() {_storage._payload = nil}

  /// Occurrence timestamp.
  public var occurred: Opencannabis_Temporal_Instant {
    get {return _storage._occurred ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_storage._occurred = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._payload)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._payload {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.analytics.generic"

extension Bloombox_Schema_Analytics_Generic_Event: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "payload"),
    2: .same(proto: "occurred"),
  ]

  fileprivate class _StorageClass {
    var _payload: SwiftProtobuf.Google_Protobuf_Struct? = nil
    var _occurred: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _payload = source._payload
      _occurred = source._occurred
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Analytics_Generic_Event) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._payload != other_storage._payload {return false}
        if _storage._occurred != other_storage._occurred {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
