// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: partner/PartnerDevice.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies the concept of a partner co-located device. Partner devices are items like iPad menus, TV menus, checkin
/// stations, and other devices that actually live at a partner location.

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

/// Specifies types of partner co-located devices.
public enum Bloombox_Schema_Partner_PartnerDeviceType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified, or unrecognized, device type.
  case unspecifiedDeviceType // = 0

  /// Internal devices. Used for sandbox/development operations.
  case `internal` // = 1

  /// Menu tablet devices.
  case menuTablet // = 10

  /// Menu TV (display) devices.
  case menuTv // = 11

  /// Checkin station units.
  case checkinStation // = 20

  /// Checkin queue TV (display) devices.
  case checkinTv // = 21

  /// Point-of-Sale/cash register devices.
  case posRegister // = 30
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecifiedDeviceType
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecifiedDeviceType
    case 1: self = .internal
    case 10: self = .menuTablet
    case 11: self = .menuTv
    case 20: self = .checkinStation
    case 21: self = .checkinTv
    case 30: self = .posRegister
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecifiedDeviceType: return 0
    case .internal: return 1
    case .menuTablet: return 10
    case .menuTv: return 11
    case .checkinStation: return 20
    case .checkinTv: return 21
    case .posRegister: return 30
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the structure of a key for a given partner device.
public struct Bloombox_Schema_Partner_PartnerDeviceKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner location that owns/co-locates this device.
  public var location: Bloombox_Schema_Partner_LocationKey {
    get {return _storage._location ?? Bloombox_Schema_Partner_LocationKey()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_storage._location = nil}

  /// UUID for this particular device.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies the structure of partner co-located device records.
public struct Bloombox_Schema_Partner_PartnerDevice {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unique ID for this partner device.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Partner that owns this device.
  public var location: Bloombox_Schema_Partner_LocationKey {
    get {return _storage._location ?? Bloombox_Schema_Partner_LocationKey()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_storage._location = nil}

  /// Type of the device this record represents.
  public var type: Bloombox_Schema_Partner_PartnerDeviceType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Flags for this device.
  public var flags: Bloombox_Schema_Partner_PartnerDeviceFlags {
    get {return _storage._flags ?? Bloombox_Schema_Partner_PartnerDeviceFlags()}
    set {_uniqueStorage()._flags = newValue}
  }
  /// Returns true if `flags` has been explicitly set.
  public var hasFlags: Bool {return _storage._flags != nil}
  /// Clears the value of `flags`. Subsequent reads from it will return its default value.
  public mutating func clearFlags() {_storage._flags = nil}

  /// Device-specific information.
  public var device: Opencannabis_Device_Device {
    get {return _storage._device ?? Opencannabis_Device_Device()}
    set {_uniqueStorage()._device = newValue}
  }
  /// Returns true if `device` has been explicitly set.
  public var hasDevice: Bool {return _storage._device != nil}
  /// Clears the value of `device`. Subsequent reads from it will return its default value.
  public mutating func clearDevice() {_storage._device = nil}

  /// Timestamp for the last time this device was "seen" on the API.
  public var seen: Opencannabis_Temporal_Instant {
    get {return _storage._seen ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._seen = newValue}
  }
  /// Returns true if `seen` has been explicitly set.
  public var hasSeen: Bool {return _storage._seen != nil}
  /// Clears the value of `seen`. Subsequent reads from it will return its default value.
  public mutating func clearSeen() {_storage._seen = nil}

  /// Timestamp for when this device originally registered.
  public var registered: Opencannabis_Temporal_Instant {
    get {return _storage._registered ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._registered = newValue}
  }
  /// Returns true if `registered` has been explicitly set.
  public var hasRegistered: Bool {return _storage._registered != nil}
  /// Clears the value of `registered`. Subsequent reads from it will return its default value.
  public mutating func clearRegistered() {_storage._registered = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Enumerates flags that may be applied to partner co-located devices.
public struct Bloombox_Schema_Partner_PartnerDeviceFlags {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates this device is active, or inactive.
  public var active: Bool = false

  /// Indicates this device is suspended.
  public var suspended: Bool = false

  /// Indicates this device has beta access.
  public var beta: Bool = false

  /// Indicates this device has sandbox access.
  public var sandbox: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.partner"

extension Bloombox_Schema_Partner_PartnerDeviceType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED_DEVICE_TYPE"),
    1: .same(proto: "INTERNAL"),
    10: .same(proto: "MENU_TABLET"),
    11: .same(proto: "MENU_TV"),
    20: .same(proto: "CHECKIN_STATION"),
    21: .same(proto: "CHECKIN_TV"),
    30: .same(proto: "POS_REGISTER"),
  ]
}

extension Bloombox_Schema_Partner_PartnerDeviceKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PartnerDeviceKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "location"),
    2: .same(proto: "uuid"),
  ]

  fileprivate class _StorageClass {
    var _location: Bloombox_Schema_Partner_LocationKey? = nil
    var _uuid: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _location = source._location
      _uuid = source._uuid
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._location)
        case 2: try decoder.decodeSingularStringField(value: &_storage._uuid)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._uuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uuid, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Partner_PartnerDeviceKey) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._location != other_storage._location {return false}
        if _storage._uuid != other_storage._uuid {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Partner_PartnerDevice: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PartnerDevice"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "location"),
    3: .same(proto: "type"),
    4: .same(proto: "flags"),
    5: .same(proto: "device"),
    6: .same(proto: "seen"),
    7: .same(proto: "registered"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _location: Bloombox_Schema_Partner_LocationKey? = nil
    var _type: Bloombox_Schema_Partner_PartnerDeviceType = .unspecifiedDeviceType
    var _flags: Bloombox_Schema_Partner_PartnerDeviceFlags? = nil
    var _device: Opencannabis_Device_Device? = nil
    var _seen: Opencannabis_Temporal_Instant? = nil
    var _registered: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _location = source._location
      _type = source._type
      _flags = source._flags
      _device = source._device
      _seen = source._seen
      _registered = source._registered
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._uuid)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._location)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._flags)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._device)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._seen)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._registered)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._uuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uuid, fieldNumber: 1)
      }
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._type != .unspecifiedDeviceType {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 3)
      }
      if let v = _storage._flags {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._device {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._seen {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._registered {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Partner_PartnerDevice) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._location != other_storage._location {return false}
        if _storage._type != other_storage._type {return false}
        if _storage._flags != other_storage._flags {return false}
        if _storage._device != other_storage._device {return false}
        if _storage._seen != other_storage._seen {return false}
        if _storage._registered != other_storage._registered {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Partner_PartnerDeviceFlags: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PartnerDeviceFlags"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "active"),
    2: .same(proto: "suspended"),
    3: .same(proto: "beta"),
    4: .same(proto: "sandbox"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.active)
      case 2: try decoder.decodeSingularBoolField(value: &self.suspended)
      case 3: try decoder.decodeSingularBoolField(value: &self.beta)
      case 4: try decoder.decodeSingularBoolField(value: &self.sandbox)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.active != false {
      try visitor.visitSingularBoolField(value: self.active, fieldNumber: 1)
    }
    if self.suspended != false {
      try visitor.visitSingularBoolField(value: self.suspended, fieldNumber: 2)
    }
    if self.beta != false {
      try visitor.visitSingularBoolField(value: self.beta, fieldNumber: 3)
    }
    if self.sandbox != false {
      try visitor.visitSingularBoolField(value: self.sandbox, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Partner_PartnerDeviceFlags) -> Bool {
    if self.active != other.active {return false}
    if self.suspended != other.suspended {return false}
    if self.beta != other.beta {return false}
    if self.sandbox != other.sandbox {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
