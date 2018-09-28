// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: crypto/primitives/Keypair.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies cryptographic structures that help contain or specify asymmetric key pairs.

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

/// Enumerates PKI/asymmetric keying schemes supported by the system. RSA, ECC and DSA keying are usually used for TLS,
/// and in particular HTTPS (with DSA being in the far minority). EdDSA keying is used for distributed ledger operations.
public enum Opencannabis_Crypto_Primitives_Pki_KeyingScheme: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// RSA keying.
  case rsa // = 0

  /// ECC (curve-based) keying.
  case ecc // = 1

  /// DSA keying.
  case dsa // = 2

  /// ED-DSA keying.
  case edDsa // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .rsa
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .rsa
    case 1: self = .ecc
    case 2: self = .dsa
    case 3: self = .edDsa
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .rsa: return 0
    case .ecc: return 1
    case .dsa: return 2
    case .edDsa: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies parameters used to generate an underlying keypair.
public struct Opencannabis_Crypto_Primitives_Pki_KeyParameters: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".KeyParameters"

  /// Key type/keying scheme.
  public var scheme: Opencannabis_Crypto_Primitives_Pki_KeyingScheme = .rsa

  /// Algorithm in use to generate the key.
  public var algorithm: String = String()

  /// Format name for the key.
  public var format: String = String()

  /// Key size, in bits, if applicable.
  public var bits: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.scheme)
      case 2: try decoder.decodeSingularStringField(value: &self.algorithm)
      case 3: try decoder.decodeSingularStringField(value: &self.format)
      case 4: try decoder.decodeSingularUInt32Field(value: &self.bits)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.scheme != .rsa {
      try visitor.visitSingularEnumField(value: self.scheme, fieldNumber: 1)
    }
    if !self.algorithm.isEmpty {
      try visitor.visitSingularStringField(value: self.algorithm, fieldNumber: 2)
    }
    if !self.format.isEmpty {
      try visitor.visitSingularStringField(value: self.format, fieldNumber: 3)
    }
    if self.bits != 0 {
      try visitor.visitSingularUInt32Field(value: self.bits, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies raw or encoded key material data, which is to say, the actual public or private keys themselves. Key
/// material may be specified in raw binary form, encoded PEM form, or simply a cryptographic hash of their contents
/// (particularly when transmitting a hash of a public key).
public struct Opencannabis_Crypto_Primitives_Pki_KeyMaterial: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".KeyMaterial"

  /// Cryptographic hash of the key in question.
  public var fingerprint: Opencannabis_Crypto_Primitives_Integrity_Hash {
    get {return _storage._fingerprint ?? Opencannabis_Crypto_Primitives_Integrity_Hash()}
    set {_uniqueStorage()._fingerprint = newValue}
  }
  /// Returns true if `fingerprint` has been explicitly set.
  public var hasFingerprint: Bool {return _storage._fingerprint != nil}
  /// Clears the value of `fingerprint`. Subsequent reads from it will return its default value.
  public mutating func clearFingerprint() {_storage._fingerprint = nil}

  /// Parameters regarding the subject key.
  public var params: Opencannabis_Crypto_Primitives_Pki_KeyParameters {
    get {return _storage._params ?? Opencannabis_Crypto_Primitives_Pki_KeyParameters()}
    set {_uniqueStorage()._params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  public var hasParams: Bool {return _storage._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  public mutating func clearParams() {_storage._params = nil}

  /// Raw data for the key in question.
  public var data: OneOf_Data? {
    get {return _storage._data}
    set {_uniqueStorage()._data = newValue}
  }

  /// Raw bytes of the key itself.
  public var raw: Data {
    get {
      if case .raw(let v)? = _storage._data {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {_uniqueStorage()._data = .raw(newValue)}
  }

  /// Key, encoded in PEM format.
  public var pem: String {
    get {
      if case .pem(let v)? = _storage._data {return v}
      return String()
    }
    set {_uniqueStorage()._data = .pem(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Raw data for the key in question.
  public enum OneOf_Data: Equatable {
    /// Raw bytes of the key itself.
    case raw(Data)
    /// Key, encoded in PEM format.
    case pem(String)

    public static func ==(lhs: Opencannabis_Crypto_Primitives_Pki_KeyMaterial.OneOf_Data, rhs: Opencannabis_Crypto_Primitives_Pki_KeyMaterial.OneOf_Data) -> Bool {
      switch (lhs, rhs) {
      case (.raw(let l), .raw(let r)): return l == r
      case (.pem(let l), .pem(let r)): return l == r
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._fingerprint)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._params)
        case 10:
          if _storage._data != nil {try decoder.handleConflictingOneOf()}
          var v: Data?
          try decoder.decodeSingularBytesField(value: &v)
          if let v = v {_storage._data = .raw(v)}
        case 11:
          if _storage._data != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._data = .pem(v)}
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
      if let v = _storage._fingerprint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._params {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      switch _storage._data {
      case .raw(let v)?:
        try visitor.visitSingularBytesField(value: v, fieldNumber: 10)
      case .pem(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 11)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies key material for a set (pair) of asymmetric keys, which is to say, a public and a private key. This
/// structure may be used to transmit both keys in full, or just a hash of the public key, depending on the fields that
/// are filled in or not when the object is constructed.
public struct Opencannabis_Crypto_Primitives_Pki_Keypair: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Keypair"

  /// Public key. In PKI, the public key can be used only to encrypt data.
  public var `public`: Opencannabis_Crypto_Primitives_Pki_KeyMaterial {
    get {return _storage._public ?? Opencannabis_Crypto_Primitives_Pki_KeyMaterial()}
    set {_uniqueStorage()._public = newValue}
  }
  /// Returns true if ``public`` has been explicitly set.
  public var hasPublic: Bool {return _storage._public != nil}
  /// Clears the value of ``public``. Subsequent reads from it will return its default value.
  public mutating func clearPublic() {_storage._public = nil}

  /// Private key. In PKI, the private key can be used to encrypt or decrypt data.
  public var `private`: Opencannabis_Crypto_Primitives_Pki_KeyMaterial {
    get {return _storage._private ?? Opencannabis_Crypto_Primitives_Pki_KeyMaterial()}
    set {_uniqueStorage()._private = newValue}
  }
  /// Returns true if ``private`` has been explicitly set.
  public var hasPrivate: Bool {return _storage._private != nil}
  /// Clears the value of ``private``. Subsequent reads from it will return its default value.
  public mutating func clearPrivate() {_storage._private = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._public)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._private)
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
      if let v = _storage._public {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._private {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.crypto.primitives.pki"

extension Opencannabis_Crypto_Primitives_Pki_KeyingScheme: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RSA"),
    1: .same(proto: "ECC"),
    2: .same(proto: "DSA"),
    3: .same(proto: "EdDSA"),
  ]
}

extension Opencannabis_Crypto_Primitives_Pki_KeyParameters: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "scheme"),
    2: .same(proto: "algorithm"),
    3: .same(proto: "format"),
    4: .same(proto: "bits"),
  ]

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Crypto_Primitives_Pki_KeyParameters) -> Bool {
    if self.scheme != other.scheme {return false}
    if self.algorithm != other.algorithm {return false}
    if self.format != other.format {return false}
    if self.bits != other.bits {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Crypto_Primitives_Pki_KeyMaterial: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fingerprint"),
    2: .same(proto: "params"),
    10: .same(proto: "raw"),
    11: .same(proto: "pem"),
  ]

  fileprivate class _StorageClass {
    var _fingerprint: Opencannabis_Crypto_Primitives_Integrity_Hash? = nil
    var _params: Opencannabis_Crypto_Primitives_Pki_KeyParameters? = nil
    var _data: Opencannabis_Crypto_Primitives_Pki_KeyMaterial.OneOf_Data?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _fingerprint = source._fingerprint
      _params = source._params
      _data = source._data
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Crypto_Primitives_Pki_KeyMaterial) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._fingerprint != other_storage._fingerprint {return false}
        if _storage._params != other_storage._params {return false}
        if _storage._data != other_storage._data {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Crypto_Primitives_Pki_Keypair: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "public"),
    2: .same(proto: "private"),
  ]

  fileprivate class _StorageClass {
    var _public: Opencannabis_Crypto_Primitives_Pki_KeyMaterial? = nil
    var _private: Opencannabis_Crypto_Primitives_Pki_KeyMaterial? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _public = source._public
      _private = source._private
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Crypto_Primitives_Pki_Keypair) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._public != other_storage._public {return false}
        if _storage._private != other_storage._private {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
