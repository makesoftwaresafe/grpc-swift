// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: health.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2015 The gRPC Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// The canonical version of this proto can be found at
// https://github.com/grpc/grpc-proto/blob/master/grpc/health/v1/health.proto

package import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

package struct Grpc_Health_V1_HealthCheckRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  package var service: String = String()

  package var unknownFields = SwiftProtobuf.UnknownStorage()

  package init() {}
}

package struct Grpc_Health_V1_HealthCheckResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  package var status: Grpc_Health_V1_HealthCheckResponse.ServingStatus = .unknown

  package var unknownFields = SwiftProtobuf.UnknownStorage()

  package enum ServingStatus: SwiftProtobuf.Enum, Swift.CaseIterable {
    package typealias RawValue = Int
    case unknown // = 0
    case serving // = 1
    case notServing // = 2

    /// Used only by the Watch method.
    case serviceUnknown // = 3
    case UNRECOGNIZED(Int)

    package init() {
      self = .unknown
    }

    package init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .serving
      case 2: self = .notServing
      case 3: self = .serviceUnknown
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    package var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .serving: return 1
      case .notServing: return 2
      case .serviceUnknown: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

    // The compiler won't synthesize support with the UNRECOGNIZED case.
    package static let allCases: [Grpc_Health_V1_HealthCheckResponse.ServingStatus] = [
      .unknown,
      .serving,
      .notServing,
      .serviceUnknown,
    ]

  }

  package init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grpc.health.v1"

extension Grpc_Health_V1_HealthCheckRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  package static let protoMessageName: String = _protobuf_package + ".HealthCheckRequest"
  package static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "service"),
  ]

  package mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.service) }()
      default: break
      }
    }
  }

  package func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.service.isEmpty {
      try visitor.visitSingularStringField(value: self.service, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  package static func ==(lhs: Grpc_Health_V1_HealthCheckRequest, rhs: Grpc_Health_V1_HealthCheckRequest) -> Bool {
    if lhs.service != rhs.service {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Health_V1_HealthCheckResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  package static let protoMessageName: String = _protobuf_package + ".HealthCheckResponse"
  package static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  package mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      default: break
      }
    }
  }

  package func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != .unknown {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  package static func ==(lhs: Grpc_Health_V1_HealthCheckResponse, rhs: Grpc_Health_V1_HealthCheckResponse) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Health_V1_HealthCheckResponse.ServingStatus: SwiftProtobuf._ProtoNameProviding {
  package static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "SERVING"),
    2: .same(proto: "NOT_SERVING"),
    3: .same(proto: "SERVICE_UNKNOWN"),
  ]
}
