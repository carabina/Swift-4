//
//  MenuClient.swift
//  Client
//
//  Created by James Clark on 1/21/18.
//

import Foundation
import SwiftGRPC


// Callback Types
public typealias MenuRetrieveCallback = (CallResult, GetMenu.Response?) -> ()


/// Enumerates code-level errors in the menu client.
public enum MenuClientError: Error {
  case invalidPartnerCode
  case invalidLocationCode
  case invalidApiKey
  case unknown
}


/// Provides functionality for the Menu API, which supports operations related to fetching, querying, and managing, menu
/// catalog data (i.e. product content, pricing, materials information, and so on). Menus do not include inventory.
public final class MenuClient: RemoteService {
  /// Name of the Menu API, which is "menu".
  let name = "menu"

  /// Version of this service.
  let version = "v1beta1"

  // MARK: Internals

  /// Client-wide settings.
  internal let settings: Bloombox.Settings

  /// Library-internal initializer.
  ///
  public init(settings: Bloombox.Settings) {
    self.settings = settings
  }

  /// Menu service.
  ///
  internal func service(_ apiKey: APIKey) throws -> MenuService {
    let svc = RPCServiceFactory<MenuService>.factory(forService: Transport.config.services.menu)
    do {
      try svc.metadata.add(key: "x-api-key", value: apiKey)
    } catch {
      // unable to resolve API key
      throw MenuClientError.invalidApiKey
    }
    return svc
  }

  /// Resolve partner and location context, throwing an error if it cannot be figured out.
  ///
  private func resolveContext(_ partner: PartnerCode? = nil,
                              _ location: LocationCode? = nil,
                              _ apiKey: APIKey? = nil) throws -> (partner: PartnerCode, location: LocationCode, apiKey: APIKey) {
    let partnerCode: PartnerCode? = partner ?? settings.partner
    let locationCode: LocationCode? = location ?? settings.location
    let apiKey: APIKey? = apiKey ?? settings.apiKey

    guard apiKey != nil else {
      throw MenuClientError.invalidApiKey
    }

    // validate partner and location codes
    guard partnerCode != nil, locationCode != nil else {
      // throw error: we require a partner or location code from somewhere
      if partnerCode == nil {
        throw MenuClientError.invalidPartnerCode
      }
      throw MenuClientError.invalidLocationCode
    }
    return (partner: partnerCode!, location: locationCode!, apiKey: apiKey!)
  }

  // MARK: - Public API -

  // MARK: Menu Retrieve

  /// Retrieve the active product catalog (menu) for a given partner/location.
  ///
  public func retrieve(partner: PartnerCode? = nil,
                       location: LocationCode? = nil,
                       keysOnly: Bool = false,
                       apiKey: APIKey? = nil) throws -> GetMenu.Response {
    let (locationCode, partnerCode, apiKey) = try resolveContext(partner, location, apiKey)
    let service = try self.service(apiKey)

    do {
      return try service.retrieve(GetMenu.Request.with { builder in
        builder.scope = "partners/\(locationCode)/locations/\(partnerCode)"
      })
    } catch {
      // some other error occurred
      print("error: unknown error occurred")
      throw MenuClientError.unknown
    }
  }

  /// Retrieve the active product catalog, asynchronously (menu) for a given
  /// partner/location.
  ///
  public func retrieve(partner: PartnerCode? = nil,
                       location: LocationCode? = nil,
                       keysOnly: Bool = false,
                       apiKey: APIKey? = nil,
                       callback: @escaping MenuRetrieveCallback) throws -> GetMenuCall {
    let (locationCode, partnerCode, apiKey) = try resolveContext(partner, location, apiKey)
    let service = try self.service(apiKey)

    return try service.retrieve(GetMenu.Request.with { builder in
      builder.scope = "partners/\(locationCode)/locations/\(partnerCode)"
    }) { (response, callResult) in
      callback(callResult, response)
    }
  }

}
