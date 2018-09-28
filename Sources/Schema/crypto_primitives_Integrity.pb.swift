// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: crypto/primitives/Integrity.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies cryptographic structures related to integrity protection and verification.

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

/// Enumerates hash algorithms supported or known by the runtime for shared use.
public enum Opencannabis_Crypto_Primitives_Integrity_HashAlgorithm: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Secure Hash Algorithm v2.
  case sha1 // = 0

  /// Message Digest v5.
  case md5 // = 1

  /// Secure Hash Algorithm, with 256-bit width.
  case sha256 // = 2

  /// Secure Hash Algorithm, with 384-bit width.
  case sha384 // = 3

  /// Secure Hash Algorithm, with 512-bit width.
  case sha512 // = 4

  /// Specifies hashing with MurmurHash.
  case murmur // = 6
  case UNRECOGNIZED(Int)

  public init() {
    self = .sha1
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .sha1
    case 1: self = .md5
    case 2: self = .sha256
    case 3: self = .sha384
    case 4: self = .sha512
    case 6: self = .murmur
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .sha1: return 0
    case .md5: return 1
    case .sha256: return 2
    case .sha384: return 3
    case .sha512: return 4
    case .murmur: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the hash portion of hashed data, along with the algorithm used to calculate the digest enclosed. This
/// particular container does not specify or otherwise contain the original referenced data.
public struct Opencannabis_Crypto_Primitives_Integrity_Hash: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Hash"

  /// Specifies the algorithm in use.
  public var algorithm: Opencannabis_Crypto_Primitives_Integrity_HashAlgorithm = .sha1

  /// Carries the actual data of the calculated digest value.
  public var digest: Opencannabis_Crypto_Primitives_Integrity_Hash.OneOf_Digest? = nil

  /// Raw binary output of the hash algorithm.
  public var raw: Data {
    get {
      if case .raw(let v)? = digest {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {digest = .raw(newValue)}
  }

  /// Hex-encoded digest value.
  public var hex: String {
    get {
      if case .hex(let v)? = digest {return v}
      return String()
    }
    set {digest = .hex(newValue)}
  }

  /// Base64-encoded digest value.
  public var b64: String {
    get {
      if case .b64(let v)? = digest {return v}
      return String()
    }
    set {digest = .b64(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Carries the actual data of the calculated digest value.
  public enum OneOf_Digest: Equatable {
    /// Raw binary output of the hash algorithm.
    case raw(Data)
    /// Hex-encoded digest value.
    case hex(String)
    /// Base64-encoded digest value.
    case b64(String)

    public static func ==(lhs: Opencannabis_Crypto_Primitives_Integrity_Hash.OneOf_Digest, rhs: Opencannabis_Crypto_Primitives_Integrity_Hash.OneOf_Digest) -> Bool {
      switch (lhs, rhs) {
      case (.raw(let l), .raw(let r)): return l == r
      case (.hex(let l), .hex(let r)): return l == r
      case (.b64(let l), .b64(let r)): return l == r
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
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.algorithm)
      case 2:
        if self.digest != nil {try decoder.handleConflictingOneOf()}
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {self.digest = .raw(v)}
      case 3:
        if self.digest != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.digest = .hex(v)}
      case 4:
        if self.digest != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.digest = .b64(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.algorithm != .sha1 {
      try visitor.visitSingularEnumField(value: self.algorithm, fieldNumber: 1)
    }
    switch self.digest {
    case .raw(let v)?:
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    case .hex(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    case .b64(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies a set of raw data, of some kind, and an attached digest/hash value, along with the algorithm used to
/// calculate the digest.
public struct Opencannabis_Crypto_Primitives_Integrity_HashedData: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".HashedData"

  /// Raw data that we are transmitting.
  public var data: Data {
    get {return _storage._data}
    set {_uniqueStorage()._data = newValue}
  }

  /// Hash for the raw data in this payload.
  public var hash: Opencannabis_Crypto_Primitives_Integrity_Hash {
    get {return _storage._hash ?? Opencannabis_Crypto_Primitives_Integrity_Hash()}
    set {_uniqueStorage()._hash = newValue}
  }
  /// Returns true if `hash` has been explicitly set.
  public var hasHash: Bool {return _storage._hash != nil}
  /// Clears the value of `hash`. Subsequent reads from it will return its default value.
  public mutating func clearHash() {_storage._hash = nil}

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
        case 1: try decoder.decodeSingularBytesField(value: &_storage._data)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._hash)
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
      if !_storage._data.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._data, fieldNumber: 1)
      }
      if let v = _storage._hash {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.crypto.primitives.integrity"

extension Opencannabis_Crypto_Primitives_Integrity_HashAlgorithm: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SHA1"),
    1: .same(proto: "MD5"),
    2: .same(proto: "SHA256"),
    3: .same(proto: "SHA384"),
    4: .same(proto: "SHA512"),
    6: .same(proto: "MURMUR"),
  ]
}

extension Opencannabis_Crypto_Primitives_Integrity_Hash: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "algorithm"),
    2: .same(proto: "raw"),
    3: .same(proto: "hex"),
    4: .same(proto: "b64"),
  ]

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Crypto_Primitives_Integrity_Hash) -> Bool {
    if self.algorithm != other.algorithm {return false}
    if self.digest != other.digest {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Crypto_Primitives_Integrity_HashedData: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
    2: .same(proto: "hash"),
  ]

  fileprivate class _StorageClass {
    var _data: Data = SwiftProtobuf.Internal.emptyData
    var _hash: Opencannabis_Crypto_Primitives_Integrity_Hash? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _data = source._data
      _hash = source._hash
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Crypto_Primitives_Integrity_HashedData) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._data != other_storage._data {return false}
        if _storage._hash != other_storage._hash {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
