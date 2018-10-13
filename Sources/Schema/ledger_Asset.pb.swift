// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ledger/Asset.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Digital assets are data representations of real-world (tangible) or digital (intangible) assets, and the metadata
/// generally associated with them. By and large, assets are stored in encoded form when they are committed to a
/// distributed ledger. In OpenCannabis' case, that encoded form is the binary encoded protobuf, encoded in base58.

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

/// Unique ID structure for a digital asset. Specifies globally-unique identifying information, or at the very least, a
/// string asset ID, calculated based on the asset's content and the owner's private key signing that content.
public struct Bloombox_Schema_Ledger_AssetKey: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AssetKey"

  /// Generated ID for a digital asset. Usually this value is calculated by hashing the digital asset content, signing
  /// the digital asset content, and combining the two.
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Payload that carries digital asset data content, either in structured or encoded form. In structured form, a payload
/// may reference any arbitrary proto message. In encoded form, the asset data is expressed in binary-serialized proto,
/// wrapped in base58. In all cases, a fingerprint must be supplied for integrity checking. In some cases, "raw" form may
/// be used, wherein the encoding is the same as encoded-form, without the base58 wrapping.
public struct Bloombox_Schema_Ledger_AssetData: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AssetData"

  /// Union field carrying the actual payload data for a digital asset. There are three ways to express an asset's data
  /// payload: raw (encoded proto binary), encoded (base58-encoded proto binary), or struct (a structured proto message).
  public var payload: OneOf_Payload? {
    get {return _storage._payload}
    set {_uniqueStorage()._payload = newValue}
  }

  /// Raw asset data, binary encoded protobuf form.
  public var raw: Data {
    get {
      if case .raw(let v)? = _storage._payload {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {_uniqueStorage()._payload = .raw(newValue)}
  }

  /// Encoded asset data, in binary encoded protobuf form, wrapped in base58.
  public var encoded: String {
    get {
      if case .encoded(let v)? = _storage._payload {return v}
      return String()
    }
    set {_uniqueStorage()._payload = .encoded(newValue)}
  }

  /// Structured asset data, wherein an arbitrary message payload is specified.
  public var `struct`: SwiftProtobuf.Google_Protobuf_Any {
    get {
      if case .struct(let v)? = _storage._payload {return v}
      return SwiftProtobuf.Google_Protobuf_Any()
    }
    set {_uniqueStorage()._payload = .struct(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Union field carrying the actual payload data for a digital asset. There are three ways to express an asset's data
  /// payload: raw (encoded proto binary), encoded (base58-encoded proto binary), or struct (a structured proto message).
  public enum OneOf_Payload: Equatable {
    /// Raw asset data, binary encoded protobuf form.
    case raw(Data)
    /// Encoded asset data, in binary encoded protobuf form, wrapped in base58.
    case encoded(String)
    /// Structured asset data, wherein an arbitrary message payload is specified.
    case `struct`(SwiftProtobuf.Google_Protobuf_Any)

    public static func ==(lhs: Bloombox_Schema_Ledger_AssetData.OneOf_Payload, rhs: Bloombox_Schema_Ledger_AssetData.OneOf_Payload) -> Bool {
      switch (lhs, rhs) {
      case (.raw(let l), .raw(let r)): return l == r
      case (.encoded(let l), .encoded(let r)): return l == r
      case (.struct(let l), .struct(let r)): return l == r
      default: return false
      }
    }
  }

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
        case 1:
          if _storage._payload != nil {try decoder.handleConflictingOneOf()}
          var v: Data?
          try decoder.decodeSingularBytesField(value: &v)
          if let v = v {_storage._payload = .raw(v)}
        case 2:
          if _storage._payload != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._payload = .encoded(v)}
        case 3:
          var v: SwiftProtobuf.Google_Protobuf_Any?
          if let current = _storage._payload {
            try decoder.handleConflictingOneOf()
            if case .struct(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._payload = .struct(v)}
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
      switch _storage._payload {
      case .raw(let v)?:
        try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
      case .encoded(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 2)
      case .struct(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies digital asset ownership parameters. In most cases, this is simply a single cryptographic identity on the
/// ledger, but may be more complex (in cases of multiple owners, organizational signers for owners, and so on).
public struct Bloombox_Schema_Ledger_AssetOwnership: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AssetOwnership"

  /// Identities of the owners of this digital asset, if known and applicable.
  public var owner: [Bloombox_Schema_Ledger_LedgerIdentity] {
    get {return _storage._owner}
    set {_uniqueStorage()._owner = newValue}
  }

  /// Previous asset ownership, allowing chained asset history to be expressed.
  public var previous: Bloombox_Schema_Ledger_AssetOwnership {
    get {return _storage._previous ?? Bloombox_Schema_Ledger_AssetOwnership()}
    set {_uniqueStorage()._previous = newValue}
  }
  /// Returns true if `previous` has been explicitly set.
  public var hasPrevious: Bool {return _storage._previous != nil}
  /// Clears the value of `previous`. Subsequent reads from it will return its default value.
  public mutating func clearPrevious() {_storage._previous = nil}

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
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._owner)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._previous)
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
      if !_storage._owner.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._owner, fieldNumber: 1)
      }
      if let v = _storage._previous {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies the concept of a digital asset, which is an asset represented by data, and usually stored or tracked within
/// a blockchain or distributed ledger.
public struct Bloombox_Schema_Ledger_DigitalAsset: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DigitalAsset"

  /// Globally unique ID that identifies the asset, generally with a signed cryptographic hash based on the asset content
  /// itself. Asset IDs can be generated statelessly as long as the private key for the asset's owner is available.
  public var key: Bloombox_Schema_Ledger_AssetKey {
    get {return _storage._key ?? Bloombox_Schema_Ledger_AssetKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// Reference to this digital asset's origin/parent digital asset, if applicable. In many cases a digital asset is
  /// spawned or subdivided from an existing digital asset.
  public var parent: Bloombox_Schema_Ledger_DigitalAsset {
    get {return _storage._parent ?? Bloombox_Schema_Ledger_DigitalAsset()}
    set {_uniqueStorage()._parent = newValue}
  }
  /// Returns true if `parent` has been explicitly set.
  public var hasParent: Bool {return _storage._parent != nil}
  /// Clears the value of `parent`. Subsequent reads from it will return its default value.
  public mutating func clearParent() {_storage._parent = nil}

  /// Specifies digital asset content data, which may be transmitted either in structured or encoded form. Asset data
  /// is always included because it constitutes the asset ID.
  public var data: Bloombox_Schema_Ledger_AssetData {
    get {return _storage._data ?? Bloombox_Schema_Ledger_AssetData()}
    set {_uniqueStorage()._data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  public var hasData: Bool {return _storage._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  public mutating func clearData() {_storage._data = nil}

  /// Identity of the owner(s) of this digital asset, if known and applicable.
  public var owner: Bloombox_Schema_Ledger_AssetOwnership {
    get {return _storage._owner ?? Bloombox_Schema_Ledger_AssetOwnership()}
    set {_uniqueStorage()._owner = newValue}
  }
  /// Returns true if `owner` has been explicitly set.
  public var hasOwner: Bool {return _storage._owner != nil}
  /// Clears the value of `owner`. Subsequent reads from it will return its default value.
  public mutating func clearOwner() {_storage._owner = nil}

  /// Fingerprint for the asset data, which carries with it a cryptographic hash verifying the contents' integrity. The
  /// hash payload carries with it the algorithm that was used.
  public var fingerprint: Opencannabis_Crypto_Primitives_Integrity_Hash {
    get {return _storage._fingerprint ?? Opencannabis_Crypto_Primitives_Integrity_Hash()}
    set {_uniqueStorage()._fingerprint = newValue}
  }
  /// Returns true if `fingerprint` has been explicitly set.
  public var hasFingerprint: Bool {return _storage._fingerprint != nil}
  /// Clears the value of `fingerprint`. Subsequent reads from it will return its default value.
  public mutating func clearFingerprint() {_storage._fingerprint = nil}

  /// Timestamp for when this digital asset was first created.
  public var created: Opencannabis_Temporal_Instant {
    get {return _storage._created ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._created = newValue}
  }
  /// Returns true if `created` has been explicitly set.
  public var hasCreated: Bool {return _storage._created != nil}
  /// Clears the value of `created`. Subsequent reads from it will return its default value.
  public mutating func clearCreated() {_storage._created = nil}

  /// Timestamp for when this digital asset was last modified.
  public var modified: Opencannabis_Temporal_Instant {
    get {return _storage._modified ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._modified = newValue}
  }
  /// Returns true if `modified` has been explicitly set.
  public var hasModified: Bool {return _storage._modified != nil}
  /// Clears the value of `modified`. Subsequent reads from it will return its default value.
  public mutating func clearModified() {_storage._modified = nil}

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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._parent)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._data)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._owner)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._fingerprint)
        case 98: try decoder.decodeSingularMessageField(value: &_storage._created)
        case 99: try decoder.decodeSingularMessageField(value: &_storage._modified)
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
      if let v = _storage._parent {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._data {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._owner {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._fingerprint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._created {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 98)
      }
      if let v = _storage._modified {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 99)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.ledger"

extension Bloombox_Schema_Ledger_AssetKey: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Ledger_AssetKey) -> Bool {
    if self.id != other.id {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Ledger_AssetData: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "raw"),
    2: .same(proto: "encoded"),
    3: .same(proto: "struct"),
  ]

  fileprivate class _StorageClass {
    var _payload: Bloombox_Schema_Ledger_AssetData.OneOf_Payload?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _payload = source._payload
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Ledger_AssetData) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._payload != other_storage._payload {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Ledger_AssetOwnership: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "owner"),
    2: .same(proto: "previous"),
  ]

  fileprivate class _StorageClass {
    var _owner: [Bloombox_Schema_Ledger_LedgerIdentity] = []
    var _previous: Bloombox_Schema_Ledger_AssetOwnership? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _owner = source._owner
      _previous = source._previous
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Ledger_AssetOwnership) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._owner != other_storage._owner {return false}
        if _storage._previous != other_storage._previous {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Ledger_DigitalAsset: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "parent"),
    3: .same(proto: "data"),
    4: .same(proto: "owner"),
    5: .same(proto: "fingerprint"),
    98: .same(proto: "created"),
    99: .same(proto: "modified"),
  ]

  fileprivate class _StorageClass {
    var _key: Bloombox_Schema_Ledger_AssetKey? = nil
    var _parent: Bloombox_Schema_Ledger_DigitalAsset? = nil
    var _data: Bloombox_Schema_Ledger_AssetData? = nil
    var _owner: Bloombox_Schema_Ledger_AssetOwnership? = nil
    var _fingerprint: Opencannabis_Crypto_Primitives_Integrity_Hash? = nil
    var _created: Opencannabis_Temporal_Instant? = nil
    var _modified: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _parent = source._parent
      _data = source._data
      _owner = source._owner
      _fingerprint = source._fingerprint
      _created = source._created
      _modified = source._modified
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Ledger_DigitalAsset) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._parent != other_storage._parent {return false}
        if _storage._data != other_storage._data {return false}
        if _storage._owner != other_storage._owner {return false}
        if _storage._fingerprint != other_storage._fingerprint {return false}
        if _storage._created != other_storage._created {return false}
        if _storage._modified != other_storage._modified {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}