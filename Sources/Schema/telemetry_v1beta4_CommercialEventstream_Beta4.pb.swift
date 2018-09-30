// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: telemetry/v1beta4/CommercialEventstream_Beta4.proto
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

/// Enumerates types of commercial events that are tracked.
public enum Bloombox_Tables_Telemetry_V1beta4_CommercialEventType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Specifies an impression event, where a subject commercial entity was impressed upon a potential customer in a
  /// passive context, such as a master UI or set of search results.
  case impression // = 0

  /// Specifies an event where a potential customer chose to consume detailed information about some commercial entity,
  /// or engage at a level that is proactive but not considered a conversion. For instance, entering a store, or clicking
  /// on a product, section, or shop link.
  case view // = 1

  /// Specifies an event where a potential customer has taken some action, or become an actual customer (a 'conversion').
  case action // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .impression
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .impression
    case 1: self = .view
    case 2: self = .action
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .impression: return 0
    case .view: return 1
    case .action: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Subject of a particular commercial event. This specifies the commercial object being described. Shop-level info is
/// omitted since it is specified already in `EventActors` and `Context`, in the form of a pair of `partner.Partner` and
/// `partner.PartnerLocation`, and `analytics.Scope` objects, respectively.
public struct Bloombox_Tables_Telemetry_V1beta4_CommercialSubject {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies the menu section involved with a commercial event.
  public var section: Opencannabis_Products_Menu_Section_Section {
    get {return _storage._section}
    set {_uniqueStorage()._section = newValue}
  }

  /// Specifies flags that were active on the section when the event was recorded.
  public var sectionFlag: [Opencannabis_Products_Menu_Section_SectionFlag] {
    get {return _storage._sectionFlag}
    set {_uniqueStorage()._sectionFlag = newValue}
  }

  /// Specifies the subject product key, if applicable.
  public var product: Opencannabis_Base_ProductKey {
    get {return _storage._product ?? Opencannabis_Base_ProductKey()}
    set {_uniqueStorage()._product = newValue}
  }
  /// Returns true if `product` has been explicitly set.
  public var hasProduct: Bool {return _storage._product != nil}
  /// Clears the value of `product`. Subsequent reads from it will return its default value.
  public mutating func clearProduct() {_storage._product = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a table of inflated, generic telemetry events.
public struct Bloombox_Tables_Telemetry_V1beta4_CommercialEvents {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Event UUID. Generated upon ingest.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Timestamps related to this event, or, the subject event's temporal positioning parameters.
  public var timing: Bloombox_Schema_Analytics_EventPosition {
    get {return _storage._timing ?? Bloombox_Schema_Analytics_EventPosition()}
    set {_uniqueStorage()._timing = newValue}
  }
  /// Returns true if `timing` has been explicitly set.
  public var hasTiming: Bool {return _storage._timing != nil}
  /// Clears the value of `timing`. Subsequent reads from it will return its default value.
  public mutating func clearTiming() {_storage._timing = nil}

  /// Event context, specifying the circumstances under which this event was submitted.
  public var context: Bloombox_Schema_Analytics_Context {
    get {return _storage._context ?? Bloombox_Schema_Analytics_Context()}
    set {_uniqueStorage()._context = newValue}
  }
  /// Returns true if `context` has been explicitly set.
  public var hasContext: Bool {return _storage._context != nil}
  /// Clears the value of `context`. Subsequent reads from it will return its default value.
  public mutating func clearContext() {_storage._context = nil}

  /// Inflated records contextually tied to this event, such as the user, device, partner, and location that were active
  /// when it was sent.
  public var actors: Bloombox_Schema_Analytics_EventActors {
    get {return _storage._actors ?? Bloombox_Schema_Analytics_EventActors()}
    set {_uniqueStorage()._actors = newValue}
  }
  /// Returns true if `actors` has been explicitly set.
  public var hasActors: Bool {return _storage._actors != nil}
  /// Clears the value of `actors`. Subsequent reads from it will return its default value.
  public mutating func clearActors() {_storage._actors = nil}

  /// Type of commercial event being specified - an IMPRESSION, VIEW, or ACTION.
  public var type: Bloombox_Tables_Telemetry_V1beta4_CommercialEventType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a table of commercial orders.
public struct Bloombox_Tables_Telemetry_V1beta4_Orders {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unique order ID, generated either by the client or the server upon submission.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Unique session ID that was active when the order was submitted.
  public var session: String {
    get {return _storage._session}
    set {_uniqueStorage()._session = newValue}
  }

  /// Pre-calculated order statistics.
  public var stats: Bloombox_Schema_Analytics_Stats_OrderStats {
    get {return _storage._stats ?? Bloombox_Schema_Analytics_Stats_OrderStats()}
    set {_uniqueStorage()._stats = newValue}
  }
  /// Returns true if `stats` has been explicitly set.
  public var hasStats: Bool {return _storage._stats != nil}
  /// Clears the value of `stats`. Subsequent reads from it will return its default value.
  public mutating func clearStats() {_storage._stats = nil}

  /// Full payload data for the subject order.
  public var order: Opencannabis_Commerce_Order {
    get {return _storage._order ?? Opencannabis_Commerce_Order()}
    set {_uniqueStorage()._order = newValue}
  }
  /// Returns true if `order` has been explicitly set.
  public var hasOrder: Bool {return _storage._order != nil}
  /// Clears the value of `order`. Subsequent reads from it will return its default value.
  public mutating func clearOrder() {_storage._order = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.tables.telemetry.v1beta4"

extension Bloombox_Tables_Telemetry_V1beta4_CommercialEventType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IMPRESSION"),
    1: .same(proto: "VIEW"),
    2: .same(proto: "ACTION"),
  ]
}

extension Bloombox_Tables_Telemetry_V1beta4_CommercialSubject: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CommercialSubject"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "section"),
    2: .standard(proto: "section_flag"),
    3: .same(proto: "product"),
  ]

  fileprivate class _StorageClass {
    var _section: Opencannabis_Products_Menu_Section_Section = .unspecified
    var _sectionFlag: [Opencannabis_Products_Menu_Section_SectionFlag] = []
    var _product: Opencannabis_Base_ProductKey? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _section = source._section
      _sectionFlag = source._sectionFlag
      _product = source._product
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._section)
        case 2: try decoder.decodeRepeatedEnumField(value: &_storage._sectionFlag)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._product)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._section != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._section, fieldNumber: 1)
      }
      if !_storage._sectionFlag.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._sectionFlag, fieldNumber: 2)
      }
      if let v = _storage._product {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Tables_Telemetry_V1beta4_CommercialSubject) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._section != other_storage._section {return false}
        if _storage._sectionFlag != other_storage._sectionFlag {return false}
        if _storage._product != other_storage._product {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Tables_Telemetry_V1beta4_CommercialEvents: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CommercialEvents"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "timing"),
    3: .same(proto: "context"),
    4: .same(proto: "actors"),
    5: .same(proto: "type"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _timing: Bloombox_Schema_Analytics_EventPosition? = nil
    var _context: Bloombox_Schema_Analytics_Context? = nil
    var _actors: Bloombox_Schema_Analytics_EventActors? = nil
    var _type: Bloombox_Tables_Telemetry_V1beta4_CommercialEventType = .impression

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _timing = source._timing
      _context = source._context
      _actors = source._actors
      _type = source._type
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._timing)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._context)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._actors)
        case 5: try decoder.decodeSingularEnumField(value: &_storage._type)
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
      if let v = _storage._timing {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._context {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._actors {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._type != .impression {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Tables_Telemetry_V1beta4_CommercialEvents) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._timing != other_storage._timing {return false}
        if _storage._context != other_storage._context {return false}
        if _storage._actors != other_storage._actors {return false}
        if _storage._type != other_storage._type {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Tables_Telemetry_V1beta4_Orders: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Orders"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "session"),
    3: .same(proto: "stats"),
    4: .same(proto: "order"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _session: String = String()
    var _stats: Bloombox_Schema_Analytics_Stats_OrderStats? = nil
    var _order: Opencannabis_Commerce_Order? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _session = source._session
      _stats = source._stats
      _order = source._order
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularStringField(value: &_storage._session)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._stats)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._order)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._session.isEmpty {
        try visitor.visitSingularStringField(value: _storage._session, fieldNumber: 2)
      }
      if let v = _storage._stats {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._order {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Bloombox_Tables_Telemetry_V1beta4_Orders) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._session != other_storage._session {return false}
        if _storage._stats != other_storage._stats {return false}
        if _storage._order != other_storage._order {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
