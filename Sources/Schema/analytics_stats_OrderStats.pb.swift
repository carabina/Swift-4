// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/stats/OrderStats.proto
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

/// Specifies a set of basic calculated statistics, computed at the level of an entire user session.
public struct Bloombox_Schema_Analytics_Stats_OrderStats {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Original ID of the order.
  public var oid: String {
    get {return _storage._oid}
    set {_uniqueStorage()._oid = newValue}
  }

  /// Partner scope seen as associated with this commercial order.
  public var partnerScope: String {
    get {return _storage._partnerScope}
    set {_uniqueStorage()._partnerScope = newValue}
  }

  /// Timestamp representing when this order was submitted.
  public var occurred: Opencannabis_Temporal_Instant {
    get {return _storage._occurred ?? Opencannabis_Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_uniqueStorage()._occurred = nil}

  /// Count of unique products ordered (i.e. regardless of item 'count' per order).
  public var uniqueItemCount: UInt32 {
    get {return _storage._uniqueItemCount}
    set {_uniqueStorage()._uniqueItemCount = newValue}
  }

  /// Count of total products ordered (i.e. including item 'count' per order).
  public var totalItemCount: UInt32 {
    get {return _storage._totalItemCount}
    set {_uniqueStorage()._totalItemCount = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.analytics.stats"

extension Bloombox_Schema_Analytics_Stats_OrderStats: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OrderStats"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "oid"),
    2: .standard(proto: "partner_scope"),
    3: .same(proto: "occurred"),
    4: .standard(proto: "unique_item_count"),
    5: .standard(proto: "total_item_count"),
  ]

  fileprivate class _StorageClass {
    var _oid: String = String()
    var _partnerScope: String = String()
    var _occurred: Opencannabis_Temporal_Instant? = nil
    var _uniqueItemCount: UInt32 = 0
    var _totalItemCount: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _oid = source._oid
      _partnerScope = source._partnerScope
      _occurred = source._occurred
      _uniqueItemCount = source._uniqueItemCount
      _totalItemCount = source._totalItemCount
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._oid)
        case 2: try decoder.decodeSingularStringField(value: &_storage._partnerScope)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        case 4: try decoder.decodeSingularUInt32Field(value: &_storage._uniqueItemCount)
        case 5: try decoder.decodeSingularUInt32Field(value: &_storage._totalItemCount)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._oid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._oid, fieldNumber: 1)
      }
      if !_storage._partnerScope.isEmpty {
        try visitor.visitSingularStringField(value: _storage._partnerScope, fieldNumber: 2)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._uniqueItemCount != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._uniqueItemCount, fieldNumber: 4)
      }
      if _storage._totalItemCount != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._totalItemCount, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Analytics_Stats_OrderStats, rhs: Bloombox_Schema_Analytics_Stats_OrderStats) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._oid != rhs_storage._oid {return false}
        if _storage._partnerScope != rhs_storage._partnerScope {return false}
        if _storage._occurred != rhs_storage._occurred {return false}
        if _storage._uniqueItemCount != rhs_storage._uniqueItemCount {return false}
        if _storage._totalItemCount != rhs_storage._totalItemCount {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
