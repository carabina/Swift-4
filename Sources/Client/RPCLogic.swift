//
//  RPCLogic.swift
//  Client
//
//  Created by James Clark on 12/12/17.
//

import Foundation
import gRPC


// MARK: - RPC Endpoints

/**
 * Specifies a structure that provides information required to connect to a remote RPC endpoint
 * exposed for access over the public internet.
 */
internal protocol RPCEndpoint {
  /**
   * Hostname or IP address to connect to.
   */
  var host: String { get }

  /**
   * Port to connect to.
   */
  var port: Int { get }
}

/**
 * Specifies a structure that provides a secure RPC endpoint, wrapped with Transport Layer
 * Security (i.e. TLS/HTTPS).
 */
internal protocol SecureRPCEndpoint: RPCEndpoint {
  /**
   * Client-side identity certificate.
   */
  var cert: String? { get }

  /**
   * Client-side identity private key.
   */
  var key: String? { get }

  /**
   * Client-side trust chain.
   */
  var chain: String? { get }

  /**
   * SNI hostname, if applicable.
   */
  var hostname: String? { get }
}

/**
 * Specifies a plaintext, unsecured endpoint.
 */
internal struct PlaintextEndpoint: RPCEndpoint {
  let host: String
  let port: Int
}

/**
 * Specifies an RPC endpoint protected by TLS.
 */
internal struct TLSEndpoint: SecureRPCEndpoint {
  let host: String
  let port: Int
  let chain: String?
  let cert: String?
  let key: String?
  let hostname: String?
}


// MARK: - RPC Services

/**
 * Main protocol for a remotely-supported RPC service.
 */
public protocol RPCService {
  init(address: String, secure: Bool)
  init(address: String, certificates: String, host: String?)
}


/**
 * Interface compliance defaults for RPCService.
 */
extension RPCService {
  func prepare() {}
}

/**
 * Generic factory that is capable of creating new instances of RPC service logic classes. Given
 * settings, this class initializes and prepares an individual RPC service for use.
 */
internal struct RPCServiceFactory<Service: RPCService> {
  /**
   * Produce an RPC endpoint spec from a set of RPC service settings.
   */
  static func endpoint(forService settings: RPCServiceSettings) -> RPCEndpoint {
    if settings.secure {
      return TLSEndpoint(
        host: settings.host,
        port: settings.port,
        chain: settings.chain,
        cert: settings.cert,
        key: settings.key,
        hostname: settings.hostname ?? settings.host)
    } else {
      return PlaintextEndpoint(
        host: settings.host,
        port: settings.port)
    }
  }

  /**
   * Factory a new instance of the service this factory is specialized to. Given an endpoint
   * spec, initialize the new service and prepare it for use.
   */
  static func factory(endpoint: RPCEndpoint) -> Service {
    if let secure = endpoint as? SecureRPCEndpoint {
      // connect over TLS
      if let chain = secure.chain {
        return Service.init(
          address: "\(secure.host):\(secure.port)",
          certificates: chain,
          host: secure.hostname)
      } else {
        return Service.init(
          address: "\(endpoint.host):\(endpoint.port)", secure: true)
      }
    } else {
      // connect over plaintext
      return Service.init(
        address: "\(endpoint.host):\(endpoint.port)", secure: false)
    }
  }

  /**
   * Factory a new instance of the service this factory is specialized to. Given a set of RPC
   * service settings, build an endpoint spec, and then initialize the new service and prepare
   * it for use.
   */
  static func factory(forService service: RPCServiceSettings) -> Service {
    return factory(endpoint: endpoint(forService: service))
  }
}


// MARK: - RPC Logic

/**
 * Low-level RPC logic class. Provides routines and methods for preparing, dispatching, and
 * fulfilling callbacks for RPCs of any type. Driven by the higher-order specialized service
 * classes to apply stronger typing.
 */
internal final class RPCLogic: ClientLogic {
  /**
   * Main API client settings.
   */
  let settings: Bloombox.Settings


  /**
   * Initialize this RPC logic with client settings.
   */
  init(settings: Bloombox.Settings) {
    self.settings = settings
  }

  /**
   * Prepare low-level RPC logic for use.
   */
  func prepare() { /* default: no-op */ }
}
