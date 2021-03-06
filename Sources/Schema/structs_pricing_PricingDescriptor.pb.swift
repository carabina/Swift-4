// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/pricing/PricingDescriptor.proto
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

/// Enumerates supported pricing schemes. Defaults to 'UNIT'-based pricing.
public enum Opencannabis_Structs_Pricing_PricingType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Cost-per-item based pricing scheme, where each product is priced individually, regardless of other attributes. For
  /// example, edibles or standard merchandise are purchased, at their price, "each."
  case unit // = 0

  /// Cost-by-weight pricing scheme, where each product has multiple weight tiers, each priced individually. For example,
  /// standard retail flower pricing is weighted at 1g (one gram), 3.5g, 7g, 14g and 28g (one ounce).
  case weighted // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .unit
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unit
    case 1: self = .weighted
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unit: return 0
    case .weighted: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Structs_Pricing_PricingType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Structs_Pricing_PricingType] = [
    .unit,
    .weighted,
  ]
}

#endif  // swift(>=4.2)

/// Enumerates supported pricing tiers, when the 'WEIGHTED' pricing scheme is in effect. Each known tier is enumerated,
/// with an additional defaulted option for 'OTHER,' which would allow a custom weight to be assigned via some other
/// property or metric.
public enum Opencannabis_Structs_Pricing_PricingWeightTier: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// No weight indicated.
  case noWeight // = 0

  /// Pricing for 'ONE GRAM' of the subject material or merchandise.
  case gram // = 1

  /// Pricing for one 'HALF GRAM' of the subject material or merchandise. Usually used only for extracts.
  case halfgram // = 2

  /// Pricing for one 'QUARTER GRAM' of the subject material or merchandise. Usually used only for extracts.
  case quartergram // = 3

  /// Pricing for TWO GRAMS of the subject material or merchandise. Rarely used.
  case dub // = 4

  /// Pricing for an 'EIGHTH' of the subject material or merchandise, usually defined as 3-and-one-half grams. In some
  /// cases, providers may choose to define their 'EIGHTH' weight value at 4 grams. This functionality is supported via
  /// partner or location-level settings. 'EIGHTH' usually refers to an eighth-of-an-ounce.
  case eighth // = 5

  /// Pricing for a 'QUARTER' of the subject material or merchandise, usually defined as 7 grams.
  case quarter // = 6

  /// Pricing for a 'HALF OUNCE' of the subject material or merchandise. Usually defined as 14 grams.
  case half // = 7

  /// Pricing for 'ONCE OUNCE' of subject material or merchandise. Usually defined as 28 grams.
  case ounce // = 8

  /// Pricing for 'ONE POUND' of subject material or merchandise.
  case pound // = 9

  /// Pricing for 'ONE KILO' of subject material or merchandise.
  case kilo // = 10

  /// Pricing for 'ONE TON' of subject material or merchandise.
  case ton // = 11

  /// 'Other,' or custom weighted pricing.
  case other // = 12
  case UNRECOGNIZED(Int)

  public init() {
    self = .noWeight
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .noWeight
    case 1: self = .gram
    case 2: self = .halfgram
    case 3: self = .quartergram
    case 4: self = .dub
    case 5: self = .eighth
    case 6: self = .quarter
    case 7: self = .half
    case 8: self = .ounce
    case 9: self = .pound
    case 10: self = .kilo
    case 11: self = .ton
    case 12: self = .other
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .noWeight: return 0
    case .gram: return 1
    case .halfgram: return 2
    case .quartergram: return 3
    case .dub: return 4
    case .eighth: return 5
    case .quarter: return 6
    case .half: return 7
    case .ounce: return 8
    case .pound: return 9
    case .kilo: return 10
    case .ton: return 11
    case .other: return 12
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Structs_Pricing_PricingWeightTier: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Structs_Pricing_PricingWeightTier] = [
    .noWeight,
    .gram,
    .halfgram,
    .quartergram,
    .dub,
    .eighth,
    .quarter,
    .half,
    .ounce,
    .pound,
    .kilo,
    .ton,
    .other,
  ]
}

#endif  // swift(>=4.2)

/// Specifies availability and stock status flags for a particular pricing tier.
public struct Opencannabis_Structs_Pricing_PricingTierAvailability {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies whether a particular pricing tier is offered at all. This would be interpreted to indicate whether a
  /// particular pricing tier is 'ever available' or 'ever offered.'
  public var offered: Bool = false

  /// Specifies whether a particular pricing tier is currently available. This would be interpreted to indicate whether a
  /// particular pricing tier is 'currently available,' 'currently in stock,' or 'currently offered.'
  public var available: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Specifies pricing information for a unit-priced product, including the price value, tier status, and any discounts
/// that currently apply.
public struct Opencannabis_Structs_Pricing_UnitPricingDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unit price value.
  public var price: Opencannabis_Commerce_CurrencyValue {
    get {return _storage._price ?? Opencannabis_Commerce_CurrencyValue()}
    set {_uniqueStorage()._price = newValue}
  }
  /// Returns true if `price` has been explicitly set.
  public var hasPrice: Bool {return _storage._price != nil}
  /// Clears the value of `price`. Subsequent reads from it will return its default value.
  public mutating func clearPrice() {_uniqueStorage()._price = nil}

  /// Availability flags for this unit-priced tier.
  public var status: Opencannabis_Structs_Pricing_PricingTierAvailability {
    get {return _storage._status ?? Opencannabis_Structs_Pricing_PricingTierAvailability()}
    set {_uniqueStorage()._status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return _storage._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {_uniqueStorage()._status = nil}

  /// Discounts that should apply to this tier.
  public var discounts: [Opencannabis_Structs_Pricing_SaleDescriptor] {
    get {return _storage._discounts}
    set {_uniqueStorage()._discounts = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies pricing information for a weight-priced product, at a particular weight tier, including the price value,
/// tier status, and, optionally, a custom weight.
public struct Opencannabis_Structs_Pricing_WeightedPricingDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Weight tier selection.
  public var weight: Opencannabis_Structs_Pricing_PricingWeightTier {
    get {return _storage._weight}
    set {_uniqueStorage()._weight = newValue}
  }

  /// Pricing descriptor for this tier, including the price value, status, and any discounts that should apply.
  public var tier: Opencannabis_Structs_Pricing_UnitPricingDescriptor {
    get {return _storage._tier ?? Opencannabis_Structs_Pricing_UnitPricingDescriptor()}
    set {_uniqueStorage()._tier = newValue}
  }
  /// Returns true if `tier` has been explicitly set.
  public var hasTier: Bool {return _storage._tier != nil}
  /// Clears the value of `tier`. Subsequent reads from it will return its default value.
  public mutating func clearTier() {_uniqueStorage()._tier = nil}

  /// Custom weight in grams, if any.
  public var weightInGrams: Float {
    get {return _storage._weightInGrams}
    set {_uniqueStorage()._weightInGrams = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a descriptor for product pricing, which specifies the price configuration for one independent price tier
/// in a given set of pricing tiers for a product.
public struct Opencannabis_Structs_Pricing_PricingDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type of pricing tier this descriptor is specifying.
  public var type: Opencannabis_Structs_Pricing_PricingType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Pricing information for this tier, based on the pricing tier type.
  public var tier: OneOf_Tier? {
    get {return _storage._tier}
    set {_uniqueStorage()._tier = newValue}
  }

  /// Unit-based pricing information, with no variance in price change.
  public var unit: Opencannabis_Structs_Pricing_UnitPricingDescriptor {
    get {
      if case .unit(let v)? = _storage._tier {return v}
      return Opencannabis_Structs_Pricing_UnitPricingDescriptor()
    }
    set {_uniqueStorage()._tier = .unit(newValue)}
  }

  /// Weight-based pricing information, with prices assgined to specific or known weights.
  public var weighted: Opencannabis_Structs_Pricing_WeightedPricingDescriptor {
    get {
      if case .weighted(let v)? = _storage._tier {return v}
      return Opencannabis_Structs_Pricing_WeightedPricingDescriptor()
    }
    set {_uniqueStorage()._tier = .weighted(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Pricing information for this tier, based on the pricing tier type.
  public enum OneOf_Tier: Equatable {
    /// Unit-based pricing information, with no variance in price change.
    case unit(Opencannabis_Structs_Pricing_UnitPricingDescriptor)
    /// Weight-based pricing information, with prices assgined to specific or known weights.
    case weighted(Opencannabis_Structs_Pricing_WeightedPricingDescriptor)

  #if !swift(>=4.1)
    public static func ==(lhs: Opencannabis_Structs_Pricing_PricingDescriptor.OneOf_Tier, rhs: Opencannabis_Structs_Pricing_PricingDescriptor.OneOf_Tier) -> Bool {
      switch (lhs, rhs) {
      case (.unit(let l), .unit(let r)): return l == r
      case (.weighted(let l), .weighted(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Pricing manifest for a product, with the combined tiers and top-level discounts that are currently configured for a
/// given sellable material or unit of merchandise.
public struct Opencannabis_Structs_Pricing_ProductPricing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Discounts that should apply across all pricing tiers for the subject product.
  public var discounts: [Opencannabis_Structs_Pricing_SaleDescriptor] = []

  /// Pricing tiers attached to this product pricing manifest.
  public var manifest: [Opencannabis_Structs_Pricing_PricingDescriptor] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opencannabis.structs.pricing"

extension Opencannabis_Structs_Pricing_PricingType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNIT"),
    1: .same(proto: "WEIGHTED"),
  ]
}

extension Opencannabis_Structs_Pricing_PricingWeightTier: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NO_WEIGHT"),
    1: .same(proto: "GRAM"),
    2: .same(proto: "HALFGRAM"),
    3: .same(proto: "QUARTERGRAM"),
    4: .same(proto: "DUB"),
    5: .same(proto: "EIGHTH"),
    6: .same(proto: "QUARTER"),
    7: .same(proto: "HALF"),
    8: .same(proto: "OUNCE"),
    9: .same(proto: "POUND"),
    10: .same(proto: "KILO"),
    11: .same(proto: "TON"),
    12: .same(proto: "OTHER"),
  ]
}

extension Opencannabis_Structs_Pricing_PricingTierAvailability: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PricingTierAvailability"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "offered"),
    2: .same(proto: "available"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.offered)
      case 2: try decoder.decodeSingularBoolField(value: &self.available)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.offered != false {
      try visitor.visitSingularBoolField(value: self.offered, fieldNumber: 1)
    }
    if self.available != false {
      try visitor.visitSingularBoolField(value: self.available, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Pricing_PricingTierAvailability, rhs: Opencannabis_Structs_Pricing_PricingTierAvailability) -> Bool {
    if lhs.offered != rhs.offered {return false}
    if lhs.available != rhs.available {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Pricing_UnitPricingDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UnitPricingDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "price"),
    2: .same(proto: "status"),
    3: .same(proto: "discounts"),
  ]

  fileprivate class _StorageClass {
    var _price: Opencannabis_Commerce_CurrencyValue? = nil
    var _status: Opencannabis_Structs_Pricing_PricingTierAvailability? = nil
    var _discounts: [Opencannabis_Structs_Pricing_SaleDescriptor] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _price = source._price
      _status = source._status
      _discounts = source._discounts
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._price)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._status)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._discounts)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._price {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._status {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._discounts.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._discounts, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Pricing_UnitPricingDescriptor, rhs: Opencannabis_Structs_Pricing_UnitPricingDescriptor) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._price != rhs_storage._price {return false}
        if _storage._status != rhs_storage._status {return false}
        if _storage._discounts != rhs_storage._discounts {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Pricing_WeightedPricingDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WeightedPricingDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "weight"),
    2: .same(proto: "tier"),
    3: .standard(proto: "weight_in_grams"),
  ]

  fileprivate class _StorageClass {
    var _weight: Opencannabis_Structs_Pricing_PricingWeightTier = .noWeight
    var _tier: Opencannabis_Structs_Pricing_UnitPricingDescriptor? = nil
    var _weightInGrams: Float = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _weight = source._weight
      _tier = source._tier
      _weightInGrams = source._weightInGrams
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._weight)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._tier)
        case 3: try decoder.decodeSingularFloatField(value: &_storage._weightInGrams)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._weight != .noWeight {
        try visitor.visitSingularEnumField(value: _storage._weight, fieldNumber: 1)
      }
      if let v = _storage._tier {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._weightInGrams != 0 {
        try visitor.visitSingularFloatField(value: _storage._weightInGrams, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Pricing_WeightedPricingDescriptor, rhs: Opencannabis_Structs_Pricing_WeightedPricingDescriptor) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._weight != rhs_storage._weight {return false}
        if _storage._tier != rhs_storage._tier {return false}
        if _storage._weightInGrams != rhs_storage._weightInGrams {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Pricing_PricingDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PricingDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    20: .same(proto: "unit"),
    21: .same(proto: "weighted"),
  ]

  fileprivate class _StorageClass {
    var _type: Opencannabis_Structs_Pricing_PricingType = .unit
    var _tier: Opencannabis_Structs_Pricing_PricingDescriptor.OneOf_Tier?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _tier = source._tier
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
        case 20:
          var v: Opencannabis_Structs_Pricing_UnitPricingDescriptor?
          if let current = _storage._tier {
            try decoder.handleConflictingOneOf()
            if case .unit(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._tier = .unit(v)}
        case 21:
          var v: Opencannabis_Structs_Pricing_WeightedPricingDescriptor?
          if let current = _storage._tier {
            try decoder.handleConflictingOneOf()
            if case .weighted(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._tier = .weighted(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._type != .unit {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      switch _storage._tier {
      case .unit(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 20)
      case .weighted(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 21)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Pricing_PricingDescriptor, rhs: Opencannabis_Structs_Pricing_PricingDescriptor) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._type != rhs_storage._type {return false}
        if _storage._tier != rhs_storage._tier {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opencannabis_Structs_Pricing_ProductPricing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProductPricing"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "discounts"),
    2: .same(proto: "manifest"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.discounts)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.manifest)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.discounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.discounts, fieldNumber: 1)
    }
    if !self.manifest.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.manifest, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opencannabis_Structs_Pricing_ProductPricing, rhs: Opencannabis_Structs_Pricing_ProductPricing) -> Bool {
    if lhs.discounts != rhs.discounts {return false}
    if lhs.manifest != rhs.manifest {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
