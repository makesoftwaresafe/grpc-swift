/*
 * Copyright 2024, gRPC Authors All rights reserved.
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

import NIOCore

@_spi(Package)
extension NIOCore.SocketAddress {
  public init(_ address: GRPCHTTP2Core.SocketAddress.IPv4) throws {
    try self.init(ipAddress: address.host, port: address.port)
  }

  public init(_ address: GRPCHTTP2Core.SocketAddress.IPv6) throws {
    try self.init(ipAddress: address.host, port: address.port)
  }

  public init(_ address: GRPCHTTP2Core.SocketAddress.UnixDomainSocket) throws {
    try self.init(unixDomainSocketPath: address.path)
  }
}