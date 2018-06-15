// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: content/Content.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies the generic concept of "content," which may be attached to nearly anything.

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

/// Specifies a freeform content payload of some kind.
public struct Opencannabis_Content_Content {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Format/underlying type of content data.
  public var type: Opencannabis_Content_Content.TypeEnum {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Encoding of underlying content data.
  public var encoding: Opencannabis_Content_Content.Encoding {
    get {return _storage._encoding}
    set {_uniqueStorage()._encoding = newValue}
  }

  /// Raw bytes of underlying content data.
  public var content: String {
    get {return _storage._content}
    set {_uniqueStorage()._content = newValue}
  }

  /// Language information for underlying content.
  public var language: Opencannabis_Base_Language {
    get {return _storage._language}
    set {_uniqueStorage()._language = newValue}
  }

  /// Compression settings for underlying content.
  public var compression: Opencannabis_Base_Compression {
    get {return _storage._compression ?? Opencannabis_Base_Compression()}
    set {_uniqueStorage()._compression = newValue}
  }
  /// Returns true if `compression` has been explicitly set.
  public var hasCompression: Bool {return _storage._compression != nil}
  /// Clears the value of `compression`. Subsequent reads from it will return its default value.
  public mutating func clearCompression() {_storage._compression = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Enumerates supported types/formats for content data.
  public enum TypeEnum: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Plaintext format.
    case text // = 0

    /// Markdown format.
    case markdown // = 1

    /// HTML format.
    case html // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .text
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .text
      case 1: self = .markdown
      case 2: self = .html
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .text: return 0
      case .markdown: return 1
      case .html: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Enumerates supported encodings for content data.
  public enum Encoding: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// UTF-8 standard encoding.
    case utf8 // = 0

    /// Base-64 encoded UTF-8.
    case b64 // = 1

    /// Base-64 encoded ASCII.
    case b64Ascii // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .utf8
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .utf8
      case 1: self = .b64
      case 2: self = .b64Ascii
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .utf8: return 0
      case .b64: return 1
      case .b64Ascii: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.content"

extension Opencannabis_Content_Content: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Content"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "encoding"),
    3: .same(proto: "content"),
    4: .same(proto: "language"),
    5: .same(proto: "compression"),
  ]

  fileprivate class _StorageClass {
    var _type: Opencannabis_Content_Content.TypeEnum = .text
    var _encoding: Opencannabis_Content_Content.Encoding = .utf8
    var _content: String = String()
    var _language: Opencannabis_Base_Language = .english
    var _compression: Opencannabis_Base_Compression? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _encoding = source._encoding
      _content = source._content
      _language = source._language
      _compression = source._compression
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
        case 2: try decoder.decodeSingularEnumField(value: &_storage._encoding)
        case 3: try decoder.decodeSingularStringField(value: &_storage._content)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._language)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._compression)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._type != .text {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if _storage._encoding != .utf8 {
        try visitor.visitSingularEnumField(value: _storage._encoding, fieldNumber: 2)
      }
      if !_storage._content.isEmpty {
        try visitor.visitSingularStringField(value: _storage._content, fieldNumber: 3)
      }
      if _storage._language != .english {
        try visitor.visitSingularEnumField(value: _storage._language, fieldNumber: 4)
      }
      if let v = _storage._compression {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Opencannabis_Content_Content) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._encoding != other_storage._encoding {return false}
        if _storage._content != other_storage._content {return false}
        if _storage._language != other_storage._language {return false}
        if _storage._compression != other_storage._compression {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Content_Content.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TEXT"),
    1: .same(proto: "MARKDOWN"),
    2: .same(proto: "HTML"),
  ]
}

extension Opencannabis_Content_Content.Encoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UTF8"),
    1: .same(proto: "B64"),
    2: .same(proto: "B64_ASCII"),
  ]
}
