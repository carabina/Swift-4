// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: identity/IDMedia.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies structures that track/express media related to government-issued ID for a user.

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

/// Known types of document media that can be attached to an ID.
public enum Bloombox_Schema_Identity_IDMedia: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Picture of the front of the document.
  case documentFront // = 0

  /// Picture of the back of the document.
  case documentRear // = 1

  /// Cropped/extracted person portrait from the document.
  case portrait // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .documentFront
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .documentFront
    case 1: self = .documentRear
    case 2: self = .portrait
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .documentFront: return 0
    case .documentRear: return 1
    case .portrait: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bloombox_Schema_Identity_IDMedia: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bloombox_Schema_Identity_IDMedia] = [
    .documentFront,
    .documentRear,
    .portrait,
  ]
}

#endif  // swift(>=4.2)

/// Media attachment that binds some document media to a particular driver's license.
public struct Bloombox_Schema_Identity_IDMediaAttachment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies the kind of media being attached.
  public var type: Bloombox_Schema_Identity_IDMedia = .documentFront

  /// Specifies the orientation of the attached media.
  public var orientation: Opencannabis_Media_MediaOrientation = .up

  /// Specifies raw data for the attached media.
  public var data: Data = SwiftProtobuf.Internal.emptyData

  /// Specifies the type of image employed.
  public var imageType: UInt32 = 0

  /// Specifies the quality estimate.
  public var quality: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.identity"

extension Bloombox_Schema_Identity_IDMedia: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DOCUMENT_FRONT"),
    1: .same(proto: "DOCUMENT_REAR"),
    2: .same(proto: "PORTRAIT"),
  ]
}

extension Bloombox_Schema_Identity_IDMediaAttachment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IDMediaAttachment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "orientation"),
    3: .same(proto: "data"),
    4: .standard(proto: "image_type"),
    5: .same(proto: "quality"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.type)
      case 2: try decoder.decodeSingularEnumField(value: &self.orientation)
      case 3: try decoder.decodeSingularBytesField(value: &self.data)
      case 4: try decoder.decodeSingularUInt32Field(value: &self.imageType)
      case 5: try decoder.decodeSingularDoubleField(value: &self.quality)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .documentFront {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.orientation != .up {
      try visitor.visitSingularEnumField(value: self.orientation, fieldNumber: 2)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 3)
    }
    if self.imageType != 0 {
      try visitor.visitSingularUInt32Field(value: self.imageType, fieldNumber: 4)
    }
    if self.quality != 0 {
      try visitor.visitSingularDoubleField(value: self.quality, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bloombox_Schema_Identity_IDMediaAttachment, rhs: Bloombox_Schema_Identity_IDMediaAttachment) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.orientation != rhs.orientation {return false}
    if lhs.data != rhs.data {return false}
    if lhs.imageType != rhs.imageType {return false}
    if lhs.quality != rhs.quality {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
