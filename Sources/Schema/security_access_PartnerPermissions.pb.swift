// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: security/access/PartnerPermissions.proto
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

public enum Bloombox_Schema_Security_Access_PartnerPermission: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case owner // = 0
  case supervisor // = 1
  case billing // = 2
  case audit // = 3
  case readonly // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .owner
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .owner
    case 1: self = .supervisor
    case 2: self = .billing
    case 3: self = .audit
    case 4: self = .readonly
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .owner: return 0
    case .supervisor: return 1
    case .billing: return 2
    case .audit: return 3
    case .readonly: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

public struct Bloombox_Schema_Security_Access_PartnerAccess: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PartnerAccess"

  public var active: Bool {
    get {return _storage._active}
    set {_uniqueStorage()._active = newValue}
  }

  public var grantedBy: String {
    get {return _storage._grantedBy}
    set {_uniqueStorage()._grantedBy = newValue}
  }

  public var grantedAt: Opencannabis_Temporal_Instant {
    get {return _storage._grantedAt ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._grantedAt = newValue}
  }
  /// Returns true if `grantedAt` has been explicitly set.
  public var hasGrantedAt: Bool {return _storage._grantedAt != nil}
  /// Clears the value of `grantedAt`. Subsequent reads from it will return its default value.
  public mutating func clearGrantedAt() {_storage._grantedAt = nil}

  public var privileges: [Bloombox_Schema_Security_Access_PartnerPermission] {
    get {return _storage._privileges}
    set {_uniqueStorage()._privileges = newValue}
  }

  public var locations: [Bloombox_Schema_Security_Access_LocationAccess] {
    get {return _storage._locations}
    set {_uniqueStorage()._locations = newValue}
  }

  public var allLocations: Bool {
    get {return _storage._allLocations}
    set {_uniqueStorage()._allLocations = newValue}
  }

  public var admin: Bool {
    get {return _storage._admin}
    set {_uniqueStorage()._admin = newValue}
  }

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
        case 1: try decoder.decodeSingularBoolField(value: &_storage._active)
        case 2: try decoder.decodeSingularStringField(value: &_storage._grantedBy)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._grantedAt)
        case 4: try decoder.decodeRepeatedEnumField(value: &_storage._privileges)
        case 5: try decoder.decodeRepeatedMessageField(value: &_storage._locations)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._allLocations)
        case 100: try decoder.decodeSingularBoolField(value: &_storage._admin)
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
      if _storage._active != false {
        try visitor.visitSingularBoolField(value: _storage._active, fieldNumber: 1)
      }
      if !_storage._grantedBy.isEmpty {
        try visitor.visitSingularStringField(value: _storage._grantedBy, fieldNumber: 2)
      }
      if let v = _storage._grantedAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if !_storage._privileges.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._privileges, fieldNumber: 4)
      }
      if !_storage._locations.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._locations, fieldNumber: 5)
      }
      if _storage._allLocations != false {
        try visitor.visitSingularBoolField(value: _storage._allLocations, fieldNumber: 6)
      }
      if _storage._admin != false {
        try visitor.visitSingularBoolField(value: _storage._admin, fieldNumber: 100)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Bloombox_Schema_Security_Access_LocationAccess: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".LocationAccess"

  public var active: Bool {
    get {return _storage._active}
    set {_uniqueStorage()._active = newValue}
  }

  public var grantedBy: String {
    get {return _storage._grantedBy}
    set {_uniqueStorage()._grantedBy = newValue}
  }

  public var grantedAt: Opencannabis_Temporal_Instant {
    get {return _storage._grantedAt ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._grantedAt = newValue}
  }
  /// Returns true if `grantedAt` has been explicitly set.
  public var hasGrantedAt: Bool {return _storage._grantedAt != nil}
  /// Clears the value of `grantedAt`. Subsequent reads from it will return its default value.
  public mutating func clearGrantedAt() {_storage._grantedAt = nil}

  public var admin: Bool {
    get {return _storage._admin}
    set {_uniqueStorage()._admin = newValue}
  }

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
        case 1: try decoder.decodeSingularBoolField(value: &_storage._active)
        case 2: try decoder.decodeSingularStringField(value: &_storage._grantedBy)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._grantedAt)
        case 100: try decoder.decodeSingularBoolField(value: &_storage._admin)
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
      if _storage._active != false {
        try visitor.visitSingularBoolField(value: _storage._active, fieldNumber: 1)
      }
      if !_storage._grantedBy.isEmpty {
        try visitor.visitSingularStringField(value: _storage._grantedBy, fieldNumber: 2)
      }
      if let v = _storage._grantedAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._admin != false {
        try visitor.visitSingularBoolField(value: _storage._admin, fieldNumber: 100)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.security.access"

extension Bloombox_Schema_Security_Access_PartnerPermission: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OWNER"),
    1: .same(proto: "SUPERVISOR"),
    2: .same(proto: "BILLING"),
    3: .same(proto: "AUDIT"),
    4: .same(proto: "READONLY"),
  ]
}

extension Bloombox_Schema_Security_Access_PartnerAccess: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "active"),
    2: .standard(proto: "granted_by"),
    3: .standard(proto: "granted_at"),
    4: .same(proto: "privileges"),
    5: .same(proto: "locations"),
    6: .standard(proto: "all_locations"),
    100: .same(proto: "admin"),
  ]

  fileprivate class _StorageClass {
    var _active: Bool = false
    var _grantedBy: String = String()
    var _grantedAt: Opencannabis_Temporal_Instant? = nil
    var _privileges: [Bloombox_Schema_Security_Access_PartnerPermission] = []
    var _locations: [Bloombox_Schema_Security_Access_LocationAccess] = []
    var _allLocations: Bool = false
    var _admin: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _active = source._active
      _grantedBy = source._grantedBy
      _grantedAt = source._grantedAt
      _privileges = source._privileges
      _locations = source._locations
      _allLocations = source._allLocations
      _admin = source._admin
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Security_Access_PartnerAccess) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._active != other_storage._active {return false}
        if _storage._grantedBy != other_storage._grantedBy {return false}
        if _storage._grantedAt != other_storage._grantedAt {return false}
        if _storage._privileges != other_storage._privileges {return false}
        if _storage._locations != other_storage._locations {return false}
        if _storage._allLocations != other_storage._allLocations {return false}
        if _storage._admin != other_storage._admin {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Security_Access_LocationAccess: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "active"),
    2: .standard(proto: "granted_by"),
    3: .standard(proto: "granted_at"),
    100: .same(proto: "admin"),
  ]

  fileprivate class _StorageClass {
    var _active: Bool = false
    var _grantedBy: String = String()
    var _grantedAt: Opencannabis_Temporal_Instant? = nil
    var _admin: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _active = source._active
      _grantedBy = source._grantedBy
      _grantedAt = source._grantedAt
      _admin = source._admin
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Security_Access_LocationAccess) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._active != other_storage._active {return false}
        if _storage._grantedBy != other_storage._grantedBy {return false}
        if _storage._grantedAt != other_storage._grantedAt {return false}
        if _storage._admin != other_storage._admin {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
