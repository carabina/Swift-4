/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: devices/v1beta1/DevicesService_Beta1.proto
 *
 */

/*
 * Copyright 2017, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation
import Dispatch
import gRPC
import SwiftProtobuf

/// Type for errors thrown from generated client code.
public enum Bloombox_Schema_Services_Devices_V1Beta1_DevicesClientError : Error {
  case endOfStream
  case invalidMessageReceived
  case error(c: CallResult)
}

/// Ping (Unary)
public class Bloombox_Schema_Services_Devices_V1Beta1_DevicesPingCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/bloombox.schema.services.devices.v1beta1.Devices/Ping")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Bloombox_Schema_Services_Devices_V1beta1_Ping_Request,
                       metadata: Metadata) throws -> Bloombox_Schema_Services_Devices_V1beta1_Ping_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Bloombox_Schema_Services_Devices_V1beta1_Ping_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Bloombox_Schema_Services_Devices_V1Beta1_DevicesClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Bloombox_Schema_Services_Devices_V1beta1_Ping_Request,
                         metadata: Metadata,
                         completion: @escaping (Bloombox_Schema_Services_Devices_V1beta1_Ping_Response?, CallResult)->())
    throws -> Bloombox_Schema_Services_Devices_V1Beta1_DevicesPingCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Bloombox_Schema_Services_Devices_V1beta1_Ping_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// Activate (Unary)
public class Bloombox_Schema_Services_Devices_V1Beta1_DevicesActivateCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/bloombox.schema.services.devices.v1beta1.Devices/Activate")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Bloombox_Schema_Services_Devices_V1beta1_Activation_Request,
                       metadata: Metadata) throws -> Bloombox_Schema_Services_Devices_V1beta1_Activation_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Bloombox_Schema_Services_Devices_V1beta1_Activation_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Bloombox_Schema_Services_Devices_V1Beta1_DevicesClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Bloombox_Schema_Services_Devices_V1beta1_Activation_Request,
                         metadata: Metadata,
                         completion: @escaping (Bloombox_Schema_Services_Devices_V1beta1_Activation_Response?, CallResult)->())
    throws -> Bloombox_Schema_Services_Devices_V1Beta1_DevicesActivateCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Bloombox_Schema_Services_Devices_V1beta1_Activation_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// Call methods of this class to make API calls.
public final class Bloombox_Schema_Services_Devices_V1Beta1_DevicesService {
  private var channel: Channel

  /// This metadata will be sent with all requests.
  public var metadata : Metadata

  /// This property allows the service host name to be overridden.
  /// For example, it can be used to make calls to "localhost:8080"
  /// appear to be to "example.com".
  public var host : String {
    get {
      return self.channel.host
    }
    set {
      self.channel.host = newValue
    }
  }

  /// Create a client that makes insecure connections.
  public required init(address: String) {
    gRPC.initialize()
    channel = Channel(address:address)
    metadata = Metadata()
  }

  /// Create a client that makes secure connections.
  public required init(address: String, certificates: String, host: String) {
    gRPC.initialize()
    channel = Channel(address:address, certificates:certificates, host:host)
    metadata = Metadata()
  }

  /// Synchronous. Unary.
  public func ping(_ request: Bloombox_Schema_Services_Devices_V1beta1_Ping_Request)
    throws
    -> Bloombox_Schema_Services_Devices_V1beta1_Ping_Response {
      return try Bloombox_Schema_Services_Devices_V1Beta1_DevicesPingCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func ping(_ request: Bloombox_Schema_Services_Devices_V1beta1_Ping_Request,
                  completion: @escaping (Bloombox_Schema_Services_Devices_V1beta1_Ping_Response?, CallResult)->())
    throws
    -> Bloombox_Schema_Services_Devices_V1Beta1_DevicesPingCall {
      return try Bloombox_Schema_Services_Devices_V1Beta1_DevicesPingCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func activate(_ request: Bloombox_Schema_Services_Devices_V1beta1_Activation_Request)
    throws
    -> Bloombox_Schema_Services_Devices_V1beta1_Activation_Response {
      return try Bloombox_Schema_Services_Devices_V1Beta1_DevicesActivateCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func activate(_ request: Bloombox_Schema_Services_Devices_V1beta1_Activation_Request,
                  completion: @escaping (Bloombox_Schema_Services_Devices_V1beta1_Activation_Response?, CallResult)->())
    throws
    -> Bloombox_Schema_Services_Devices_V1Beta1_DevicesActivateCall {
      return try Bloombox_Schema_Services_Devices_V1Beta1_DevicesActivateCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
}
