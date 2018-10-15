// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: geo/USState.proto
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

/// Enumerates United States member states and territories by their full name and abbreviation.
public enum Opencannabis_Geo_Usa_USState: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default: Unspecified.
  case unspecified // = 0

  /// State of Alabama.
  case al // = 1
  public static let alabama = al

  /// State of Alaska.
  case ak // = 2
  public static let alaska = ak

  /// State of Arizona.
  case az // = 3
  public static let arizona = az

  /// State of Arkansas.
  case ar // = 4
  public static let arkansas = ar

  /// State of California.
  case ca // = 5
  public static let california = ca

  /// State of Colorado.
  case co // = 6
  public static let colorado = co

  /// State of Connecticut.
  case ct // = 7
  public static let connecticut = ct

  /// State of Delaware.
  case de // = 8
  public static let delaware = de

  /// Washington, District of Columbia (DC).
  case dc // = 9
  public static let districtOfColumbia = dc

  /// State of Florida.
  case fl // = 10
  public static let florida = fl

  /// State of Georgia.
  case ga // = 11
  public static let georgia = ga

  /// State of Hawaii.
  case hi // = 12
  public static let hawaii = hi

  /// State of Idaho.
  case id // = 13
  public static let idaho = id

  /// State of Illinois.
  case il // = 14
  public static let illinois = il

  /// State of Indiana.
  case `in` // = 15
  public static let indiana = `in`

  /// State of Iowa.
  case ia // = 16
  public static let iowa = ia

  /// State of Kansas.
  case ks // = 17
  public static let kansas = ks

  /// State of Kentucky.
  case ky // = 18
  public static let kentucky = ky

  /// State of Loisiana.
  case la // = 19
  public static let loisiana = la

  /// State of Maine.
  case me // = 20
  public static let maine = me

  /// State of Maryland.
  case md // = 21
  public static let maryland = md

  /// State of Massachusetts.
  case ma // = 22
  public static let massachusetts = ma

  /// State of Michigan.
  case mi // = 23
  public static let michigan = mi

  /// State of Minnesota.
  case mn // = 24
  public static let minnesota = mn

  /// State of Mississippi.
  case ms // = 25
  public static let mississippi = ms

  /// State of Missouri.
  case mo // = 26
  public static let missouri = mo

  /// State of Montana.
  case mt // = 27
  public static let montana = mt

  /// State of Nebraska.
  case ne // = 28
  public static let nebraska = ne

  /// State of Nevada.
  case nv // = 29
  public static let nevada = nv

  /// State of New Hampshire.
  case nh // = 30
  public static let newHampshire = nh

  /// State of New Jersey.
  case nj // = 31
  public static let newJersey = nj

  /// State of New Mexico.
  case nm // = 32
  public static let newMexico = nm

  /// State of New York.
  case ny // = 33
  public static let newYork = ny

  /// State of North Carolina.
  case nc // = 34
  public static let northCarolina = nc

  /// State of North Dakota.
  case nd // = 35
  public static let northDakota = nd

  /// State of Ohio.
  case oh // = 36
  public static let ohio = oh

  /// State of Oklahoma.
  case ok // = 37
  public static let oklahoma = ok

  /// State of Oregon.
  case or // = 38
  public static let oregon = or

  /// State of Pennsylvania.
  case pa // = 39
  public static let pennsylvania = pa

  /// State of Rhode Island.
  case ri // = 40
  public static let rhodeIsland = ri

  /// State of South Carolina.
  case sc // = 41
  public static let southCarolina = sc

  /// State of South Dakota.
  case sd // = 42
  public static let southDakota = sd

  /// State of Tennessee.
  case tn // = 43
  public static let tennessee = tn

  /// State of Texas.
  case tx // = 44
  public static let texas = tx

  /// State of Utah.
  case ut // = 45
  public static let utah = ut

  /// State of Vermont.
  case vt // = 46
  public static let vermont = vt

  /// State of Virginia.
  case va // = 47
  public static let virginia = va

  /// State of Washington.
  case wa // = 48
  public static let washington = wa

  /// State of West Virginia.
  case wv // = 49
  public static let westVirginia = wv

  /// State of Wisconsin.
  case wi // = 50
  public static let wisconsin = wi

  /// State of Wyoming.
  case wyoming // = 51
  public static let wy = wyoming
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .al
    case 2: self = .ak
    case 3: self = .az
    case 4: self = .ar
    case 5: self = .ca
    case 6: self = .co
    case 7: self = .ct
    case 8: self = .de
    case 9: self = .dc
    case 10: self = .fl
    case 11: self = .ga
    case 12: self = .hi
    case 13: self = .id
    case 14: self = .il
    case 15: self = .in
    case 16: self = .ia
    case 17: self = .ks
    case 18: self = .ky
    case 19: self = .la
    case 20: self = .me
    case 21: self = .md
    case 22: self = .ma
    case 23: self = .mi
    case 24: self = .mn
    case 25: self = .ms
    case 26: self = .mo
    case 27: self = .mt
    case 28: self = .ne
    case 29: self = .nv
    case 30: self = .nh
    case 31: self = .nj
    case 32: self = .nm
    case 33: self = .ny
    case 34: self = .nc
    case 35: self = .nd
    case 36: self = .oh
    case 37: self = .ok
    case 38: self = .or
    case 39: self = .pa
    case 40: self = .ri
    case 41: self = .sc
    case 42: self = .sd
    case 43: self = .tn
    case 44: self = .tx
    case 45: self = .ut
    case 46: self = .vt
    case 47: self = .va
    case 48: self = .wa
    case 49: self = .wv
    case 50: self = .wi
    case 51: self = .wyoming
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .al: return 1
    case .ak: return 2
    case .az: return 3
    case .ar: return 4
    case .ca: return 5
    case .co: return 6
    case .ct: return 7
    case .de: return 8
    case .dc: return 9
    case .fl: return 10
    case .ga: return 11
    case .hi: return 12
    case .id: return 13
    case .il: return 14
    case .in: return 15
    case .ia: return 16
    case .ks: return 17
    case .ky: return 18
    case .la: return 19
    case .me: return 20
    case .md: return 21
    case .ma: return 22
    case .mi: return 23
    case .mn: return 24
    case .ms: return 25
    case .mo: return 26
    case .mt: return 27
    case .ne: return 28
    case .nv: return 29
    case .nh: return 30
    case .nj: return 31
    case .nm: return 32
    case .ny: return 33
    case .nc: return 34
    case .nd: return 35
    case .oh: return 36
    case .ok: return 37
    case .or: return 38
    case .pa: return 39
    case .ri: return 40
    case .sc: return 41
    case .sd: return 42
    case .tn: return 43
    case .tx: return 44
    case .ut: return 45
    case .vt: return 46
    case .va: return 47
    case .wa: return 48
    case .wv: return 49
    case .wi: return 50
    case .wyoming: return 51
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Opencannabis_Geo_Usa_USState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Opencannabis_Geo_Usa_USState] = [
    .unspecified,
    .al,
    .ak,
    .az,
    .ar,
    .ca,
    .co,
    .ct,
    .de,
    .dc,
    .fl,
    .ga,
    .hi,
    .id,
    .il,
    .in,
    .ia,
    .ks,
    .ky,
    .la,
    .me,
    .md,
    .ma,
    .mi,
    .mn,
    .ms,
    .mo,
    .mt,
    .ne,
    .nv,
    .nh,
    .nj,
    .nm,
    .ny,
    .nc,
    .nd,
    .oh,
    .ok,
    .or,
    .pa,
    .ri,
    .sc,
    .sd,
    .tn,
    .tx,
    .ut,
    .vt,
    .va,
    .wa,
    .wv,
    .wi,
    .wyoming,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Opencannabis_Geo_Usa_USState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .aliased(proto: "AL", aliases: ["ALABAMA"]),
    2: .aliased(proto: "AK", aliases: ["ALASKA"]),
    3: .aliased(proto: "AZ", aliases: ["ARIZONA"]),
    4: .aliased(proto: "AR", aliases: ["ARKANSAS"]),
    5: .aliased(proto: "CA", aliases: ["CALIFORNIA"]),
    6: .aliased(proto: "CO", aliases: ["COLORADO"]),
    7: .aliased(proto: "CT", aliases: ["CONNECTICUT"]),
    8: .aliased(proto: "DE", aliases: ["Delaware"]),
    9: .aliased(proto: "DC", aliases: ["DISTRICT_OF_COLUMBIA"]),
    10: .aliased(proto: "FL", aliases: ["FLORIDA"]),
    11: .aliased(proto: "GA", aliases: ["GEORGIA"]),
    12: .aliased(proto: "HI", aliases: ["HAWAII"]),
    13: .aliased(proto: "ID", aliases: ["IDAHO"]),
    14: .aliased(proto: "IL", aliases: ["ILLINOIS"]),
    15: .aliased(proto: "IN", aliases: ["INDIANA"]),
    16: .aliased(proto: "IA", aliases: ["IOWA"]),
    17: .aliased(proto: "KS", aliases: ["KANSAS"]),
    18: .aliased(proto: "KY", aliases: ["KENTUCKY"]),
    19: .aliased(proto: "LA", aliases: ["LOISIANA"]),
    20: .aliased(proto: "ME", aliases: ["MAINE"]),
    21: .aliased(proto: "MD", aliases: ["MARYLAND"]),
    22: .aliased(proto: "MA", aliases: ["MASSACHUSETTS"]),
    23: .aliased(proto: "MI", aliases: ["MICHIGAN"]),
    24: .aliased(proto: "MN", aliases: ["MINNESOTA"]),
    25: .aliased(proto: "MS", aliases: ["MISSISSIPPI"]),
    26: .aliased(proto: "MO", aliases: ["MISSOURI"]),
    27: .aliased(proto: "MT", aliases: ["MONTANA"]),
    28: .aliased(proto: "NE", aliases: ["NEBRASKA"]),
    29: .aliased(proto: "NV", aliases: ["NEVADA"]),
    30: .aliased(proto: "NH", aliases: ["NEW_HAMPSHIRE"]),
    31: .aliased(proto: "NJ", aliases: ["NEW_JERSEY"]),
    32: .aliased(proto: "NM", aliases: ["NEW_MEXICO"]),
    33: .aliased(proto: "NY", aliases: ["NEW_YORK"]),
    34: .aliased(proto: "NC", aliases: ["NORTH_CAROLINA"]),
    35: .aliased(proto: "ND", aliases: ["NORTH_DAKOTA"]),
    36: .aliased(proto: "OH", aliases: ["OHIO"]),
    37: .aliased(proto: "OK", aliases: ["OKLAHOMA"]),
    38: .aliased(proto: "OR", aliases: ["OREGON"]),
    39: .aliased(proto: "PA", aliases: ["PENNSYLVANIA"]),
    40: .aliased(proto: "RI", aliases: ["RHODE_ISLAND"]),
    41: .aliased(proto: "SC", aliases: ["SOUTH_CAROLINA"]),
    42: .aliased(proto: "SD", aliases: ["SOUTH_DAKOTA"]),
    43: .aliased(proto: "TN", aliases: ["TENNESSEE"]),
    44: .aliased(proto: "TX", aliases: ["TEXAS"]),
    45: .aliased(proto: "UT", aliases: ["UTAH"]),
    46: .aliased(proto: "VT", aliases: ["VERMONT"]),
    47: .aliased(proto: "VA", aliases: ["VIRGINIA"]),
    48: .aliased(proto: "WA", aliases: ["WASHINGTON"]),
    49: .aliased(proto: "WV", aliases: ["WEST_VIRGINIA"]),
    50: .aliased(proto: "WI", aliases: ["WISCONSIN"]),
    51: .aliased(proto: "WYOMING", aliases: ["WY"]),
  ]
}
