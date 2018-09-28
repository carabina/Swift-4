// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/Datamodel.proto
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

/// Specifies how a sub-object in a particular message should be persisted.
public enum Core_CollectionMode: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// `NESTED` mode stores the specified collection within the parent document.
  case nested // = 0

  /// `COLLECTION` mode stores the specified collection as a subcollection under the parent document.
  case collection // = 1

  /// `GROUP` mode stores the specified collection at the root of the data system.
  case group // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .nested
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .nested
    case 1: self = .collection
    case 2: self = .group
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .nested: return 0
    case .collection: return 1
    case .group: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumerates field handling special-cases. Fields may be annotated with these special types to change the way they are
/// handled by the model mapping layer.
public enum Core_FieldType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// This is a standard field (default value).
  case standard // = 0

  /// This is a key field (a primary key submessage) for a GROUP or COLLECTION-moded message.
  case key // = 1

  /// This is an ID field that should be used as the final name of this document.
  case id // = 2

  /// This is a tags-style field.
  case tags // = 3

  /// Store this object as a special flags-style mapping.
  case flags // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .standard
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .standard
    case 1: self = .key
    case 2: self = .id
    case 3: self = .tags
    case 4: self = .flags
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .standard: return 0
    case .key: return 1
    case .id: return 2
    case .tags: return 3
    case .flags: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies options related to persistence of underlying model data associated with this particular message type. This
/// includes settings related to Firestore and other data engines.
public struct Core_PersistenceOptions: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PersistenceOptions"

  /// Specifies the storage mode for this entity.
  public var mode: Core_CollectionMode = .nested

  /// Data path for a given message, with templated items in the URL corresponding to parameters in the item's key path.
  public var path: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.mode)
      case 2: try decoder.decodeSingularStringField(value: &self.path)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.mode != .nested {
      try visitor.visitSingularEnumField(value: self.mode, fieldNumber: 1)
    }
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Options specific to model integration with table-style engines, where there can be a table name and/or description
/// that should be mapped to a particular message structure.
public struct Core_TableOptions: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TableOptions"

  /// Name of the table bound to this model.
  public var name: String = String()

  /// Description for the table bound to this model.
  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.description_p)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies options related to storing a submessage.
public struct Core_SubmessageOptions: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SubmessageOptions"

  /// Collection storage mode for the given submessage field.
  public var mode: Core_CollectionMode = .nested

  /// Data path for the given submessage field.
  public var path: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.mode)
      case 3: try decoder.decodeSingularStringField(value: &self.path)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.mode != .nested {
      try visitor.visitSingularEnumField(value: self.mode, fieldNumber: 1)
    }
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Persistence/data engine options specific to an individual message field.
public struct Core_FieldPersistenceOptions: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".FieldPersistenceOptions"

  /// Field type, for special-case fields.
  public var type: Core_FieldType = .standard

  /// String description of this field included in schemas.
  public var description_p: String = String()

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
      case 2: try decoder.decodeSingularStringField(value: &self.description_p)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .standard {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies options specific to storing this field in a tabular-style data engine.
public struct Core_TableFieldOptions: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TableFieldOptions"

  /// Marks this field as `REQUIRED` in tabular schemas.
  public var require: Bool = false

  /// Marks this field as ignored for serialization in tabular circumstances.
  public var ignore: Bool = false

  /// Overrides the BigQuery type associated with the exported form of this message.
  public var bqtype: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.require)
      case 2: try decoder.decodeSingularBoolField(value: &self.ignore)
      case 3: try decoder.decodeSingularStringField(value: &self.bqtype)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.require != false {
      try visitor.visitSingularBoolField(value: self.require, fieldNumber: 1)
    }
    if self.ignore != false {
      try visitor.visitSingularBoolField(value: self.ignore, fieldNumber: 2)
    }
    if !self.bqtype.isEmpty {
      try visitor.visitSingularStringField(value: self.bqtype, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Extension support defined in Datamodel.proto.

extension Google_Protobuf_FieldOptions {

  /// Database engine persistence options specific to an individual document field.
  public var Core_field: Core_FieldPersistenceOptions {
    get {return getExtensionValue(ext: Core_Extensions_field) ?? Core_FieldPersistenceOptions()}
    set {setExtensionValue(ext: Core_Extensions_field, value: newValue)}
  }
  /// Returns true if extension `Core_Extensions_field`
  /// has been explicitly set.
  public var hasCore_field: Bool {
    return hasExtensionValue(ext: Core_Extensions_field)
  }
  /// Clears the value of extension `Core_Extensions_field`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCore_field() {
    clearExtensionValue(ext: Core_Extensions_field)
  }

  /// Specifies options related to storage of this field in a tabular-style data engine.
  public var Core_column: Core_TableFieldOptions {
    get {return getExtensionValue(ext: Core_Extensions_column) ?? Core_TableFieldOptions()}
    set {setExtensionValue(ext: Core_Extensions_column, value: newValue)}
  }
  /// Returns true if extension `Core_Extensions_column`
  /// has been explicitly set.
  public var hasCore_column: Bool {
    return hasExtensionValue(ext: Core_Extensions_column)
  }
  /// Clears the value of extension `Core_Extensions_column`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCore_column() {
    clearExtensionValue(ext: Core_Extensions_column)
  }

  /// Specifies options related to storage of a submessage-typed field.
  public var Core_collection: Core_SubmessageOptions {
    get {return getExtensionValue(ext: Core_Extensions_collection) ?? Core_SubmessageOptions()}
    set {setExtensionValue(ext: Core_Extensions_collection, value: newValue)}
  }
  /// Returns true if extension `Core_Extensions_collection`
  /// has been explicitly set.
  public var hasCore_collection: Bool {
    return hasExtensionValue(ext: Core_Extensions_collection)
  }
  /// Clears the value of extension `Core_Extensions_collection`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCore_collection() {
    clearExtensionValue(ext: Core_Extensions_collection)
  }
}

extension Google_Protobuf_MessageOptions {

  /// Settings specific to how a particular message entity is stored in the underlying persistence engine. For Bloombox,
  /// this generally means Cloud Firestore.
  public var Core_db: Core_PersistenceOptions {
    get {return getExtensionValue(ext: Core_Extensions_db) ?? Core_PersistenceOptions()}
    set {setExtensionValue(ext: Core_Extensions_db, value: newValue)}
  }
  /// Returns true if extension `Core_Extensions_db`
  /// has been explicitly set.
  public var hasCore_db: Bool {
    return hasExtensionValue(ext: Core_Extensions_db)
  }
  /// Clears the value of extension `Core_Extensions_db`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCore_db() {
    clearExtensionValue(ext: Core_Extensions_db)
  }

  /// Table-specific configuration for this message. Kicks in when engines are in play that observe or couch data in a
  /// table/row-style pattern. Usually used for integration with BigQuery.
  public var Core_table: Core_TableOptions {
    get {return getExtensionValue(ext: Core_Extensions_table) ?? Core_TableOptions()}
    set {setExtensionValue(ext: Core_Extensions_table, value: newValue)}
  }
  /// Returns true if extension `Core_Extensions_table`
  /// has been explicitly set.
  public var hasCore_table: Bool {
    return hasExtensionValue(ext: Core_Extensions_table)
  }
  /// Clears the value of extension `Core_Extensions_table`.
  /// Subsequent reads from it will return its default value.
  public mutating func clearCore_table() {
    clearExtensionValue(ext: Core_Extensions_table)
  }

}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
public let Core_Datamodel_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Core_Extensions_db,
  Core_Extensions_table,
  Core_Extensions_field,
  Core_Extensions_column,
  Core_Extensions_collection
]

/// Settings specific to how a particular message entity is stored in the underlying persistence engine. For Bloombox,
/// this generally means Cloud Firestore.
let Core_Extensions_db = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Core_PersistenceOptions>, Google_Protobuf_MessageOptions>(
  _protobuf_fieldNumber: 6000,
  fieldName: "core.db"
)

/// Table-specific configuration for this message. Kicks in when engines are in play that observe or couch data in a
/// table/row-style pattern. Usually used for integration with BigQuery.
let Core_Extensions_table = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Core_TableOptions>, Google_Protobuf_MessageOptions>(
  _protobuf_fieldNumber: 6001,
  fieldName: "core.table"
)

/// Database engine persistence options specific to an individual document field.
let Core_Extensions_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Core_FieldPersistenceOptions>, Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 7000,
  fieldName: "core.field"
)

/// Specifies options related to storage of this field in a tabular-style data engine.
let Core_Extensions_column = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Core_TableFieldOptions>, Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 7001,
  fieldName: "core.column"
)

/// Specifies options related to storage of a submessage-typed field.
let Core_Extensions_collection = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Core_SubmessageOptions>, Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 7002,
  fieldName: "core.collection"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "core"

extension Core_CollectionMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NESTED"),
    1: .same(proto: "COLLECTION"),
    2: .same(proto: "GROUP"),
  ]
}

extension Core_FieldType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STANDARD"),
    1: .same(proto: "KEY"),
    2: .same(proto: "ID"),
    3: .same(proto: "TAGS"),
    4: .same(proto: "FLAGS"),
  ]
}

extension Core_PersistenceOptions: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mode"),
    2: .same(proto: "path"),
  ]

  public func _protobuf_generated_isEqualTo(other: Core_PersistenceOptions) -> Bool {
    if self.mode != other.mode {return false}
    if self.path != other.path {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Core_TableOptions: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "description"),
  ]

  public func _protobuf_generated_isEqualTo(other: Core_TableOptions) -> Bool {
    if self.name != other.name {return false}
    if self.description_p != other.description_p {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Core_SubmessageOptions: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mode"),
    3: .same(proto: "path"),
  ]

  public func _protobuf_generated_isEqualTo(other: Core_SubmessageOptions) -> Bool {
    if self.mode != other.mode {return false}
    if self.path != other.path {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Core_FieldPersistenceOptions: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "description"),
  ]

  public func _protobuf_generated_isEqualTo(other: Core_FieldPersistenceOptions) -> Bool {
    if self.type != other.type {return false}
    if self.description_p != other.description_p {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Core_TableFieldOptions: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "require"),
    2: .same(proto: "ignore"),
    3: .same(proto: "bqtype"),
  ]

  public func _protobuf_generated_isEqualTo(other: Core_TableFieldOptions) -> Bool {
    if self.require != other.require {return false}
    if self.ignore != other.ignore {return false}
    if self.bqtype != other.bqtype {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
