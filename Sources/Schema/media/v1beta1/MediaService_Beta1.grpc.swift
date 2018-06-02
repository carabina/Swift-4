/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: media/v1beta1/MediaService_Beta1.proto
 *
 */

/*
 * Copyright 2018, gRPC Authors All rights reserved.
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
public enum Bloombox_Schema_Services_Media_V1Beta1_MediaClientError : Error {
  case endOfStream
  case invalidMessageReceived
  case error(c: CallResult)
}

/// Upload (Unary)
public class Bloombox_Schema_Services_Media_V1Beta1_MediaUploadCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/bloombox.schema.services.media.v1beta1.Media/Upload")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request,
                       metadata: Metadata) throws -> Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Bloombox_Schema_Services_Media_V1Beta1_MediaClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request,
                         metadata: Metadata,
                         completion: @escaping (Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response?, CallResult)->())
    throws -> Bloombox_Schema_Services_Media_V1Beta1_MediaUploadCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response(serializedData:responseData) {
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

/// Attach (Unary)
public class Bloombox_Schema_Services_Media_V1Beta1_MediaAttachCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/bloombox.schema.services.media.v1beta1.Media/Attach")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request,
                       metadata: Metadata) throws -> SwiftProtobuf.Google_Protobuf_Empty {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : SwiftProtobuf.Google_Protobuf_Empty?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Bloombox_Schema_Services_Media_V1Beta1_MediaClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request,
                         metadata: Metadata,
                         completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult)->())
    throws -> Bloombox_Schema_Services_Media_V1Beta1_MediaAttachCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? SwiftProtobuf.Google_Protobuf_Empty(serializedData:responseData) {
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
public final class Bloombox_Schema_Services_Media_V1Beta1_MediaService {
  public var channel: Channel

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

  /// Create a client.
  public init(address: String, secure: Bool = true) {
    gRPC.initialize()
    channel = Channel(address:address, secure:secure)
    metadata = Metadata()
  }

  /// Create a client that makes secure connections with a custom certificate and (optional) hostname.
  public init(address: String, certificates: String, host: String?) {
    gRPC.initialize()
    channel = Channel(address:address, certificates:certificates, host:host)
    metadata = Metadata()
  }

  /// Synchronous. Unary.
  public func upload(_ request: Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request)
    throws
    -> Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response {
      return try Bloombox_Schema_Services_Media_V1Beta1_MediaUploadCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func upload(_ request: Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request,
                  completion: @escaping (Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response?, CallResult)->())
    throws
    -> Bloombox_Schema_Services_Media_V1Beta1_MediaUploadCall {
      return try Bloombox_Schema_Services_Media_V1Beta1_MediaUploadCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func attach(_ request: Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request)
    throws
    -> SwiftProtobuf.Google_Protobuf_Empty {
      return try Bloombox_Schema_Services_Media_V1Beta1_MediaAttachCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func attach(_ request: Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request,
                  completion: @escaping (SwiftProtobuf.Google_Protobuf_Empty?, CallResult)->())
    throws
    -> Bloombox_Schema_Services_Media_V1Beta1_MediaAttachCall {
      return try Bloombox_Schema_Services_Media_V1Beta1_MediaAttachCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
}


/// Type for errors thrown from generated server code.
public enum Bloombox_Schema_Services_Media_V1Beta1_MediaServerError : Error {
  case endOfStream
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Bloombox_Schema_Services_Media_V1Beta1_MediaProvider {
  func upload(request : Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request, session : Bloombox_Schema_Services_Media_V1Beta1_MediaUploadSession) throws -> Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Response
  func attach(request : Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request, session : Bloombox_Schema_Services_Media_V1Beta1_MediaAttachSession) throws -> SwiftProtobuf.Google_Protobuf_Empty
}

/// Common properties available in each service session.
public class Bloombox_Schema_Services_Media_V1Beta1_MediaSession {
  fileprivate var handler : gRPC.Handler
  public var requestMetadata : Metadata { return handler.requestMetadata }

  public var statusCode : Int = 0
  public var statusMessage : String = "OK"
  public var initialMetadata : Metadata = Metadata()
  public var trailingMetadata : Metadata = Metadata()

  fileprivate init(handler:gRPC.Handler) {
    self.handler = handler
  }
}

// Upload (Unary)
public class Bloombox_Schema_Services_Media_V1Beta1_MediaUploadSession : Bloombox_Schema_Services_Media_V1Beta1_MediaSession {
  private var provider : Bloombox_Schema_Services_Media_V1Beta1_MediaProvider

  /// Create a session.
  fileprivate init(handler:gRPC.Handler, provider: Bloombox_Schema_Services_Media_V1Beta1_MediaProvider) {
    self.provider = provider
    super.init(handler:handler)
  }

  /// Run the session. Internal.
  fileprivate func run(queue:DispatchQueue) throws {
    try handler.receiveMessage(initialMetadata:initialMetadata) {(requestData) in
      if let requestData = requestData {
        let requestMessage = try Bloombox_Schema_Services_Media_V1beta1_UploadMedia.Request(serializedData:requestData)
        let replyMessage = try self.provider.upload(request:requestMessage, session: self)
        try self.handler.sendResponse(message:replyMessage.serializedData(),
                                      statusCode:self.statusCode,
                                      statusMessage:self.statusMessage,
                                      trailingMetadata:self.trailingMetadata)
      }
    }
  }
}

// Attach (Unary)
public class Bloombox_Schema_Services_Media_V1Beta1_MediaAttachSession : Bloombox_Schema_Services_Media_V1Beta1_MediaSession {
  private var provider : Bloombox_Schema_Services_Media_V1Beta1_MediaProvider

  /// Create a session.
  fileprivate init(handler:gRPC.Handler, provider: Bloombox_Schema_Services_Media_V1Beta1_MediaProvider) {
    self.provider = provider
    super.init(handler:handler)
  }

  /// Run the session. Internal.
  fileprivate func run(queue:DispatchQueue) throws {
    try handler.receiveMessage(initialMetadata:initialMetadata) {(requestData) in
      if let requestData = requestData {
        let requestMessage = try Bloombox_Schema_Services_Media_V1beta1_AttachMedia.Request(serializedData:requestData)
        let replyMessage = try self.provider.attach(request:requestMessage, session: self)
        try self.handler.sendResponse(message:replyMessage.serializedData(),
                                      statusCode:self.statusCode,
                                      statusMessage:self.statusMessage,
                                      trailingMetadata:self.trailingMetadata)
      }
    }
  }
}


/// Main server for generated service
public class Bloombox_Schema_Services_Media_V1Beta1_MediaServer {
  private var address: String
  private var server: gRPC.Server
  private var provider: Bloombox_Schema_Services_Media_V1Beta1_MediaProvider?

  /// Create a server that accepts insecure connections.
  public init(address:String,
              provider:Bloombox_Schema_Services_Media_V1Beta1_MediaProvider) {
    gRPC.initialize()
    self.address = address
    self.provider = provider
    self.server = gRPC.Server(address:address)
  }

  /// Create a server that accepts secure connections.
  public init?(address:String,
               certificateURL:URL,
               keyURL:URL,
               provider:Bloombox_Schema_Services_Media_V1Beta1_MediaProvider) {
    gRPC.initialize()
    self.address = address
    self.provider = provider
    guard
      let certificate = try? String(contentsOf: certificateURL, encoding: .utf8),
      let key = try? String(contentsOf: keyURL, encoding: .utf8)
      else {
        return nil
    }
    self.server = gRPC.Server(address:address, key:key, certs:certificate)
  }

  /// Start the server.
  public func start(queue:DispatchQueue = DispatchQueue.global()) {
    guard let provider = self.provider else {
      fatalError() // the server requires a provider
    }
    server.run {(handler) in
      print("Server received request to " + handler.host
        + " calling " + handler.method
        + " from " + handler.caller
        + " with " + String(describing:handler.requestMetadata) )

      do {
        switch handler.method {
        case "/bloombox.schema.services.media.v1beta1.Media/Upload":
          try Bloombox_Schema_Services_Media_V1Beta1_MediaUploadSession(handler:handler, provider:provider).run(queue:queue)
        case "/bloombox.schema.services.media.v1beta1.Media/Attach":
          try Bloombox_Schema_Services_Media_V1Beta1_MediaAttachSession(handler:handler, provider:provider).run(queue:queue)
        default:
          break // handle unknown requests
        }
      } catch (let error) {
        print("Server error: \(error)")
      }
    }
  }
}
