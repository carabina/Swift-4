// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/context/Application.proto
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

/// Enumerates types of applications that may run on a device and report telemetry information.
public enum Bloombox_Schema_Analytics_Context_ApplicationType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The application is internally produced and managed.
  case `internal` // = 0

  /// The application is partner colocated, hosted, or managed.
  case partner // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .internal
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .internal
    case 1: self = .partner
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .internal: return 0
    case .partner: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bloombox_Schema_Analytics_Context_ApplicationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bloombox_Schema_Analytics_Context_ApplicationType] = [
    .internal,
    .partner,
  ]
}

#endif  // swift(>=4.2)

/// Specifies information about a web application reporting information to the telemetry service.
public struct Bloombox_Schema_Analytics_Context_WebApplication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies an origin for a web application.
  public var origin: String = String()

  /// Full, absolute URL the user was at when the event was sent.
  public var location: String = String()

  /// Anchor in the URL, if any.
  public var anchor: String = String()

  /// Title of the current webpage.
  public var title: String = String()

  /// Referring URL for this webpage.
  public var referrer: String = String()

  /// Protocol that was used to serve this URL.
  public var `protocol`: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Specifies information about the application reporting information to the telemetry service.
public struct Bloombox_Schema_Analytics_Context_DeviceApplication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type of application.
  public var type: Bloombox_Schema_Analytics_Context_ApplicationType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Version for the reporting application.
  public var version: Opencannabis_Structs_VersionSpec {
    get {return _storage._version ?? Opencannabis_Structs_VersionSpec()}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {_uniqueStorage()._version = nil}

  /// Specifies which application is running. How that is specified depends on the architecture behind the application.
  public var spec: OneOf_Spec? {
    get {return _storage._spec}
    set {_uniqueStorage()._spec = newValue}
  }

  /// Specifies information about an event that was sent from a web application.
  public var web: Bloombox_Schema_Analytics_Context_WebApplication {
    get {
      if case .web(let v)? = _storage._spec {return v}
      return Bloombox_Schema_Analytics_Context_WebApplication()
    }
    set {_uniqueStorage()._spec = .web(newValue)}
  }

  /// Specifies a bundle ID for an iOS application.
  public var bundleID: String {
    get {
      if case .bundleID(let v)? = _storage._spec {return v}
      return String()
    }
    set {_uniqueStorage()._spec = .bundleID(newValue)}
  }

  /// Specifies an application ID for an Android application.
  public var androidPackageID: String {
    get {
      if case .androidPackageID(let v)? = _storage._spec {return v}
      return String()
    }
    set {_uniqueStorage()._spec = .androidPackageID(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies which application is running. How that is specified depends on the architecture behind the application.
  public enum OneOf_Spec: Equatable {
    /// Specifies information about an event that was sent from a web application.
    case web(Bloombox_Schema_Analytics_Context_WebApplication)
    /// Specifies a bundle ID for an iOS application.
    case bundleID(String)
    /// Specifies an application ID for an Android application.
    case androidPackageID(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Bloombox_Schema_Analytics_Context_DeviceApplication.OneOf_Spec, rhs: Bloombox_Schema_Analytics_Context_DeviceApplication.OneOf_Spec) -> Bool {
      switch (lhs, rhs) {
      case (.web(let l), .web(let r)): return l == r
      case (.bundleID(let l), .bundleID(let r)): return l == r
      case (.androidPackageID(let l), .androidPackageID(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.analytics.context"

extension Bloombox_Schema_Analytics_Context_ApplicationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "INTERNAL"),
    1: .same(proto: "PARTNER"),
  ]
}

extension Bloombox_Schema_Analytics_Context_WebApplication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WebApplication"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "origin"),
    2: .same(proto: "location"),
    3: .same(proto: "anchor"),
    4: .same(proto: "title"),
    5: .same(proto: "referrer"),
    6: .same(proto: "protocol"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.origin)
      case 2: try decoder.decodeSingularStringField(value: &self.location)
      case 3: try decoder.decodeSingularStringField(value: &self.anchor)
      case 4: try decoder.decodeSingularStringField(value: &self.title)
      case 5: try decoder.decodeSingularStringField(value: &self.referrer)
      case 6: try decoder.decodeSingularStringField(value: &self.`protocol`)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.origin.isEmpty {
      try visitor.visitSingularStringField(value: self.origin, fieldNumber: 1)
    }
    if !self.location.isEmpty {
      try visitor.visitSingularStringField(value: self.location, fieldNumber: 2)
    }
    if !self.anchor.isEmpty {
      try visitor.visitSingularStringField(value: self.anchor, fieldNumber: 3)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 4)
    }
    if !self.referrer.isEmpty {
      try visitor.visitSingularStringField(value: self.referrer, fieldNumber: 5)
    }
    if !self.`protocol`.isEmpty {
      try visitor.visitSingularStringField(value: self.`protocol`, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Analytics_Context_WebApplication, rhs: Bloombox_Schema_Analytics_Context_WebApplication) -> Bool {
    if lhs.origin != rhs.origin {return false}
    if lhs.location != rhs.location {return false}
    if lhs.anchor != rhs.anchor {return false}
    if lhs.title != rhs.title {return false}
    if lhs.referrer != rhs.referrer {return false}
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Analytics_Context_DeviceApplication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeviceApplication"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "version"),
    10: .same(proto: "web"),
    20: .standard(proto: "bundle_id"),
    30: .standard(proto: "android_package_id"),
  ]

  fileprivate class _StorageClass {
    var _type: Bloombox_Schema_Analytics_Context_ApplicationType = .internal
    var _version: Opencannabis_Structs_VersionSpec? = nil
    var _spec: Bloombox_Schema_Analytics_Context_DeviceApplication.OneOf_Spec?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _version = source._version
      _spec = source._spec
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._version)
        case 10:
          var v: Bloombox_Schema_Analytics_Context_WebApplication?
          if let current = _storage._spec {
            try decoder.handleConflictingOneOf()
            if case .web(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._spec = .web(v)}
        case 20:
          if _storage._spec != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._spec = .bundleID(v)}
        case 30:
          if _storage._spec != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._spec = .androidPackageID(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._type != .internal {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if let v = _storage._version {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      switch _storage._spec {
      case .web(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      case .bundleID(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 20)
      case .androidPackageID(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 30)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Analytics_Context_DeviceApplication, rhs: Bloombox_Schema_Analytics_Context_DeviceApplication) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._type != rhs_storage._type {return false}
        if _storage._version != rhs_storage._version {return false}
        if _storage._spec != rhs_storage._spec {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
