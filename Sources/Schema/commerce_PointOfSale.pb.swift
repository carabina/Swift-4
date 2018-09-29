// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: commerce/PointOfSale.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies details, objects, and enumerates related to physical point-of-sale devices.

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

/// Enumerates states that a point-of-sale session may take.
public enum Opencannabis_Commerce_SessionStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The session has been established, but no cash register session is open yet.
  case established // = 0

  /// This session is actively open.
  case active // = 1

  /// This session is paused temporarily.
  case suspended // = 2

  /// This session timed out/expired.
  case expired // = 3

  /// This session was formally terminated.
  case terminated // = 4

  /// The connection has been lost for this session.
  case lost // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .established
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .established
    case 1: self = .active
    case 2: self = .suspended
    case 3: self = .expired
    case 4: self = .terminated
    case 5: self = .lost
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .established: return 0
    case .active: return 1
    case .suspended: return 2
    case .expired: return 3
    case .terminated: return 4
    case .lost: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumerates available point-of-sale device states.
public enum Opencannabis_Commerce_POSDeviceStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Specifies a state where the POS device is not being used.
  case idle // = 0

  /// Specifies a state where a session currently claims a POS device.
  case claimed // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .idle
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .idle
    case 1: self = .claimed
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .idle: return 0
    case .claimed: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies information about the hardware powering a point-of-sale device.
public struct Opencannabis_Commerce_POSHardware: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".POSHardware"

  /// Specifies the type of POS hardware.
  public var type: Opencannabis_Commerce_POSHardware.TypeEnum {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Specifies the features supported by the POS hardware.
  public var support: Opencannabis_Commerce_POSHardware.Features {
    get {return _storage._support ?? Opencannabis_Commerce_POSHardware.Features()}
    set {_uniqueStorage()._support = newValue}
  }
  /// Returns true if `support` has been explicitly set.
  public var hasSupport: Bool {return _storage._support != nil}
  /// Clears the value of `support`. Subsequent reads from it will return its default value.
  public mutating func clearSupport() {_storage._support = nil}

  /// Arbitrary version name string.
  public var version: String {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Enumerated, known types of point-of-sale hardware.
  public enum TypeEnum: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified point-of-sale hardware.
    case unspecified // = 0

    /// Bloombox Point-of-Sale.
    case bloombox // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .bloombox
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .bloombox: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Specifies hardware features supported by the point-of-sale system.
  public enum Feature: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The system has a barcode printer.
    case printer // = 0

    /// The system has a barcode scanner.
    case bcs // = 1

    /// The system has a magstripe reader.
    case msr // = 2

    /// The system has a Bluetooth Low Energy (BLE) antenna.
    case ble // = 3

    /// The system has a scale attached.
    case scale // = 4

    /// The system has a label printer attached.
    case labeller // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .printer
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .printer
      case 1: self = .bcs
      case 2: self = .msr
      case 3: self = .ble
      case 4: self = .scale
      case 5: self = .labeller
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .printer: return 0
      case .bcs: return 1
      case .msr: return 2
      case .ble: return 3
      case .scale: return 4
      case .labeller: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Specifies the features available on a POS device.
  public struct Features: SwiftProtobuf.Message {
    public static let protoMessageName: String = Opencannabis_Commerce_POSHardware.protoMessageName + ".Features"

    /// Specifies features supported by the POS hardware.
    public var feature: [Opencannabis_Commerce_POSHardware.Feature] = []

    /// Number of cash drawers supported by the hardware.
    public var drawers: UInt32 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedEnumField(value: &self.feature)
        case 2: try decoder.decodeSingularUInt32Field(value: &self.drawers)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.feature.isEmpty {
        try visitor.visitPackedEnumField(value: self.feature, fieldNumber: 1)
      }
      if self.drawers != 0 {
        try visitor.visitSingularUInt32Field(value: self.drawers, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._support)
        case 3: try decoder.decodeSingularStringField(value: &_storage._version)
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
      if _storage._type != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._support {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._version.isEmpty {
        try visitor.visitSingularStringField(value: _storage._version, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a point of sale device, co-located at a retailer location, that is suitable for processing retail to
/// consumer cannabis purchase transactions.
public struct Opencannabis_Commerce_PointOfSaleDevice: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PointOfSaleDevice"

  /// UUID assigned to, or gathered from, the device.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Label/human name for the point-of-sale device.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Specifies the current status of this POS device.
  public var status: Opencannabis_Commerce_POSDeviceStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Specifies the string session ID currently claiming (or that was last to claim) this register.
  public var claim: String {
    get {return _storage._claim}
    set {_uniqueStorage()._claim = newValue}
  }

  /// Specifies information about the point-of-sale hardware in use.
  public var hardware: Opencannabis_Commerce_POSHardware {
    get {return _storage._hardware ?? Opencannabis_Commerce_POSHardware()}
    set {_uniqueStorage()._hardware = newValue}
  }
  /// Returns true if `hardware` has been explicitly set.
  public var hasHardware: Bool {return _storage._hardware != nil}
  /// Clears the value of `hardware`. Subsequent reads from it will return its default value.
  public mutating func clearHardware() {_storage._hardware = nil}

  /// Information about the POS app in use.
  public var app: Bloombox_Schema_Analytics_Context_DeviceApplication {
    get {return _storage._app ?? Bloombox_Schema_Analytics_Context_DeviceApplication()}
    set {_uniqueStorage()._app = newValue}
  }
  /// Returns true if `app` has been explicitly set.
  public var hasApp: Bool {return _storage._app != nil}
  /// Clears the value of `app`. Subsequent reads from it will return its default value.
  public mutating func clearApp() {_storage._app = nil}

  /// Specifies sessions attached to this point of sale device.
  public var session: [Opencannabis_Commerce_PointOfSaleSession] {
    get {return _storage._session}
    set {_uniqueStorage()._session = newValue}
  }

  /// Last time this point-of-sale device was seen.
  public var seen: Opencannabis_Temporal_Instant {
    get {return _storage._seen ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._seen = newValue}
  }
  /// Returns true if `seen` has been explicitly set.
  public var hasSeen: Bool {return _storage._seen != nil}
  /// Clears the value of `seen`. Subsequent reads from it will return its default value.
  public mutating func clearSeen() {_storage._seen = nil}

  /// Timestamp for when this device was created.
  public var created: Opencannabis_Temporal_Instant {
    get {return _storage._created ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._created = newValue}
  }
  /// Returns true if `created` has been explicitly set.
  public var hasCreated: Bool {return _storage._created != nil}
  /// Clears the value of `created`. Subsequent reads from it will return its default value.
  public mutating func clearCreated() {_storage._created = nil}

  /// Timestamp for when this device was last modified.
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._uuid)
        case 2: try decoder.decodeSingularStringField(value: &_storage._name)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 4: try decoder.decodeSingularStringField(value: &_storage._claim)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._hardware)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._app)
        case 7: try decoder.decodeRepeatedMessageField(value: &_storage._session)
        case 8: try decoder.decodeSingularMessageField(value: &_storage._seen)
        case 9: try decoder.decodeSingularMessageField(value: &_storage._created)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._modified)
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
      if !_storage._uuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uuid, fieldNumber: 1)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 2)
      }
      if _storage._status != .idle {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 3)
      }
      if !_storage._claim.isEmpty {
        try visitor.visitSingularStringField(value: _storage._claim, fieldNumber: 4)
      }
      if let v = _storage._hardware {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._app {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._session.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._session, fieldNumber: 7)
      }
      if let v = _storage._seen {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._created {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._modified {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies the notion of a cash register session. All transactions must be conducted under a valid point of sale
/// session, previously established and then opened by an authorized user on an authorized device. Tickets may only be
/// part of one POS session, and POS sessions may contain many transactions (or 'purchases').
public struct Opencannabis_Commerce_PointOfSaleSession: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PointOfSaleSession"

  /// UUID generated to address this session.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Specifies the current status of this POS session.
  public var status: Opencannabis_Commerce_SessionStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Specifies the authorized user account bound to this POS session.
  public var user: Bloombox_Schema_Identity_UserKey {
    get {return _storage._user ?? Bloombox_Schema_Identity_UserKey()}
    set {_uniqueStorage()._user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  public var hasUser: Bool {return _storage._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  public mutating func clearUser() {_storage._user = nil}

  /// Specifies sessions attached to this point of sale device.
  public var ticket: [Opencannabis_Commerce_PurchaseTicket] {
    get {return _storage._ticket}
    set {_uniqueStorage()._ticket = newValue}
  }

  /// Specifies the last moment this session was witnessed on the API.
  public var seen: Opencannabis_Temporal_Instant {
    get {return _storage._seen ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._seen = newValue}
  }
  /// Returns true if `seen` has been explicitly set.
  public var hasSeen: Bool {return _storage._seen != nil}
  /// Clears the value of `seen`. Subsequent reads from it will return its default value.
  public mutating func clearSeen() {_storage._seen = nil}

  /// Specifies the moment this session was created on the API.
  public var created: Opencannabis_Temporal_Instant {
    get {return _storage._created ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._created = newValue}
  }
  /// Returns true if `created` has been explicitly set.
  public var hasCreated: Bool {return _storage._created != nil}
  /// Clears the value of `created`. Subsequent reads from it will return its default value.
  public mutating func clearCreated() {_storage._created = nil}

  /// Specifies the last time this session was changed, except for `seen` updates.
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._uuid)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._user)
        case 4: try decoder.decodeRepeatedMessageField(value: &_storage._ticket)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._seen)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._created)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._modified)
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
      if !_storage._uuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uuid, fieldNumber: 1)
      }
      if _storage._status != .established {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 2)
      }
      if let v = _storage._user {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if !_storage._ticket.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._ticket, fieldNumber: 4)
      }
      if let v = _storage._seen {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._created {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._modified {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.commerce"

extension Opencannabis_Commerce_SessionStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ESTABLISHED"),
    1: .same(proto: "ACTIVE"),
    2: .same(proto: "SUSPENDED"),
    3: .same(proto: "EXPIRED"),
    4: .same(proto: "TERMINATED"),
    5: .same(proto: "LOST"),
  ]
}

extension Opencannabis_Commerce_POSDeviceStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IDLE"),
    1: .same(proto: "CLAIMED"),
  ]
}

extension Opencannabis_Commerce_POSHardware: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "support"),
    3: .same(proto: "version"),
  ]

  fileprivate class _StorageClass {
    var _type: Opencannabis_Commerce_POSHardware.TypeEnum = .unspecified
    var _support: Opencannabis_Commerce_POSHardware.Features? = nil
    var _version: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _support = source._support
      _version = source._version
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Commerce_POSHardware) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._support != other_storage._support {return false}
        if _storage._version != other_storage._version {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Commerce_POSHardware.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "BLOOMBOX"),
  ]
}

extension Opencannabis_Commerce_POSHardware.Feature: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PRINTER"),
    1: .same(proto: "BCS"),
    2: .same(proto: "MSR"),
    3: .same(proto: "BLE"),
    4: .same(proto: "SCALE"),
    5: .same(proto: "LABELLER"),
  ]
}

extension Opencannabis_Commerce_POSHardware.Features: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "feature"),
    2: .same(proto: "drawers"),
  ]

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Commerce_POSHardware.Features) -> Bool {
    if self.feature != other.feature {return false}
    if self.drawers != other.drawers {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Commerce_PointOfSaleDevice: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "name"),
    3: .same(proto: "status"),
    4: .same(proto: "claim"),
    5: .same(proto: "hardware"),
    6: .same(proto: "app"),
    7: .same(proto: "session"),
    8: .same(proto: "seen"),
    9: .same(proto: "created"),
    10: .same(proto: "modified"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _name: String = String()
    var _status: Opencannabis_Commerce_POSDeviceStatus = .idle
    var _claim: String = String()
    var _hardware: Opencannabis_Commerce_POSHardware? = nil
    var _app: Bloombox_Schema_Analytics_Context_DeviceApplication? = nil
    var _session: [Opencannabis_Commerce_PointOfSaleSession] = []
    var _seen: Opencannabis_Temporal_Instant? = nil
    var _created: Opencannabis_Temporal_Instant? = nil
    var _modified: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _name = source._name
      _status = source._status
      _claim = source._claim
      _hardware = source._hardware
      _app = source._app
      _session = source._session
      _seen = source._seen
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

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Commerce_PointOfSaleDevice) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._name != other_storage._name {return false}
        if _storage._status != other_storage._status {return false}
        if _storage._claim != other_storage._claim {return false}
        if _storage._hardware != other_storage._hardware {return false}
        if _storage._app != other_storage._app {return false}
        if _storage._session != other_storage._session {return false}
        if _storage._seen != other_storage._seen {return false}
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

extension Opencannabis_Commerce_PointOfSaleSession: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "status"),
    3: .same(proto: "user"),
    4: .same(proto: "ticket"),
    5: .same(proto: "seen"),
    6: .same(proto: "created"),
    7: .same(proto: "modified"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _status: Opencannabis_Commerce_SessionStatus = .established
    var _user: Bloombox_Schema_Identity_UserKey? = nil
    var _ticket: [Opencannabis_Commerce_PurchaseTicket] = []
    var _seen: Opencannabis_Temporal_Instant? = nil
    var _created: Opencannabis_Temporal_Instant? = nil
    var _modified: Opencannabis_Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _status = source._status
      _user = source._user
      _ticket = source._ticket
      _seen = source._seen
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

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Commerce_PointOfSaleSession) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._status != other_storage._status {return false}
        if _storage._user != other_storage._user {return false}
        if _storage._ticket != other_storage._ticket {return false}
        if _storage._seen != other_storage._seen {return false}
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
