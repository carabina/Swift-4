// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: media/v1beta1/MediaTask.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Provides structure for a media task, where an image or document is to be handled or transformed.

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

/// Mode of operation to employ when resizing images.
public enum Bloombox_Schema_Services_Media_V1beta1_ImageResizeMode: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Don't change the size of the image.
  case noResize // = 0

  /// Resize the image to fit.
  case resize // = 1

  /// Crop the image to fit.
  case crop // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .noResize
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .noResize
    case 1: self = .resize
    case 2: self = .crop
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .noResize: return 0
    case .resize: return 1
    case .crop: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bloombox_Schema_Services_Media_V1beta1_ImageResizeMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bloombox_Schema_Services_Media_V1beta1_ImageResizeMode] = [
    .noResize,
    .resize,
    .crop,
  ]
}

#endif  // swift(>=4.2)

/// Structure for a generic task dealing with media data.
public struct Bloombox_Schema_Services_Media_V1beta1_MediaTask {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID for this particular media task.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Key for the media item in question.
  public var key: Opencannabis_Media_MediaKey {
    get {return _storage._key ?? Opencannabis_Media_MediaKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_uniqueStorage()._key = nil}

  /// Metadata for this image item.
  public var media: Opencannabis_Media_MediaItem {
    get {return _storage._media ?? Opencannabis_Media_MediaItem()}
    set {_uniqueStorage()._media = newValue}
  }
  /// Returns true if `media` has been explicitly set.
  public var hasMedia: Bool {return _storage._media != nil}
  /// Clears the value of `media`. Subsequent reads from it will return its default value.
  public mutating func clearMedia() {_uniqueStorage()._media = nil}

  /// Media task to perform.
  public var task: OneOf_Task? {
    get {return _storage._task}
    set {_uniqueStorage()._task = newValue}
  }

  /// Minify/optimize an image.
  public var imageMin: Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization {
    get {
      if case .imageMin(let v)? = _storage._task {return v}
      return Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization()
    }
    set {_uniqueStorage()._task = .imageMin(newValue)}
  }

  /// Publish an image to specialized serving infrastructure.
  public var imagePublish: Bool {
    get {
      if case .imagePublish(let v)? = _storage._task {return v}
      return false
    }
    set {_uniqueStorage()._task = .imagePublish(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Media task to perform.
  public enum OneOf_Task: Equatable {
    /// Minify/optimize an image.
    case imageMin(Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization)
    /// Publish an image to specialized serving infrastructure.
    case imagePublish(Bool)

  #if !swift(>=4.1)
    public static func ==(lhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask.OneOf_Task, rhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask.OneOf_Task) -> Bool {
      switch (lhs, rhs) {
      case (.imageMin(let l), .imageMin(let r)): return l == r
      case (.imagePublish(let l), .imagePublish(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  /// Structure spec for an image optimization task.
  public struct ImageOptimization {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Target format to transcode the media to, if applicable.
    public var format: Opencannabis_Media_MediaType.ImageKind = .unspecifiedImageType

    /// DPI setting for the output image.
    public var dpi: Opencannabis_Media_MediaType.ImageDPI = .x1

    /// Target width for the image.
    public var width: UInt64 = 0

    /// Target height for the image.
    public var height: UInt64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.services.media.v1beta1"

extension Bloombox_Schema_Services_Media_V1beta1_ImageResizeMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NO_RESIZE"),
    1: .same(proto: "RESIZE"),
    2: .same(proto: "CROP"),
  ]
}

extension Bloombox_Schema_Services_Media_V1beta1_MediaTask: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MediaTask"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "key"),
    3: .same(proto: "media"),
    10: .standard(proto: "image_min"),
    11: .standard(proto: "image_publish"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _key: Opencannabis_Media_MediaKey? = nil
    var _media: Opencannabis_Media_MediaItem? = nil
    var _task: Bloombox_Schema_Services_Media_V1beta1_MediaTask.OneOf_Task?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _key = source._key
      _media = source._media
      _task = source._task
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._media)
        case 10:
          var v: Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization?
          if let current = _storage._task {
            try decoder.handleConflictingOneOf()
            if case .imageMin(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._task = .imageMin(v)}
        case 11:
          if _storage._task != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._task = .imagePublish(v)}
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
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._media {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      switch _storage._task {
      case .imageMin(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      case .imagePublish(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 11)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask, rhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._uuid != rhs_storage._uuid {return false}
        if _storage._key != rhs_storage._key {return false}
        if _storage._media != rhs_storage._media {return false}
        if _storage._task != rhs_storage._task {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Bloombox_Schema_Services_Media_V1beta1_MediaTask.protoMessageName + ".ImageOptimization"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "format"),
    2: .same(proto: "dpi"),
    3: .same(proto: "width"),
    4: .same(proto: "height"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.format)
      case 2: try decoder.decodeSingularEnumField(value: &self.dpi)
      case 3: try decoder.decodeSingularUInt64Field(value: &self.width)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.height)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.format != .unspecifiedImageType {
      try visitor.visitSingularEnumField(value: self.format, fieldNumber: 1)
    }
    if self.dpi != .x1 {
      try visitor.visitSingularEnumField(value: self.dpi, fieldNumber: 2)
    }
    if self.width != 0 {
      try visitor.visitSingularUInt64Field(value: self.width, fieldNumber: 3)
    }
    if self.height != 0 {
      try visitor.visitSingularUInt64Field(value: self.height, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization, rhs: Bloombox_Schema_Services_Media_V1beta1_MediaTask.ImageOptimization) -> Bool {
    if lhs.format != rhs.format {return false}
    if lhs.dpi != rhs.dpi {return false}
    if lhs.width != rhs.width {return false}
    if lhs.height != rhs.height {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
