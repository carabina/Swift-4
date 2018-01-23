// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: identity/pass/Pass.proto
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

public struct Bloombox_Schema_Identity_Pass_Pass: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Pass"

  public var key: Bloombox_Schema_Identity_Pass_PassKey {
    get {return _storage._key ?? Bloombox_Schema_Identity_Pass_PassKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  public var token: String {
    get {return _storage._token}
    set {_uniqueStorage()._token = newValue}
  }

  public var uri: String {
    get {return _storage._uri}
    set {_uniqueStorage()._uri = newValue}
  }

  public var active: Bool {
    get {return _storage._active}
    set {_uniqueStorage()._active = newValue}
  }

  public var issued: Opencannabis_Temporal_Instant {
    get {return _storage._issued ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._issued = newValue}
  }
  /// Returns true if `issued` has been explicitly set.
  public var hasIssued: Bool {return _storage._issued != nil}
  /// Clears the value of `issued`. Subsequent reads from it will return its default value.
  public mutating func clearIssued() {_storage._issued = nil}

  public var suspended: Opencannabis_Temporal_Instant {
    get {return _storage._suspended ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._suspended = newValue}
  }
  /// Returns true if `suspended` has been explicitly set.
  public var hasSuspended: Bool {return _storage._suspended != nil}
  /// Clears the value of `suspended`. Subsequent reads from it will return its default value.
  public mutating func clearSuspended() {_storage._suspended = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeSingularStringField(value: &_storage._token)
        case 3: try decoder.decodeSingularStringField(value: &_storage._uri)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._active)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._issued)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._suspended)
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
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._token.isEmpty {
        try visitor.visitSingularStringField(value: _storage._token, fieldNumber: 2)
      }
      if !_storage._uri.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uri, fieldNumber: 3)
      }
      if _storage._active != false {
        try visitor.visitSingularBoolField(value: _storage._active, fieldNumber: 4)
      }
      if let v = _storage._issued {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._suspended {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.identity.pass"

extension Bloombox_Schema_Identity_Pass_Pass: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "token"),
    3: .same(proto: "uri"),
    4: .same(proto: "active"),
    5: .same(proto: "issued"),
    6: .same(proto: "suspended"),
  ]

  fileprivate class _StorageClass {
    var _key: Bloombox_Schema_Identity_Pass_PassKey? = nil
    var _token: String = String()
    var _uri: String = String()
    var _active: Bool = false
    var _issued: Opencannabis_Temporal_Instant? = nil
    var _suspended: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _token = source._token
      _uri = source._uri
      _active = source._active
      _issued = source._issued
      _suspended = source._suspended
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Pass_Pass) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._token != other_storage._token {return false}
        if _storage._uri != other_storage._uri {return false}
        if _storage._active != other_storage._active {return false}
        if _storage._issued != other_storage._issued {return false}
        if _storage._suspended != other_storage._suspended {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
