// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: inventory/InventoryLocation.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies the structure of an inventory location, which is a warehouse, retailer, or production facility location, or
/// any other location that holds compliant product for later resale or use.

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

/// Enumerates understood types of inventory locations.
public enum Opencannabis_Inventory_InventoryLocationType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Specifies a retail location.
  case retail // = 0

  /// Specifies a warehouse/storage location.
  case warehouse // = 1

  /// Specifies a manufacturing or production facility.
  case production // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .retail
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .retail
    case 1: self = .warehouse
    case 2: self = .production
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .retail: return 0
    case .warehouse: return 1
    case .production: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Inventory_InventoryLocationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Inventory_InventoryLocationType] = [
    .retail,
    .warehouse,
    .production,
  ]
}

#endif  // swift(>=4.2)

/// Specifies a key that uniquely identifies an inventory location.
public struct Opencannabis_Inventory_InventoryLocationKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unique ID provisioned to represent this inventory location.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Partner location key, which binds this inventory location to a partner organization.
  public var location: Bloombox_Schema_Partner_LocationKey {
    get {return _storage._location ?? Bloombox_Schema_Partner_LocationKey()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_uniqueStorage()._location = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies the notion of a concrete location that handles or stores inventory.
public struct Opencannabis_Inventory_InventoryLocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Key representing this inventory location.
  public var key: Opencannabis_Inventory_InventoryLocationKey {
    get {return _storage._key ?? Opencannabis_Inventory_InventoryLocationKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_uniqueStorage()._key = nil}

  /// Specifies the type of this inventory location.
  public var type: Opencannabis_Inventory_InventoryLocationType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Human-readable label for this location.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Physical and digital contact and location info.
  public var contact: Opencannabis_Contact_ContactInfo {
    get {return _storage._contact ?? Opencannabis_Contact_ContactInfo()}
    set {_uniqueStorage()._contact = newValue}
  }
  /// Returns true if `contact` has been explicitly set.
  public var hasContact: Bool {return _storage._contact != nil}
  /// Clears the value of `contact`. Subsequent reads from it will return its default value.
  public mutating func clearContact() {_uniqueStorage()._contact = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Inventory binding. Binds an inventory item to an inventory location.
public struct Opencannabis_Inventory_InventoryBinding {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Inventory location.
  public var heldBy: Opencannabis_Inventory_InventoryLocationKey {
    get {return _storage._heldBy ?? Opencannabis_Inventory_InventoryLocationKey()}
    set {_uniqueStorage()._heldBy = newValue}
  }
  /// Returns true if `heldBy` has been explicitly set.
  public var hasHeldBy: Bool {return _storage._heldBy != nil}
  /// Clears the value of `heldBy`. Subsequent reads from it will return its default value.
  public mutating func clearHeldBy() {_uniqueStorage()._heldBy = nil}

  /// Item held in inventory at the subject location.
  public var item: Opencannabis_Inventory_InventoryProduct {
    get {return _storage._item ?? Opencannabis_Inventory_InventoryProduct()}
    set {_uniqueStorage()._item = newValue}
  }
  /// Returns true if `item` has been explicitly set.
  public var hasItem: Bool {return _storage._item != nil}
  /// Clears the value of `item`. Subsequent reads from it will return its default value.
  public mutating func clearItem() {_uniqueStorage()._item = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.inventory"

extension Opencannabis_Inventory_InventoryLocationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RETAIL"),
    1: .same(proto: "WAREHOUSE"),
    2: .same(proto: "PRODUCTION"),
  ]
}

extension Opencannabis_Inventory_InventoryLocationKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InventoryLocationKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "location"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _location: Bloombox_Schema_Partner_LocationKey? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _location = source._location
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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Inventory_InventoryLocationKey, rhs: Opencannabis_Inventory_InventoryLocationKey) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._uuid != rhs_storage._uuid {return false}
        if _storage._location != rhs_storage._location {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Inventory_InventoryLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InventoryLocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "type"),
    3: .same(proto: "name"),
    4: .same(proto: "contact"),
  ]

  fileprivate class _StorageClass {
    var _key: Opencannabis_Inventory_InventoryLocationKey? = nil
    var _type: Opencannabis_Inventory_InventoryLocationType = .retail
    var _name: String = String()
    var _contact: Opencannabis_Contact_ContactInfo? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _type = source._type
      _name = source._name
      _contact = source._contact
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 3: try decoder.decodeSingularStringField(value: &_storage._name)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._contact)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._type != .retail {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 2)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 3)
      }
      if let v = _storage._contact {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Inventory_InventoryLocation, rhs: Opencannabis_Inventory_InventoryLocation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._key != rhs_storage._key {return false}
        if _storage._type != rhs_storage._type {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._contact != rhs_storage._contact {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Inventory_InventoryBinding: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InventoryBinding"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "held_by"),
    2: .same(proto: "item"),
  ]

  fileprivate class _StorageClass {
    var _heldBy: Opencannabis_Inventory_InventoryLocationKey? = nil
    var _item: Opencannabis_Inventory_InventoryProduct? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _heldBy = source._heldBy
      _item = source._item
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._heldBy)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._item)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._heldBy {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._item {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Inventory_InventoryBinding, rhs: Opencannabis_Inventory_InventoryBinding) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._heldBy != rhs_storage._heldBy {return false}
        if _storage._item != rhs_storage._item {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
