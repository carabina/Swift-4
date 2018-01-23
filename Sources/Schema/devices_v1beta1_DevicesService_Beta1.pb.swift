// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: devices/v1beta1/DevicesService_Beta1.proto
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

/// Enumerates errors that may be yielded when working when the device service.
public enum Bloombox_Schema_Services_Devices_V1beta1_DeviceError: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// No error occurred.
  case noError // = 0

  /// The specified serial number was invalid.
  case invalidSerial // = 1

  /// The specified device could not be found.
  case deviceNotFound // = 2

  /// An internal error occurred.
  case internalError // = 3

  /// The specified device is not currently assigned.
  case deviceUnassigned // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .noError
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .noError
    case 1: self = .invalidSerial
    case 2: self = .deviceNotFound
    case 3: self = .internalError
    case 4: self = .deviceUnassigned
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .noError: return 0
    case .invalidSerial: return 1
    case .deviceNotFound: return 2
    case .internalError: return 3
    case .deviceUnassigned: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the role of a device, and therefore how it should behave.
public enum Bloombox_Schema_Services_Devices_V1beta1_DeviceRole: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The device does not currently have an assigned role.
  case unassigned // = 0

  /// The device should display a TV menu.
  case tv // = 1

  /// The device should act as a checkin station.
  case checkin // = 2

  /// The device should act as a passive BLE (Bluetooth Low Energy) beacon.
  case beacon // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unassigned
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unassigned
    case 1: self = .tv
    case 2: self = .checkin
    case 3: self = .beacon
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unassigned: return 0
    case .tv: return 1
    case .checkin: return 2
    case .beacon: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Describes a device's assignment information, in terms of its role, and also the partner/location it is co-located
/// with.
public struct Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceAssignment"

  /// Partner code for the device assignment.
  public var partner: String = String()

  /// Location code for the device assignment.
  public var location: String = String()

  /// Role setting for the device.
  public var role: Bloombox_Schema_Services_Devices_V1beta1_DeviceRole = .unassigned

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.partner)
      case 2: try decoder.decodeSingularStringField(value: &self.location)
      case 3: try decoder.decodeSingularEnumField(value: &self.role)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.partner.isEmpty {
      try visitor.visitSingularStringField(value: self.partner, fieldNumber: 1)
    }
    if !self.location.isEmpty {
      try visitor.visitSingularStringField(value: self.location, fieldNumber: 2)
    }
    if self.role != .unassigned {
      try visitor.visitSingularEnumField(value: self.role, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Describes the result of a device activation operation, which includes various pieces of cryptographic information,
/// and the device's assignment and role information.
public struct Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceActivation"

  /// Unique ID for the device.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Hostname for the device.
  public var hostname: String {
    get {return _storage._hostname}
    set {_uniqueStorage()._hostname = newValue}
  }

  /// Assignment information for the device.
  public var assignment: Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment {
    get {return _storage._assignment ?? Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment()}
    set {_uniqueStorage()._assignment = newValue}
  }
  /// Returns true if `assignment` has been explicitly set.
  public var hasAssignment: Bool {return _storage._assignment != nil}
  /// Clears the value of `assignment`. Subsequent reads from it will return its default value.
  public mutating func clearAssignment() {_storage._assignment = nil}

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
        case 2: try decoder.decodeSingularStringField(value: &_storage._hostname)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._assignment)
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
      if !_storage._hostname.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hostname, fieldNumber: 2)
      }
      if let v = _storage._assignment {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies an RPC operation to retrieve status information for the Devices API.
public struct Bloombox_Schema_Services_Devices_V1beta1_Ping: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Ping"

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies a device ping request.
  public struct Request: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Ping.protoMessageName + ".Request"

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let _ = try decoder.nextFieldNumber() {
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Specifies a device ping response.
  public struct Response: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Ping.protoMessageName + ".Response"

    /// Current service status.
    public var status: Bloombox_Schema_Services_ServiceStatus = .unknown

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &self.status)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.status != .unknown {
        try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Specifies a device ping operation, consisting of one request and one response.
  public struct Operation: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Ping.protoMessageName + ".Operation"

    /// Request for member verification.
    public var request: Bloombox_Schema_Services_Devices_V1beta1_Ping.Request {
      get {return _storage._request ?? Bloombox_Schema_Services_Devices_V1beta1_Ping.Request()}
      set {_uniqueStorage()._request = newValue}
    }
    /// Returns true if `request` has been explicitly set.
    public var hasRequest: Bool {return _storage._request != nil}
    /// Clears the value of `request`. Subsequent reads from it will return its default value.
    public mutating func clearRequest() {_storage._request = nil}

    /// Response for member verification.
    public var response: Bloombox_Schema_Services_Devices_V1beta1_Ping.Response {
      get {return _storage._response ?? Bloombox_Schema_Services_Devices_V1beta1_Ping.Response()}
      set {_uniqueStorage()._response = newValue}
    }
    /// Returns true if `response` has been explicitly set.
    public var hasResponse: Bool {return _storage._response != nil}
    /// Clears the value of `response`. Subsequent reads from it will return its default value.
    public mutating func clearResponse() {_storage._response = nil}

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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._request)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._response)
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
        if let v = _storage._request {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _storage._response {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies an RPC operation to activate a hardware device for use.
public struct Bloombox_Schema_Services_Devices_V1beta1_Activation: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Activation"

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Request to activate a hardware device.
  public struct Request: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Activation.protoMessageName + ".Request"

    /// Hardware device's serial number.
    public var serial: String = String()

    /// Hardware fingerprint value.
    public var fingerprint: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &self.serial)
        case 2: try decoder.decodeSingularStringField(value: &self.fingerprint)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.serial.isEmpty {
        try visitor.visitSingularStringField(value: self.serial, fieldNumber: 1)
      }
      if !self.fingerprint.isEmpty {
        try visitor.visitSingularStringField(value: self.fingerprint, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Response to a request to activate a hardware device.
  public struct Response: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Activation.protoMessageName + ".Response"

    /// Device activation status, post-RPC.
    public var active: Bool {
      get {return _storage._active}
      set {_uniqueStorage()._active = newValue}
    }

    /// Error that occurred while activating, if any.
    public var error: Bloombox_Schema_Services_Devices_V1beta1_DeviceError {
      get {return _storage._error}
      set {_uniqueStorage()._error = newValue}
    }

    /// Device activation information, including its assignment/role.
    public var manifest: Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation {
      get {return _storage._manifest ?? Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation()}
      set {_uniqueStorage()._manifest = newValue}
    }
    /// Returns true if `manifest` has been explicitly set.
    public var hasManifest: Bool {return _storage._manifest != nil}
    /// Clears the value of `manifest`. Subsequent reads from it will return its default value.
    public mutating func clearManifest() {_storage._manifest = nil}

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
          case 2: try decoder.decodeSingularEnumField(value: &_storage._error)
          case 3: try decoder.decodeSingularMessageField(value: &_storage._manifest)
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
        if _storage._error != .noError {
          try visitor.visitSingularEnumField(value: _storage._error, fieldNumber: 2)
        }
        if let v = _storage._manifest {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  /// Specifies a device activation operation, consisting of one request and one response.
  public struct Operation: SwiftProtobuf.Message {
    public static let protoMessageName: String = Bloombox_Schema_Services_Devices_V1beta1_Activation.protoMessageName + ".Operation"

    /// Request to activate a device.
    public var request: Bloombox_Schema_Services_Devices_V1beta1_Activation.Request {
      get {return _storage._request ?? Bloombox_Schema_Services_Devices_V1beta1_Activation.Request()}
      set {_uniqueStorage()._request = newValue}
    }
    /// Returns true if `request` has been explicitly set.
    public var hasRequest: Bool {return _storage._request != nil}
    /// Clears the value of `request`. Subsequent reads from it will return its default value.
    public mutating func clearRequest() {_storage._request = nil}

    /// Response to a request to activate a device.
    public var response: Bloombox_Schema_Services_Devices_V1beta1_Activation.Response {
      get {return _storage._response ?? Bloombox_Schema_Services_Devices_V1beta1_Activation.Response()}
      set {_uniqueStorage()._response = newValue}
    }
    /// Returns true if `response` has been explicitly set.
    public var hasResponse: Bool {return _storage._response != nil}
    /// Clears the value of `response`. Subsequent reads from it will return its default value.
    public mutating func clearResponse() {_storage._response = nil}

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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._request)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._response)
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
        if let v = _storage._request {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _storage._response {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.services.devices.v1beta1"

extension Bloombox_Schema_Services_Devices_V1beta1_DeviceError: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NO_ERROR"),
    1: .same(proto: "INVALID_SERIAL"),
    2: .same(proto: "DEVICE_NOT_FOUND"),
    3: .same(proto: "INTERNAL_ERROR"),
    4: .same(proto: "DEVICE_UNASSIGNED"),
  ]
}

extension Bloombox_Schema_Services_Devices_V1beta1_DeviceRole: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNASSIGNED"),
    1: .same(proto: "TV"),
    2: .same(proto: "CHECKIN"),
    3: .same(proto: "BEACON"),
  ]
}

extension Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "partner"),
    2: .same(proto: "location"),
    3: .same(proto: "role"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment) -> Bool {
    if self.partner != other.partner {return false}
    if self.location != other.location {return false}
    if self.role != other.role {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "hostname"),
    3: .same(proto: "assignment"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _hostname: String = String()
    var _assignment: Bloombox_Schema_Services_Devices_V1beta1_DeviceAssignment? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _hostname = source._hostname
      _assignment = source._assignment
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._hostname != other_storage._hostname {return false}
        if _storage._assignment != other_storage._assignment {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Ping: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Ping) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Ping.Request: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Ping.Request) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Ping.Response: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Ping.Response) -> Bool {
    if self.status != other.status {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Ping.Operation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
    2: .same(proto: "response"),
  ]

  fileprivate class _StorageClass {
    var _request: Bloombox_Schema_Services_Devices_V1beta1_Ping.Request? = nil
    var _response: Bloombox_Schema_Services_Devices_V1beta1_Ping.Response? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _request = source._request
      _response = source._response
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Ping.Operation) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._request != other_storage._request {return false}
        if _storage._response != other_storage._response {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Activation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Activation) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Activation.Request: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "serial"),
    2: .same(proto: "fingerprint"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Activation.Request) -> Bool {
    if self.serial != other.serial {return false}
    if self.fingerprint != other.fingerprint {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Activation.Response: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "active"),
    2: .same(proto: "error"),
    3: .same(proto: "manifest"),
  ]

  fileprivate class _StorageClass {
    var _active: Bool = false
    var _error: Bloombox_Schema_Services_Devices_V1beta1_DeviceError = .noError
    var _manifest: Bloombox_Schema_Services_Devices_V1beta1_DeviceActivation? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _active = source._active
      _error = source._error
      _manifest = source._manifest
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Activation.Response) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._active != other_storage._active {return false}
        if _storage._error != other_storage._error {return false}
        if _storage._manifest != other_storage._manifest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Devices_V1beta1_Activation.Operation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
    2: .same(proto: "response"),
  ]

  fileprivate class _StorageClass {
    var _request: Bloombox_Schema_Services_Devices_V1beta1_Activation.Request? = nil
    var _response: Bloombox_Schema_Services_Devices_V1beta1_Activation.Response? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _request = source._request
      _response = source._response
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Services_Devices_V1beta1_Activation.Operation) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._request != other_storage._request {return false}
        if _storage._response != other_storage._response {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
