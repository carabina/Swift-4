// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: identity/ids/USDL.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Specifies structures that allow the storage/expression of a user's ID as a US Driver's License.

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

/// Enumerates known fields on a US Driver's License, that may be expressed or extracted via data entry/scanning of the
/// document with OCR or reading the document's barcodes.
public enum Bloombox_Schema_Identity_Ids_USDLField: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Raw barcode data for the back USDL barcode, which usually carries most of the data and is generally encoded using
  /// PDF417 (for instance, this is the case for California and New York).
  case backBarcode // = 0

  /// Person's family name, or last name.
  case familyName // = 1

  /// Person's first anme, or given name.
  case givenName // = 2

  /// Person's middle name.
  case middleName // = 3

  /// Person's full name, expressed in a concatenated field.
  case fullName // = 4

  /// Person's name prefix, like "Dr" or some other salutation.
  case namePrefix // = 5

  /// Person's name suffix, like "III".
  case nameSuffix // = 6

  /// Date of birth for this person.
  case dateOfBirth // = 10

  /// Gender specified for this person.
  case sex // = 11

  /// Physical height specified for this person.
  case height // = 12

  /// Physical weight specified for this person.
  case weight // = 13

  /// Eye color specified for this person.
  case eyeColor // = 14

  /// Hair color specified for this person.
  case hairColor // = 15

  /// Full, concatenated main user address string.
  case fullAddress // = 20

  /// First line of the main address.
  case addressLine // = 21

  /// Second line of the main address.
  case addressLine2 // = 22

  /// City name from the main address.
  case addressCity // = 23

  /// Postal or zip code from the main address.
  case postalCode // = 24

  /// Issuing state jurisdiction code for this document.
  case stateJurisdiction // = 25

  /// ID number for this license document.
  case licenseID // = 30

  /// Issuance date for this license document.
  case licenseIssueDate // = 31

  /// Expiration date for this license document.
  case licenseExpiryDate // = 32

  /// Jurisdiction of issuance for this license document.
  case issuerJurisdiction // = 33

  /// Jurisdiction-scoped format specifier for this document.
  case issuerJurisdictionFormatVersion // = 34

  /// Unique document code for this specific instance of a license document.
  case uniqueDocumentCode // = 40

  /// Inventory unique control code, used for license document disambiguation if specified.
  case inventoryControlCode // = 41

  /// Date the user will turn 18 years old.
  case under18Date // = 50

  /// Date the user will turn 19 years old.
  case under19Date // = 51

  /// Date the user will turn 21 years old.
  case under21Date // = 52

  /// Flag to indicate the user was under 18 when this document was issued, and may still be.
  case under18 // = 60

  /// Flag to indicate the user was under 19 when this document was issued, and may still be.
  case under19 // = 61

  /// Flag to indicate the user was under 21 when this document was issued, and may still be.
  case under21 // = 62

  /// Flag to indicate this person opted to be an organ donor.
  case organDonor // = 63

  /// Flag to indicate that this person is a veteran.
  case veteran // = 64

  /// Flag to indicate that this person is a nonresident.
  case nonresident // = 65

  /// Race or ethnicity information specified in this document.
  case raceEthnicity // = 70

  /// Compliance-related data field for storage standards.
  case complianceType // = 71
  case UNRECOGNIZED(Int)

  public init() {
    self = .backBarcode
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .backBarcode
    case 1: self = .familyName
    case 2: self = .givenName
    case 3: self = .middleName
    case 4: self = .fullName
    case 5: self = .namePrefix
    case 6: self = .nameSuffix
    case 10: self = .dateOfBirth
    case 11: self = .sex
    case 12: self = .height
    case 13: self = .weight
    case 14: self = .eyeColor
    case 15: self = .hairColor
    case 20: self = .fullAddress
    case 21: self = .addressLine
    case 22: self = .addressLine2
    case 23: self = .addressCity
    case 24: self = .postalCode
    case 25: self = .stateJurisdiction
    case 30: self = .licenseID
    case 31: self = .licenseIssueDate
    case 32: self = .licenseExpiryDate
    case 33: self = .issuerJurisdiction
    case 34: self = .issuerJurisdictionFormatVersion
    case 40: self = .uniqueDocumentCode
    case 41: self = .inventoryControlCode
    case 50: self = .under18Date
    case 51: self = .under19Date
    case 52: self = .under21Date
    case 60: self = .under18
    case 61: self = .under19
    case 62: self = .under21
    case 63: self = .organDonor
    case 64: self = .veteran
    case 65: self = .nonresident
    case 70: self = .raceEthnicity
    case 71: self = .complianceType
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .backBarcode: return 0
    case .familyName: return 1
    case .givenName: return 2
    case .middleName: return 3
    case .fullName: return 4
    case .namePrefix: return 5
    case .nameSuffix: return 6
    case .dateOfBirth: return 10
    case .sex: return 11
    case .height: return 12
    case .weight: return 13
    case .eyeColor: return 14
    case .hairColor: return 15
    case .fullAddress: return 20
    case .addressLine: return 21
    case .addressLine2: return 22
    case .addressCity: return 23
    case .postalCode: return 24
    case .stateJurisdiction: return 25
    case .licenseID: return 30
    case .licenseIssueDate: return 31
    case .licenseExpiryDate: return 32
    case .issuerJurisdiction: return 33
    case .issuerJurisdictionFormatVersion: return 34
    case .uniqueDocumentCode: return 40
    case .inventoryControlCode: return 41
    case .under18Date: return 50
    case .under19Date: return 51
    case .under21Date: return 52
    case .under18: return 60
    case .under19: return 61
    case .under21: return 62
    case .organDonor: return 63
    case .veteran: return 64
    case .nonresident: return 65
    case .raceEthnicity: return 70
    case .complianceType: return 71
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies an individual raw field value read or scanned from a United States Driver's License.
public struct Bloombox_Schema_Identity_Ids_USDLFieldValue: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".USDLFieldValue"

  /// Field that we are storing data for.
  public var field: Bloombox_Schema_Identity_Ids_USDLField = .backBarcode

  public var data: Bloombox_Schema_Identity_Ids_USDLFieldValue.OneOf_Data? = nil

  /// String data for this field.
  public var value: String {
    get {
      if case .value(let v)? = data {return v}
      return String()
    }
    set {data = .value(newValue)}
  }

  /// Byte data for this field.
  public var rawValue: Data {
    get {
      if case .rawValue(let v)? = data {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {data = .rawValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Data: Equatable {
    /// String data for this field.
    case value(String)
    /// Byte data for this field.
    case rawValue(Data)

    public static func ==(lhs: Bloombox_Schema_Identity_Ids_USDLFieldValue.OneOf_Data, rhs: Bloombox_Schema_Identity_Ids_USDLFieldValue.OneOf_Data) -> Bool {
      switch (lhs, rhs) {
      case (.value(let l), .value(let r)): return l == r
      case (.rawValue(let l), .rawValue(let r)): return l == r
      default: return false
      }
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.field)
      case 2:
        if self.data != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.data = .value(v)}
      case 3:
        if self.data != nil {try decoder.handleConflictingOneOf()}
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {self.data = .rawValue(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.field != .backBarcode {
      try visitor.visitSingularEnumField(value: self.field, fieldNumber: 1)
    }
    switch self.data {
    case .value(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    case .rawValue(let v)?:
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Reference to a US Driver's License.
public struct Bloombox_Schema_Identity_Ids_USDLReference: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".USDLReference"

  /// Driver's license number.
  public var number: String = String()

  /// Raw data, in base64 form.
  public var data: Bloombox_Schema_Identity_Ids_USDLReference.OneOf_Data? = nil

  /// PDF417 back-side barcode.
  public var barcode: String {
    get {
      if case .barcode(let v)? = data {return v}
      return String()
    }
    set {data = .barcode(newValue)}
  }

  /// Magnetic stripe data.
  public var magstripe: String {
    get {
      if case .magstripe(let v)? = data {return v}
      return String()
    }
    set {data = .magstripe(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Raw data, in base64 form.
  public enum OneOf_Data: Equatable {
    /// PDF417 back-side barcode.
    case barcode(String)
    /// Magnetic stripe data.
    case magstripe(String)

    public static func ==(lhs: Bloombox_Schema_Identity_Ids_USDLReference.OneOf_Data, rhs: Bloombox_Schema_Identity_Ids_USDLReference.OneOf_Data) -> Bool {
      switch (lhs, rhs) {
      case (.barcode(let l), .barcode(let r)): return l == r
      case (.magstripe(let l), .magstripe(let r)): return l == r
      default: return false
      }
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.number)
      case 2:
        if self.data != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.data = .barcode(v)}
      case 3:
        if self.data != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.data = .magstripe(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.number.isEmpty {
      try visitor.visitSingularStringField(value: self.number, fieldNumber: 1)
    }
    switch self.data {
    case .barcode(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    case .magstripe(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies a United States Driver's License.
public struct Bloombox_Schema_Identity_Ids_USDL: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".USDL"

  /// Raw barcode data for this Driver's License.
  public var barcode: String = String()

  /// Raw barcode data for this Driver's License.
  public var magstripe: String = String()

  /// State that issued this Driver's License.
  public var jurisdiction: Opencannabis_Geo_Usa_USState = .unspecified

  /// Flag that indicates this is an identification card, not a Driver's License.
  public var identificationCard: Bool = false

  /// Raw field data for this license.
  public var fields: [Bloombox_Schema_Identity_Ids_USDLFieldValue] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.barcode)
      case 2: try decoder.decodeSingularStringField(value: &self.magstripe)
      case 3: try decoder.decodeSingularEnumField(value: &self.jurisdiction)
      case 4: try decoder.decodeSingularBoolField(value: &self.identificationCard)
      case 100: try decoder.decodeRepeatedMessageField(value: &self.fields)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.barcode.isEmpty {
      try visitor.visitSingularStringField(value: self.barcode, fieldNumber: 1)
    }
    if !self.magstripe.isEmpty {
      try visitor.visitSingularStringField(value: self.magstripe, fieldNumber: 2)
    }
    if self.jurisdiction != .unspecified {
      try visitor.visitSingularEnumField(value: self.jurisdiction, fieldNumber: 3)
    }
    if self.identificationCard != false {
      try visitor.visitSingularBoolField(value: self.identificationCard, fieldNumber: 4)
    }
    if !self.fields.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fields, fieldNumber: 100)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bloombox.schema.identity.ids"

extension Bloombox_Schema_Identity_Ids_USDLField: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BACK_BARCODE"),
    1: .same(proto: "FAMILY_NAME"),
    2: .same(proto: "GIVEN_NAME"),
    3: .same(proto: "MIDDLE_NAME"),
    4: .same(proto: "FULL_NAME"),
    5: .same(proto: "NAME_PREFIX"),
    6: .same(proto: "NAME_SUFFIX"),
    10: .same(proto: "DATE_OF_BIRTH"),
    11: .same(proto: "SEX"),
    12: .same(proto: "HEIGHT"),
    13: .same(proto: "WEIGHT"),
    14: .same(proto: "EYE_COLOR"),
    15: .same(proto: "HAIR_COLOR"),
    20: .same(proto: "FULL_ADDRESS"),
    21: .same(proto: "ADDRESS_LINE"),
    22: .same(proto: "ADDRESS_LINE2"),
    23: .same(proto: "ADDRESS_CITY"),
    24: .same(proto: "POSTAL_CODE"),
    25: .same(proto: "STATE_JURISDICTION"),
    30: .same(proto: "LICENSE_ID"),
    31: .same(proto: "LICENSE_ISSUE_DATE"),
    32: .same(proto: "LICENSE_EXPIRY_DATE"),
    33: .same(proto: "ISSUER_JURISDICTION"),
    34: .same(proto: "ISSUER_JURISDICTION_FORMAT_VERSION"),
    40: .same(proto: "UNIQUE_DOCUMENT_CODE"),
    41: .same(proto: "INVENTORY_CONTROL_CODE"),
    50: .same(proto: "UNDER_18_DATE"),
    51: .same(proto: "UNDER_19_DATE"),
    52: .same(proto: "UNDER_21_DATE"),
    60: .same(proto: "UNDER_18"),
    61: .same(proto: "UNDER_19"),
    62: .same(proto: "UNDER_21"),
    63: .same(proto: "ORGAN_DONOR"),
    64: .same(proto: "VETERAN"),
    65: .same(proto: "NONRESIDENT"),
    70: .same(proto: "RACE_ETHNICITY"),
    71: .same(proto: "COMPLIANCE_TYPE"),
  ]
}

extension Bloombox_Schema_Identity_Ids_USDLFieldValue: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "field"),
    2: .same(proto: "value"),
    3: .standard(proto: "raw_value"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Ids_USDLFieldValue) -> Bool {
    if self.field != other.field {return false}
    if self.data != other.data {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Identity_Ids_USDLReference: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "number"),
    2: .same(proto: "barcode"),
    3: .same(proto: "magstripe"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Ids_USDLReference) -> Bool {
    if self.number != other.number {return false}
    if self.data != other.data {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bloombox_Schema_Identity_Ids_USDL: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "barcode"),
    2: .same(proto: "magstripe"),
    3: .same(proto: "jurisdiction"),
    4: .standard(proto: "identification_card"),
    100: .same(proto: "fields"),
  ]

  public func _protobuf_generated_isEqualTo(other: Bloombox_Schema_Identity_Ids_USDL) -> Bool {
    if self.barcode != other.barcode {return false}
    if self.magstripe != other.magstripe {return false}
    if self.jurisdiction != other.jurisdiction {return false}
    if self.identificationCard != other.identificationCard {return false}
    if self.fields != other.fields {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
