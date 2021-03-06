// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/Genetics.proto
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

/// Specifies genetics for a particular plant or flower item.
public struct Opencannabis_Structs_Genetics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies the male side of an item's genetics.
  public var male: Opencannabis_Base_ProductReference {
    get {return _storage._male ?? Opencannabis_Base_ProductReference()}
    set {_uniqueStorage()._male = newValue}
  }
  /// Returns true if `male` has been explicitly set.
  public var hasMale: Bool {return _storage._male != nil}
  /// Clears the value of `male`. Subsequent reads from it will return its default value.
  public mutating func clearMale() {_uniqueStorage()._male = nil}

  /// Specifies the female side of an item's genetics.
  public var female: Opencannabis_Base_ProductReference {
    get {return _storage._female ?? Opencannabis_Base_ProductReference()}
    set {_uniqueStorage()._female = newValue}
  }
  /// Returns true if `female` has been explicitly set.
  public var hasFemale: Bool {return _storage._female != nil}
  /// Clears the value of `female`. Subsequent reads from it will return its default value.
  public mutating func clearFemale() {_uniqueStorage()._female = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.structs"

extension Opencannabis_Structs_Genetics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Genetics"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "male"),
    2: .same(proto: "female"),
  ]

  fileprivate class _StorageClass {
    var _male: Opencannabis_Base_ProductReference? = nil
    var _female: Opencannabis_Base_ProductReference? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _male = source._male
      _female = source._female
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._male)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._female)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._male {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._female {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Genetics, rhs: Opencannabis_Structs_Genetics) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._male != rhs_storage._male {return false}
        if _storage._female != rhs_storage._female {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
