// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: menu/v1beta1/MenuStream.proto
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

/// Specifies actions that are recorded in the menu stream table.
public enum Bloombox_Tables_Menu_V1beta1_MenuAction: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// An item was modified.
  case modify // = 0

  /// An item was created.
  case create // = 1

  /// An item was deleted.
  case delete // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .modify
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .modify
    case 1: self = .create
    case 2: self = .delete
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .modify: return 0
    case .create: return 1
    case .delete: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies a table of raw menu updates.
public struct Bloombox_Tables_Menu_V1beta1_MenuStream {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Event UUID. Generated when it happens and used to correlate telemetry with menu changes.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Specifies the action type that was taken.
  public var action: Bloombox_Tables_Menu_V1beta1_MenuAction {
    get {return _storage._action}
    set {_uniqueStorage()._action = newValue}
  }

  /// Timestamp describing when this catalog mutation occurred.
  public var occurred: UInt64 {
    get {return _storage._occurred}
    set {_uniqueStorage()._occurred = newValue}
  }

  /// Specifies the partnership scope of a given menu change.
  public var scope: String {
    get {return _storage._scope}
    set {_uniqueStorage()._scope = newValue}
  }

  /// User key that was responsible for this catalog change.
  public var user: Bloombox_Schema_Identity_UserKey {
    get {return _storage._user ?? Bloombox_Schema_Identity_UserKey()}
    set {_uniqueStorage()._user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  public var hasUser: Bool {return _storage._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  public mutating func clearUser() {_storage._user = nil}

  /// Product key resulting from a 'CREATE' operation, deleted during a 'DELETE' operation, or modified during a 'MODIFY'
  /// operation. Considered the 'subject' of this transaction.
  public var key: Opencannabis_Base_ProductKey {
    get {return _storage._key ?? Opencannabis_Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// Raw payload of JSON data describing this product after modifications are applied, if the event is a 'MODIFY' event,
  /// the data saved during a 'CREATE' event, or empty for a 'DELETE' event.
  public var payload: String {
    get {return _storage._payload}
    set {_uniqueStorage()._payload = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.tables.menu.v1beta1"

extension Bloombox_Tables_Menu_V1beta1_MenuAction: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MODIFY"),
    1: .same(proto: "CREATE"),
    2: .same(proto: "DELETE"),
  ]
}

extension Bloombox_Tables_Menu_V1beta1_MenuStream: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MenuStream"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "action"),
    3: .same(proto: "occurred"),
    4: .same(proto: "scope"),
    5: .same(proto: "user"),
    6: .same(proto: "key"),
    7: .same(proto: "payload"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _action: Bloombox_Tables_Menu_V1beta1_MenuAction = .modify
    var _occurred: UInt64 = 0
    var _scope: String = String()
    var _user: Bloombox_Schema_Identity_UserKey? = nil
    var _key: Opencannabis_Base_ProductKey? = nil
    var _payload: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _action = source._action
      _occurred = source._occurred
      _scope = source._scope
      _user = source._user
      _key = source._key
      _payload = source._payload
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
        case 2: try decoder.decodeSingularEnumField(value: &_storage._action)
        case 3: try decoder.decodeSingularUInt64Field(value: &_storage._occurred)
        case 4: try decoder.decodeSingularStringField(value: &_storage._scope)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._user)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 7: try decoder.decodeSingularStringField(value: &_storage._payload)
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
      if _storage._action != .modify {
        try visitor.visitSingularEnumField(value: _storage._action, fieldNumber: 2)
      }
      if _storage._occurred != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._occurred, fieldNumber: 3)
      }
      if !_storage._scope.isEmpty {
        try visitor.visitSingularStringField(value: _storage._scope, fieldNumber: 4)
      }
      if let v = _storage._user {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._payload.isEmpty {
        try visitor.visitSingularStringField(value: _storage._payload, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Tables_Menu_V1beta1_MenuStream) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._action != other_storage._action {return false}
        if _storage._occurred != other_storage._occurred {return false}
        if _storage._scope != other_storage._scope {return false}
        if _storage._user != other_storage._user {return false}
        if _storage._key != other_storage._key {return false}
        if _storage._payload != other_storage._payload {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
