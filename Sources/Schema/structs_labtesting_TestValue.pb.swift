// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/labtesting/TestValue.proto
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

/// -- Testing: Base (Shared) Protocol
public enum Opencannabis_Structs_Labtesting_TestValueType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case milligrams // = 0
  case percentage // = 1
  case presence // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .milligrams
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .milligrams
    case 1: self = .percentage
    case 2: self = .presence
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .milligrams: return 0
    case .percentage: return 1
    case .presence: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the different types of testing error that may be reported: percent error, absolute error, and
/// relative error.
public enum Opencannabis_Structs_Labtesting_TestErrorType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case percent // = 0
  case absolute // = 1
  case relative // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .percent
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .percent
    case 1: self = .absolute
    case 2: self = .relative
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .percent: return 0
    case .absolute: return 1
    case .relative: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

public enum Opencannabis_Structs_Labtesting_TestMediaType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case certificate // = 0
  case results // = 1
  case productImage // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .certificate
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .certificate
    case 1: self = .results
    case 2: self = .productImage
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .certificate: return 0
    case .results: return 1
    case .productImage: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

public struct Opencannabis_Structs_Labtesting_TestValue: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TestValue"

  public var type: Opencannabis_Structs_Labtesting_TestValueType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  public var error: Opencannabis_Structs_Labtesting_TestValue.TestError {
    get {return _storage._error ?? Opencannabis_Structs_Labtesting_TestValue.TestError()}
    set {_uniqueStorage()._error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  public var hasError: Bool {return _storage._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  public mutating func clearError() {_storage._error = nil}

  public var value: OneOf_Value? {
    get {return _storage._value}
    set {_uniqueStorage()._value = newValue}
  }

  public var measurement: Double {
    get {
      if case .measurement(let v)? = _storage._value {return v}
      return 0
    }
    set {_uniqueStorage()._value = .measurement(newValue)}
  }

  public var present: Bool {
    get {
      if case .present(let v)? = _storage._value {return v}
      return false
    }
    set {_uniqueStorage()._value = .present(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Value: Equatable {
    case measurement(Double)
    case present(Bool)

    public static func ==(lhs: Opencannabis_Structs_Labtesting_TestValue.OneOf_Value, rhs: Opencannabis_Structs_Labtesting_TestValue.OneOf_Value) -> Bool {
      switch (lhs, rhs) {
      case (.measurement(let l), .measurement(let r)): return l == r
      case (.present(let l), .present(let r)): return l == r
      default: return false
      }
    }
  }

  /// Represents the degree of uncertainty that arises during testing and consists of the type of error being reported
  /// along with the error value.  See more information at: 
  /// https://www.nde-ed.org/GeneralResources/ErrorAnalysis/UncertaintyTerms.htm
  public struct TestError: SwiftProtobuf.Message {
    public static let protoMessageName: String = Opencannabis_Structs_Labtesting_TestValue.protoMessageName + ".TestError"

    public var type: Opencannabis_Structs_Labtesting_TestErrorType = .percent

    public var value: Double = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &self.type)
        case 2: try decoder.decodeSingularDoubleField(value: &self.value)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.type != .percent {
        try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
      }
      if self.value != 0 {
        try visitor.visitSingularDoubleField(value: self.value, fieldNumber: 2)
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._error)
        case 10:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: Double?
          try decoder.decodeSingularDoubleField(value: &v)
          if let v = v {_storage._value = .measurement(v)}
        case 20:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._value = .present(v)}
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
      if _storage._type != .milligrams {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._error {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      switch _storage._value {
      case .measurement(let v)?:
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 10)
      case .present(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 20)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Opencannabis_Structs_Labtesting_TestMedia: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TestMedia"

  public var type: Opencannabis_Structs_Labtesting_TestMediaType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  public var mediaItem: Opencannabis_Media_MediaItem {
    get {return _storage._mediaItem ?? Opencannabis_Media_MediaItem()}
    set {_uniqueStorage()._mediaItem = newValue}
  }
  /// Returns true if `mediaItem` has been explicitly set.
  public var hasMediaItem: Bool {return _storage._mediaItem != nil}
  /// Clears the value of `mediaItem`. Subsequent reads from it will return its default value.
  public mutating func clearMediaItem() {_storage._mediaItem = nil}

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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._mediaItem)
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
      if _storage._type != .certificate {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._mediaItem {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.structs.labtesting"

extension Opencannabis_Structs_Labtesting_TestValueType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MILLIGRAMS"),
    1: .same(proto: "PERCENTAGE"),
    2: .same(proto: "PRESENCE"),
  ]
}

extension Opencannabis_Structs_Labtesting_TestErrorType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PERCENT"),
    1: .same(proto: "ABSOLUTE"),
    2: .same(proto: "RELATIVE"),
  ]
}

extension Opencannabis_Structs_Labtesting_TestMediaType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CERTIFICATE"),
    1: .same(proto: "RESULTS"),
    2: .same(proto: "PRODUCT_IMAGE"),
  ]
}

extension Opencannabis_Structs_Labtesting_TestValue: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "error"),
    10: .same(proto: "measurement"),
    20: .same(proto: "present"),
  ]

  fileprivate class _StorageClass {
    var _type: Opencannabis_Structs_Labtesting_TestValueType = .milligrams
    var _error: Opencannabis_Structs_Labtesting_TestValue.TestError? = nil
    var _value: Opencannabis_Structs_Labtesting_TestValue.OneOf_Value?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _error = source._error
      _value = source._value
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Structs_Labtesting_TestValue) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._error != other_storage._error {return false}
        if _storage._value != other_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Labtesting_TestValue.TestError: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "value"),
  ]

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Structs_Labtesting_TestValue.TestError) -> Bool {
    if self.type != other.type {return false}
    if self.value != other.value {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Labtesting_TestMedia: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "media_item"),
  ]

  fileprivate class _StorageClass {
    var _type: Opencannabis_Structs_Labtesting_TestMediaType = .certificate
    var _mediaItem: Opencannabis_Media_MediaItem? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _mediaItem = source._mediaItem
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Structs_Labtesting_TestMedia) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._mediaItem != other_storage._mediaItem {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
