// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: geo/usa/ca/CACounty.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

///*
/// Provides counties in the US State of California.

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

/// Enumerates counties in the US State of California.
public enum Opencannabis_Geo_Usa_Ca_CaliforniaCounty: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unknown county backstop value.
  case unknownCounty // = 0

  /// Alameda county.
  case alameda // = 1

  /// Alpine county.
  case alpine // = 2

  /// Amador county.
  case amador // = 3

  /// Butte county.
  case butte // = 4

  /// Calaveras county.
  case calaveras // = 5

  /// Colusa county.
  case colusa // = 6

  /// Contra Costa county.
  case contraCosta // = 7

  /// Del Norte county.
  case delNorte // = 8

  /// El Dorado county.
  case elDorado // = 9

  /// Fresno county.
  case fresno // = 10

  /// Glenn county.
  case glenn // = 11

  /// Humboldt county.
  case humboldt // = 12

  /// Imperial county.
  case imerial // = 13

  /// Inyo county.
  case inyo // = 14

  /// Kern county.
  case kern // = 15

  /// Kings county.
  case kings // = 16

  /// Lake county.
  case lake // = 17

  /// Lassen county.
  case lassen // = 18

  /// Los Angeles county.
  case losAngeles // = 19

  /// Madera county.
  case madera // = 20

  /// Marin county.
  case marin // = 21

  /// Mariposa county.
  case mariposa // = 22

  /// Mendocino county.
  case mendocino // = 23

  /// Merced county.
  case merced // = 24

  /// Modoc county.
  case modoc // = 25

  /// Mono county.
  case mono // = 26

  /// Monterey county.
  case monterey // = 27

  /// Napa county.
  case napa // = 28

  /// Orange county.
  case orange // = 29

  /// Placer county.
  case placer // = 30

  /// Plumas county.
  case plumas // = 31

  /// Riverside county.
  case riverside // = 32

  /// Sacramento county.
  case sacramento // = 33

  /// San Benito county.
  case sanBenito // = 34

  /// San Bernadino county.
  case sanBernadino // = 35

  /// San Diego county.
  case sanDiego // = 36

  /// San Francisco county.
  case sanFrancisco // = 37

  /// San Joaquin county.
  case sanJoaquin // = 38

  /// San Luis Obispo county.
  case sanLuisObispo // = 39

  /// San Mateo county.
  case sanMateo // = 40

  /// Santa Clara county.
  case santaClara // = 41

  /// Santa Cruz county.
  case santaCruz // = 42

  /// Shasta county.
  case shasta // = 43

  /// Sierra county.
  case sierra // = 44

  /// Siskiyou county.
  case siskiyou // = 45

  /// Sonoma county.
  case sonoma // = 46

  /// Stanislaus county.
  case stanislaus // = 47

  /// Sutter county.
  case sutter // = 48

  /// Trinity county.
  case trinity // = 49

  /// Tulare county.
  case tulare // = 50

  /// Tuolomne county.
  case tuolomne // = 51

  /// Ventura county.
  case ventura // = 52

  /// Yolo county.
  case yolo // = 53

  /// Yuba county.
  case yuba // = 54
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknownCounty
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownCounty
    case 1: self = .alameda
    case 2: self = .alpine
    case 3: self = .amador
    case 4: self = .butte
    case 5: self = .calaveras
    case 6: self = .colusa
    case 7: self = .contraCosta
    case 8: self = .delNorte
    case 9: self = .elDorado
    case 10: self = .fresno
    case 11: self = .glenn
    case 12: self = .humboldt
    case 13: self = .imerial
    case 14: self = .inyo
    case 15: self = .kern
    case 16: self = .kings
    case 17: self = .lake
    case 18: self = .lassen
    case 19: self = .losAngeles
    case 20: self = .madera
    case 21: self = .marin
    case 22: self = .mariposa
    case 23: self = .mendocino
    case 24: self = .merced
    case 25: self = .modoc
    case 26: self = .mono
    case 27: self = .monterey
    case 28: self = .napa
    case 29: self = .orange
    case 30: self = .placer
    case 31: self = .plumas
    case 32: self = .riverside
    case 33: self = .sacramento
    case 34: self = .sanBenito
    case 35: self = .sanBernadino
    case 36: self = .sanDiego
    case 37: self = .sanFrancisco
    case 38: self = .sanJoaquin
    case 39: self = .sanLuisObispo
    case 40: self = .sanMateo
    case 41: self = .santaClara
    case 42: self = .santaCruz
    case 43: self = .shasta
    case 44: self = .sierra
    case 45: self = .siskiyou
    case 46: self = .sonoma
    case 47: self = .stanislaus
    case 48: self = .sutter
    case 49: self = .trinity
    case 50: self = .tulare
    case 51: self = .tuolomne
    case 52: self = .ventura
    case 53: self = .yolo
    case 54: self = .yuba
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknownCounty: return 0
    case .alameda: return 1
    case .alpine: return 2
    case .amador: return 3
    case .butte: return 4
    case .calaveras: return 5
    case .colusa: return 6
    case .contraCosta: return 7
    case .delNorte: return 8
    case .elDorado: return 9
    case .fresno: return 10
    case .glenn: return 11
    case .humboldt: return 12
    case .imerial: return 13
    case .inyo: return 14
    case .kern: return 15
    case .kings: return 16
    case .lake: return 17
    case .lassen: return 18
    case .losAngeles: return 19
    case .madera: return 20
    case .marin: return 21
    case .mariposa: return 22
    case .mendocino: return 23
    case .merced: return 24
    case .modoc: return 25
    case .mono: return 26
    case .monterey: return 27
    case .napa: return 28
    case .orange: return 29
    case .placer: return 30
    case .plumas: return 31
    case .riverside: return 32
    case .sacramento: return 33
    case .sanBenito: return 34
    case .sanBernadino: return 35
    case .sanDiego: return 36
    case .sanFrancisco: return 37
    case .sanJoaquin: return 38
    case .sanLuisObispo: return 39
    case .sanMateo: return 40
    case .santaClara: return 41
    case .santaCruz: return 42
    case .shasta: return 43
    case .sierra: return 44
    case .siskiyou: return 45
    case .sonoma: return 46
    case .stanislaus: return 47
    case .sutter: return 48
    case .trinity: return 49
    case .tulare: return 50
    case .tuolomne: return 51
    case .ventura: return 52
    case .yolo: return 53
    case .yuba: return 54
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Opencannabis_Geo_Usa_Ca_CaliforniaCounty: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_COUNTY"),
    1: .same(proto: "ALAMEDA"),
    2: .same(proto: "ALPINE"),
    3: .same(proto: "AMADOR"),
    4: .same(proto: "BUTTE"),
    5: .same(proto: "CALAVERAS"),
    6: .same(proto: "COLUSA"),
    7: .same(proto: "CONTRA_COSTA"),
    8: .same(proto: "DEL_NORTE"),
    9: .same(proto: "EL_DORADO"),
    10: .same(proto: "FRESNO"),
    11: .same(proto: "GLENN"),
    12: .same(proto: "HUMBOLDT"),
    13: .same(proto: "IMERIAL"),
    14: .same(proto: "INYO"),
    15: .same(proto: "KERN"),
    16: .same(proto: "KINGS"),
    17: .same(proto: "LAKE"),
    18: .same(proto: "LASSEN"),
    19: .same(proto: "LOS_ANGELES"),
    20: .same(proto: "MADERA"),
    21: .same(proto: "MARIN"),
    22: .same(proto: "MARIPOSA"),
    23: .same(proto: "MENDOCINO"),
    24: .same(proto: "MERCED"),
    25: .same(proto: "MODOC"),
    26: .same(proto: "MONO"),
    27: .same(proto: "MONTEREY"),
    28: .same(proto: "NAPA"),
    29: .same(proto: "ORANGE"),
    30: .same(proto: "PLACER"),
    31: .same(proto: "PLUMAS"),
    32: .same(proto: "RIVERSIDE"),
    33: .same(proto: "SACRAMENTO"),
    34: .same(proto: "SAN_BENITO"),
    35: .same(proto: "SAN_BERNADINO"),
    36: .same(proto: "SAN_DIEGO"),
    37: .same(proto: "SAN_FRANCISCO"),
    38: .same(proto: "SAN_JOAQUIN"),
    39: .same(proto: "SAN_LUIS_OBISPO"),
    40: .same(proto: "SAN_MATEO"),
    41: .same(proto: "SANTA_CLARA"),
    42: .same(proto: "SANTA_CRUZ"),
    43: .same(proto: "SHASTA"),
    44: .same(proto: "SIERRA"),
    45: .same(proto: "SISKIYOU"),
    46: .same(proto: "SONOMA"),
    47: .same(proto: "STANISLAUS"),
    48: .same(proto: "SUTTER"),
    49: .same(proto: "TRINITY"),
    50: .same(proto: "TULARE"),
    51: .same(proto: "TUOLOMNE"),
    52: .same(proto: "VENTURA"),
    53: .same(proto: "YOLO"),
    54: .same(proto: "YUBA"),
  ]
}
