// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSElasticComputeCloudClient.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum ElasticComputeCloudClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

/**
 AWS Client for the ElasticComputeCloud service.
 */
public struct AWSElasticComputeCloudClient: ElasticComputeCloudClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "ec2",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2016-11-15",
                connectionTimeoutSeconds: Int = 10) {
        let clientDelegate = XMLAWSHttpClientDelegate<ElasticComputeCloudError>(
            outputListDecodingStrategy: .collapseListUsingItemTag("item"))

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds)
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.apiVersion = apiVersion
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The AcceptReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuoteAsync(input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptReservedInstancesExchangeQuoteOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptReservedInstancesExchangeQuote.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuoteSync(input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptReservedInstancesExchangeQuoteOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptReservedInstancesExchangeQuote.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The AcceptVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptVpcEndpointConnections.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptVpcEndpointConnections.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The AcceptVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptVpcPeeringConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnectionSync(input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AcceptVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.acceptVpcPeeringConnection.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
         - completion: The AdvertiseByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The AdvertiseByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func advertiseByoipCidrAsync(input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AdvertiseByoipCidrResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AdvertiseByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.AdvertiseByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.advertiseByoipCidr.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AdvertiseByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func advertiseByoipCidrSync(input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AdvertiseByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.AdvertiseByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.advertiseByoipCidr.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AllocateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
         - completion: The AllocateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateAddressResult
           object will be validated before being returned to caller.
     */
    public func allocateAddressAsync(input: ElasticComputeCloudModel.AllocateAddressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateAddressResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AllocateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.AllocateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.allocateAddress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AllocateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateAddressSync(input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AllocateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.AllocateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.allocateAddress.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AllocateHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
         - completion: The AllocateHostsResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateHostsResult
           object will be validated before being returned to caller.
     */
    public func allocateHostsAsync(input: ElasticComputeCloudModel.AllocateHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateHostsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AllocateHostsOperationHTTPRequestInput<ElasticComputeCloudModel.AllocateHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.allocateHosts.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AllocateHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateHostsSync(input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AllocateHostsOperationHTTPRequestInput<ElasticComputeCloudModel.AllocateHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.allocateHosts.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
         - completion: The AssignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    public func assignIpv6AddressesAsync(input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssignIpv6AddressesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssignIpv6AddressesOperationHTTPRequestInput<ElasticComputeCloudModel.AssignIpv6AddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.assignIpv6Addresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignIpv6AddressesSync(input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssignIpv6AddressesOperationHTTPRequestInput<ElasticComputeCloudModel.AssignIpv6AddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.assignIpv6Addresses.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func assignPrivateIpAddressesAsync(input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssignPrivateIpAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.AssignPrivateIpAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.assignPrivateIpAddresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     */
    public func assignPrivateIpAddressesSync(input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssignPrivateIpAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.AssignPrivateIpAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.assignPrivateIpAddresses.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
         - completion: The AssociateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateAddressResult
           object will be validated before being returned to caller.
     */
    public func associateAddressAsync(input: ElasticComputeCloudModel.AssociateAddressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateAddressResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateAddress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateAddressSync(input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateAddress.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func associateDhcpOptionsAsync(input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateDhcpOptions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    public func associateDhcpOptionsSync(input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateDhcpOptions.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The AssociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    public func associateIamInstanceProfileAsync(input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateIamInstanceProfileResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateIamInstanceProfileOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateIamInstanceProfileRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateIamInstanceProfile.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateIamInstanceProfileSync(input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateIamInstanceProfileOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateIamInstanceProfileRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateIamInstanceProfile.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
         - completion: The AssociateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateRouteTableResult
           object will be validated before being returned to caller.
     */
    public func associateRouteTableAsync(input: ElasticComputeCloudModel.AssociateRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateRouteTableResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateRouteTable.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateRouteTableSync(input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateRouteTable.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The AssociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlockAsync(input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateSubnetCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateSubnetCidrBlock.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlockSync(input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateSubnetCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateSubnetCidrBlock.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The AssociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func associateVpcCidrBlockAsync(input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateVpcCidrBlockResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateVpcCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateVpcCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateVpcCidrBlock.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AssociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateVpcCidrBlockSync(input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AssociateVpcCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.AssociateVpcCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.associateVpcCidrBlock.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
         - completion: The AttachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The AttachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    public func attachClassicLinkVpcAsync(input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachClassicLinkVpcResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachClassicLinkVpcOperationHTTPRequestInput<ElasticComputeCloudModel.AttachClassicLinkVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachClassicLinkVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachClassicLinkVpcSync(input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachClassicLinkVpcOperationHTTPRequestInput<ElasticComputeCloudModel.AttachClassicLinkVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachClassicLinkVpc.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func attachInternetGatewayAsync(input: ElasticComputeCloudModel.AttachInternetGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.AttachInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    public func attachInternetGatewaySync(input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.AttachInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachInternetGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
         - completion: The AttachNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The AttachNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    public func attachNetworkInterfaceAsync(input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachNetworkInterfaceResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.AttachNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachNetworkInterface.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachNetworkInterfaceSync(input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.AttachNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachNetworkInterface.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    public func attachVolumeAsync(input: ElasticComputeCloudModel.AttachVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.AttachVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVolumeSync(input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.AttachVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachVolume.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
         - completion: The AttachVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The AttachVpnGatewayResult
           object will be validated before being returned to caller.
     */
    public func attachVpnGatewayAsync(input: ElasticComputeCloudModel.AttachVpnGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachVpnGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.AttachVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachVpnGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AttachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVpnGatewaySync(input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AttachVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.AttachVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.attachVpnGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func authorizeSecurityGroupEgressAsync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AuthorizeSecurityGroupEgressOperationHTTPRequestInput<ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.authorizeSecurityGroupEgress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupEgressSync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AuthorizeSecurityGroupEgressOperationHTTPRequestInput<ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.authorizeSecurityGroupEgress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func authorizeSecurityGroupIngressAsync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AuthorizeSecurityGroupIngressOperationHTTPRequestInput<ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.authorizeSecurityGroupIngress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupIngressSync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = AuthorizeSecurityGroupIngressOperationHTTPRequestInput<ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.authorizeSecurityGroupIngress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the BundleInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
         - completion: The BundleInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The BundleInstanceResult
           object will be validated before being returned to caller.
     */
    public func bundleInstanceAsync(input: ElasticComputeCloudModel.BundleInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.BundleInstanceResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = BundleInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.BundleInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.bundleInstance.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the BundleInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func bundleInstanceSync(input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = BundleInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.BundleInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.bundleInstance.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelBundleTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
         - completion: The CancelBundleTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelBundleTaskResult
           object will be validated before being returned to caller.
     */
    public func cancelBundleTaskAsync(input: ElasticComputeCloudModel.CancelBundleTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelBundleTaskResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelBundleTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelBundleTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelBundleTask.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelBundleTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelBundleTaskSync(input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelBundleTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelBundleTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelBundleTask.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
         - completion: The CancelCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CancelCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func cancelCapacityReservationAsync(input: ElasticComputeCloudModel.CancelCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelCapacityReservationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.CancelCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelCapacityReservation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelCapacityReservationSync(input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.CancelCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelCapacityReservation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelConversionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func cancelConversionTaskAsync(input: ElasticComputeCloudModel.CancelConversionRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelConversionTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelConversionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelConversionTask.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelConversionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    public func cancelConversionTaskSync(input: ElasticComputeCloudModel.CancelConversionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelConversionTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelConversionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelConversionTask.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func cancelExportTaskAsync(input: ElasticComputeCloudModel.CancelExportTaskRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelExportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelExportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelExportTask.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    public func cancelExportTaskSync(input: ElasticComputeCloudModel.CancelExportTaskRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelExportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelExportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelExportTask.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelImportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
         - completion: The CancelImportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelImportTaskResult
           object will be validated before being returned to caller.
     */
    public func cancelImportTaskAsync(input: ElasticComputeCloudModel.CancelImportTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelImportTaskResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelImportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelImportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelImportTask.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelImportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelImportTaskSync(input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelImportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CancelImportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelImportTask.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
         - completion: The CancelReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CancelReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListingAsync(input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelReservedInstancesListingResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelReservedInstancesListingOperationHTTPRequestInput<ElasticComputeCloudModel.CancelReservedInstancesListingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelReservedInstancesListing.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListingSync(input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelReservedInstancesListingOperationHTTPRequestInput<ElasticComputeCloudModel.CancelReservedInstancesListingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelReservedInstancesListing.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
         - completion: The CancelSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequestsAsync(input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelSpotFleetRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.CancelSpotFleetRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelSpotFleetRequests.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequestsSync(input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelSpotFleetRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.CancelSpotFleetRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelSpotFleetRequests.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The CancelSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequestsAsync(input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelSpotInstanceRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelSpotInstanceRequests.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CancelSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequestsSync(input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CancelSpotInstanceRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.cancelSpotInstanceRequests.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ConfirmProductInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
         - completion: The ConfirmProductInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ConfirmProductInstanceResult
           object will be validated before being returned to caller.
     */
    public func confirmProductInstanceAsync(input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ConfirmProductInstanceResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ConfirmProductInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.ConfirmProductInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.confirmProductInstance.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ConfirmProductInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func confirmProductInstanceSync(input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ConfirmProductInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.ConfirmProductInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.confirmProductInstance.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopyFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
         - completion: The CopyFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func copyFpgaImageAsync(input: ElasticComputeCloudModel.CopyFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyFpgaImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopyFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.CopyFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copyFpgaImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopyFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyFpgaImageSync(input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopyFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.CopyFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copyFpgaImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopyImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
         - completion: The CopyImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyImageResult
           object will be validated before being returned to caller.
     */
    public func copyImageAsync(input: ElasticComputeCloudModel.CopyImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopyImageOperationHTTPRequestInput<ElasticComputeCloudModel.CopyImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copyImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopyImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyImageSync(input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopyImageOperationHTTPRequestInput<ElasticComputeCloudModel.CopyImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copyImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopySnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
         - completion: The CopySnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The CopySnapshotResult
           object will be validated before being returned to caller.
     */
    public func copySnapshotAsync(input: ElasticComputeCloudModel.CopySnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopySnapshotResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopySnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.CopySnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copySnapshot.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CopySnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copySnapshotSync(input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CopySnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.CopySnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.copySnapshot.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
         - completion: The CreateCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func createCapacityReservationAsync(input: ElasticComputeCloudModel.CreateCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCapacityReservationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createCapacityReservation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCapacityReservationSync(input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createCapacityReservation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
         - completion: The CreateCustomerGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomerGatewayResult
           object will be validated before being returned to caller.
     */
    public func createCustomerGatewayAsync(input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCustomerGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateCustomerGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateCustomerGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createCustomerGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCustomerGatewaySync(input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateCustomerGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateCustomerGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createCustomerGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDefaultSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
         - completion: The CreateDefaultSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultSubnetResult
           object will be validated before being returned to caller.
     */
    public func createDefaultSubnetAsync(input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultSubnetResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDefaultSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDefaultSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDefaultSubnet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDefaultSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultSubnetSync(input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDefaultSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDefaultSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDefaultSubnet.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDefaultVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
         - completion: The CreateDefaultVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultVpcResult
           object will be validated before being returned to caller.
     */
    public func createDefaultVpcAsync(input: ElasticComputeCloudModel.CreateDefaultVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultVpcResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDefaultVpcOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDefaultVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDefaultVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDefaultVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultVpcSync(input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDefaultVpcOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDefaultVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDefaultVpc.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
         - completion: The CreateDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    public func createDhcpOptionsAsync(input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDhcpOptionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDhcpOptions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDhcpOptionsSync(input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createDhcpOptions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The CreateEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGatewayAsync(input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateEgressOnlyInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createEgressOnlyInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGatewaySync(input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateEgressOnlyInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createEgressOnlyInternetGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
         - completion: The CreateFleetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFleetResult
           object will be validated before being returned to caller.
     */
    public func createFleetAsync(input: ElasticComputeCloudModel.CreateFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFleetResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFleetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFleet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFleetSync(input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFleetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFleet.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
         - completion: The CreateFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func createFlowLogsAsync(input: ElasticComputeCloudModel.CreateFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFlowLogsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFlowLogs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFlowLogsSync(input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFlowLogs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
         - completion: The CreateFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func createFpgaImageAsync(input: ElasticComputeCloudModel.CreateFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFpgaImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFpgaImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFpgaImageSync(input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.CreateFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createFpgaImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
         - completion: The CreateImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateImageResult
           object will be validated before being returned to caller.
     */
    public func createImageAsync(input: ElasticComputeCloudModel.CreateImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateImageOperationHTTPRequestInput<ElasticComputeCloudModel.CreateImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createImageSync(input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateImageOperationHTTPRequestInput<ElasticComputeCloudModel.CreateImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateInstanceExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
         - completion: The CreateInstanceExportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInstanceExportTaskResult
           object will be validated before being returned to caller.
     */
    public func createInstanceExportTaskAsync(input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInstanceExportTaskResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateInstanceExportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CreateInstanceExportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createInstanceExportTask.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateInstanceExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInstanceExportTaskSync(input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateInstanceExportTaskOperationHTTPRequestInput<ElasticComputeCloudModel.CreateInstanceExportTaskRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createInstanceExportTask.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
         - completion: The CreateInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func createInternetGatewayAsync(input: ElasticComputeCloudModel.CreateInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInternetGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInternetGatewaySync(input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createInternetGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
         - completion: The KeyPair object or an error will be passed to this 
           callback when the operation is complete. The KeyPair
           object will be validated before being returned to caller.
     */
    public func createKeyPairAsync(input: ElasticComputeCloudModel.CreateKeyPairRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.KeyPair>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.CreateKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createKeyPair.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createKeyPairSync(input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.CreateKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createKeyPair.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func createLaunchTemplateAsync(input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.CreateLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createLaunchTemplate.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateSync(input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.CreateLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createLaunchTemplate.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateVersionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateVersionResult
           object will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersionAsync(input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateLaunchTemplateVersionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createLaunchTemplateVersion.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersionSync(input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateLaunchTemplateVersionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createLaunchTemplateVersion.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
         - completion: The CreateNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNatGatewayResult
           object will be validated before being returned to caller.
     */
    public func createNatGatewayAsync(input: ElasticComputeCloudModel.CreateNatGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNatGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNatGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNatGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNatGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNatGatewaySync(input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNatGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNatGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNatGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
         - completion: The CreateNetworkAclResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkAclResult
           object will be validated before being returned to caller.
     */
    public func createNetworkAclAsync(input: ElasticComputeCloudModel.CreateNetworkAclRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkAclResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkAclOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkAclRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkAcl.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkAclSync(input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkAclOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkAclRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkAcl.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createNetworkAclEntryAsync(input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkAclEntry.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    public func createNetworkAclEntrySync(input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkAclEntry.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
         - completion: The CreateNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    public func createNetworkInterfaceAsync(input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfaceResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkInterface.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfaceSync(input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkInterface.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The CreateNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermissionAsync(input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkInterfacePermissionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkInterfacePermission.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermissionSync(input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateNetworkInterfacePermissionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createNetworkInterfacePermission.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreatePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createPlacementGroupAsync(input: ElasticComputeCloudModel.CreatePlacementGroupRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreatePlacementGroupOperationHTTPRequestInput<ElasticComputeCloudModel.CreatePlacementGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createPlacementGroup.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreatePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     */
    public func createPlacementGroupSync(input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreatePlacementGroupOperationHTTPRequestInput<ElasticComputeCloudModel.CreatePlacementGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createPlacementGroup.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
         - completion: The CreateReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CreateReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    public func createReservedInstancesListingAsync(input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateReservedInstancesListingResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateReservedInstancesListingOperationHTTPRequestInput<ElasticComputeCloudModel.CreateReservedInstancesListingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createReservedInstancesListing.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createReservedInstancesListingSync(input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateReservedInstancesListingOperationHTTPRequestInput<ElasticComputeCloudModel.CreateReservedInstancesListingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createReservedInstancesListing.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
         - completion: The CreateRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteResult
           object will be validated before being returned to caller.
     */
    public func createRouteAsync(input: ElasticComputeCloudModel.CreateRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateRouteOperationHTTPRequestInput<ElasticComputeCloudModel.CreateRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createRoute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteSync(input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateRouteOperationHTTPRequestInput<ElasticComputeCloudModel.CreateRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createRoute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
         - completion: The CreateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteTableResult
           object will be validated before being returned to caller.
     */
    public func createRouteTableAsync(input: ElasticComputeCloudModel.CreateRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteTableResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.CreateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createRouteTable.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteTableSync(input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.CreateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createRouteTable.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
         - completion: The CreateSecurityGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityGroupResult
           object will be validated before being returned to caller.
     */
    public func createSecurityGroupAsync(input: ElasticComputeCloudModel.CreateSecurityGroupRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSecurityGroupResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSecurityGroupOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSecurityGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSecurityGroup.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSecurityGroupSync(input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSecurityGroupOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSecurityGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSecurityGroup.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
         - completion: The Snapshot object or an error will be passed to this 
           callback when the operation is complete. The Snapshot
           object will be validated before being returned to caller.
     */
    public func createSnapshotAsync(input: ElasticComputeCloudModel.CreateSnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Snapshot>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSnapshot.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshotSync(input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSnapshot.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The CreateSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
         - completion: The CreateSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSubnetResult
           object will be validated before being returned to caller.
     */
    public func createSubnetAsync(input: ElasticComputeCloudModel.CreateSubnetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSubnetResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSubnet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSubnetSync(input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.CreateSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createSubnet.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createTagsAsync(input: ElasticComputeCloudModel.CreateTagsRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateTagsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createTags.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    public func createTagsSync(input: ElasticComputeCloudModel.CreateTagsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateTagsOperationHTTPRequestInput<ElasticComputeCloudModel.CreateTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createTags.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
         - completion: The Volume object or an error will be passed to this 
           callback when the operation is complete. The Volume
           object will be validated before being returned to caller.
     */
    public func createVolumeAsync(input: ElasticComputeCloudModel.CreateVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Volume>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVolumeSync(input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVolume.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
         - completion: The CreateVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcResult
           object will be validated before being returned to caller.
     */
    public func createVpcAsync(input: ElasticComputeCloudModel.CreateVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcSync(input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpc.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
         - completion: The CreateVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointAsync(input: ElasticComputeCloudModel.CreateVpcEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpoint.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointSync(input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpoint.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotificationAsync(input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointConnectionNotificationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpointConnectionNotification.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotificationSync(input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointConnectionNotificationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpointConnectionNotification.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfigurationAsync(input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointServiceConfigurationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpointServiceConfiguration.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfigurationSync(input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcEndpointServiceConfigurationOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcEndpointServiceConfiguration.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The CreateVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func createVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcPeeringConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcPeeringConnectionSync(input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpcPeeringConnection.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
         - completion: The CreateVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnConnectionResult
           object will be validated before being returned to caller.
     */
    public func createVpnConnectionAsync(input: ElasticComputeCloudModel.CreateVpnConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnConnectionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnConnectionSync(input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnConnection.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createVpnConnectionRouteAsync(input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnConnectionRouteOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnConnectionRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnConnectionRoute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    public func createVpnConnectionRouteSync(input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnConnectionRouteOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnConnectionRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnConnectionRoute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
         - completion: The CreateVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnGatewayResult
           object will be validated before being returned to caller.
     */
    public func createVpnGatewayAsync(input: ElasticComputeCloudModel.CreateVpnGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the CreateVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnGatewaySync(input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = CreateVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.CreateVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.createVpnGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteCustomerGatewayAsync(input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteCustomerGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteCustomerGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteCustomerGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    public func deleteCustomerGatewaySync(input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteCustomerGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteCustomerGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteCustomerGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteDhcpOptionsAsync(input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteDhcpOptions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    public func deleteDhcpOptionsSync(input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteDhcpOptions.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The DeleteEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGatewayAsync(input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteEgressOnlyInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteEgressOnlyInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGatewaySync(input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteEgressOnlyInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteEgressOnlyInternetGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
         - completion: The DeleteFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFleetsResult
           object will be validated before being returned to caller.
     */
    public func deleteFleetsAsync(input: ElasticComputeCloudModel.DeleteFleetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFleetsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFleetsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFleetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFleets.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFleetsSync(input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFleetsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFleetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFleets.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
         - completion: The DeleteFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func deleteFlowLogsAsync(input: ElasticComputeCloudModel.DeleteFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFlowLogsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFlowLogs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFlowLogsSync(input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFlowLogs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
         - completion: The DeleteFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func deleteFpgaImageAsync(input: ElasticComputeCloudModel.DeleteFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFpgaImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFpgaImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFpgaImageSync(input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteFpgaImageOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteFpgaImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteFpgaImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteInternetGatewayAsync(input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    public func deleteInternetGatewaySync(input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteInternetGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteKeyPairAsync(input: ElasticComputeCloudModel.DeleteKeyPairRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteKeyPair.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    public func deleteKeyPairSync(input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteKeyPair.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateAsync(input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteLaunchTemplate.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateSync(input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteLaunchTemplate.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersionsAsync(input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteLaunchTemplateVersionsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteLaunchTemplateVersions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersionsSync(input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteLaunchTemplateVersionsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteLaunchTemplateVersions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
         - completion: The DeleteNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNatGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteNatGatewayAsync(input: ElasticComputeCloudModel.DeleteNatGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNatGatewayResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNatGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNatGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNatGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNatGatewaySync(input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNatGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNatGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNatGateway.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkAclAsync(input: ElasticComputeCloudModel.DeleteNetworkAclRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkAclOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkAclRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkAcl.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    public func deleteNetworkAclSync(input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkAclOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkAclRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkAcl.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkAclEntryAsync(input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkAclEntry.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    public func deleteNetworkAclEntrySync(input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkAclEntry.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkInterfaceAsync(input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkInterface.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    public func deleteNetworkInterfaceSync(input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkInterface.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The DeleteNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermissionAsync(input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkInterfacePermissionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkInterfacePermission.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermissionSync(input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteNetworkInterfacePermissionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteNetworkInterfacePermission.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeletePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deletePlacementGroupAsync(input: ElasticComputeCloudModel.DeletePlacementGroupRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeletePlacementGroupOperationHTTPRequestInput<ElasticComputeCloudModel.DeletePlacementGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deletePlacementGroup.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeletePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    public func deletePlacementGroupSync(input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeletePlacementGroupOperationHTTPRequestInput<ElasticComputeCloudModel.DeletePlacementGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deletePlacementGroup.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteRouteAsync(input: ElasticComputeCloudModel.DeleteRouteRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteRouteOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteRoute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    public func deleteRouteSync(input: ElasticComputeCloudModel.DeleteRouteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteRouteOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteRoute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteRouteTableAsync(input: ElasticComputeCloudModel.DeleteRouteTableRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteRouteTable.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    public func deleteRouteTableSync(input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteRouteTable.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSecurityGroupAsync(input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSecurityGroupOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSecurityGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSecurityGroup.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    public func deleteSecurityGroupSync(input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSecurityGroupOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSecurityGroupRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSecurityGroup.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSnapshotAsync(input: ElasticComputeCloudModel.DeleteSnapshotRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSnapshot.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    public func deleteSnapshotSync(input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSnapshot.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    public func deleteSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSubnetAsync(input: ElasticComputeCloudModel.DeleteSubnetRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSubnet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    public func deleteSubnetSync(input: ElasticComputeCloudModel.DeleteSubnetRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteSubnetOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteSubnetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteSubnet.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteTagsAsync(input: ElasticComputeCloudModel.DeleteTagsRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteTagsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteTags.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    public func deleteTagsSync(input: ElasticComputeCloudModel.DeleteTagsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteTagsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteTags.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVolumeAsync(input: ElasticComputeCloudModel.DeleteVolumeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    public func deleteVolumeSync(input: ElasticComputeCloudModel.DeleteVolumeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVolume.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpcAsync(input: ElasticComputeCloudModel.DeleteVpcRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    public func deleteVpcSync(input: ElasticComputeCloudModel.DeleteVpcRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpc.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotificationsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointConnectionNotificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpointConnectionNotifications.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotificationsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointConnectionNotificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpointConnectionNotifications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurationsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointServiceConfigurationsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpointServiceConfigurations.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurationsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointServiceConfigurationsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpointServiceConfigurations.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpoints.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcEndpointsOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcEndpointsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcEndpoints.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The DeleteVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcPeeringConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnectionSync(input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpcPeeringConnection.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnConnectionAsync(input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    public func deleteVpnConnectionSync(input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnConnection.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnConnectionRouteAsync(input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnConnectionRouteOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnConnectionRoute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    public func deleteVpnConnectionRouteSync(input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnConnectionRouteOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnConnectionRoute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnGatewayAsync(input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeleteVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    public func deleteVpnGatewaySync(input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeleteVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DeleteVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deleteVpnGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
         - completion: The DeprovisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The DeprovisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func deprovisionByoipCidrAsync(input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeprovisionByoipCidrResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeprovisionByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.DeprovisionByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deprovisionByoipCidr.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeprovisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionByoipCidrSync(input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeprovisionByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.DeprovisionByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deprovisionByoipCidr.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeregisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deregisterImageAsync(input: ElasticComputeCloudModel.DeregisterImageRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeregisterImageOperationHTTPRequestInput<ElasticComputeCloudModel.DeregisterImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deregisterImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DeregisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    public func deregisterImageSync(input: ElasticComputeCloudModel.DeregisterImageRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DeregisterImageOperationHTTPRequestInput<ElasticComputeCloudModel.DeregisterImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.deregisterImage.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
         - completion: The DescribeAccountAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAttributesResult
           object will be validated before being returned to caller.
     */
    public func describeAccountAttributesAsync(input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAccountAttributesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAccountAttributesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAccountAttributesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAccountAttributes.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync(input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAccountAttributesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAccountAttributesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAccountAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
         - completion: The DescribeAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesResult
           object will be validated before being returned to caller.
     */
    public func describeAddressesAsync(input: ElasticComputeCloudModel.DescribeAddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAddressesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAddresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddressesSync(input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAddresses.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
         - completion: The DescribeAggregateIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAggregateIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeAggregateIdFormatAsync(input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAggregateIdFormatResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAggregateIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAggregateIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAggregateIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAggregateIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAggregateIdFormatSync(input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAggregateIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAggregateIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAggregateIdFormat.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
         - completion: The DescribeAvailabilityZonesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAvailabilityZonesResult
           object will be validated before being returned to caller.
     */
    public func describeAvailabilityZonesAsync(input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAvailabilityZonesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAvailabilityZonesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAvailabilityZonesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAvailabilityZones.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAvailabilityZonesSync(input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeAvailabilityZonesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeAvailabilityZonesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeAvailabilityZones.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeBundleTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
         - completion: The DescribeBundleTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeBundleTasksResult
           object will be validated before being returned to caller.
     */
    public func describeBundleTasksAsync(input: ElasticComputeCloudModel.DescribeBundleTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeBundleTasksResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeBundleTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeBundleTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeBundleTasks.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeBundleTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeBundleTasksSync(input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeBundleTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeBundleTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeBundleTasks.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeByoipCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
         - completion: The DescribeByoipCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeByoipCidrsResult
           object will be validated before being returned to caller.
     */
    public func describeByoipCidrsAsync(input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeByoipCidrsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeByoipCidrsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeByoipCidrsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeByoipCidrs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeByoipCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeByoipCidrsSync(input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeByoipCidrsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeByoipCidrsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeByoipCidrs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeCapacityReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
         - completion: The DescribeCapacityReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityReservationsResult
           object will be validated before being returned to caller.
     */
    public func describeCapacityReservationsAsync(input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCapacityReservationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeCapacityReservationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeCapacityReservationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeCapacityReservations.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeCapacityReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCapacityReservationsSync(input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeCapacityReservationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeCapacityReservationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeCapacityReservations.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
         - completion: The DescribeClassicLinkInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClassicLinkInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeClassicLinkInstancesAsync(input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeClassicLinkInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeClassicLinkInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeClassicLinkInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClassicLinkInstancesSync(input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeClassicLinkInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeClassicLinkInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeConversionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
         - completion: The DescribeConversionTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeConversionTasksResult
           object will be validated before being returned to caller.
     */
    public func describeConversionTasksAsync(input: ElasticComputeCloudModel.DescribeConversionTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeConversionTasksResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeConversionTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeConversionTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeConversionTasks.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeConversionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeConversionTasksSync(input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeConversionTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeConversionTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeConversionTasks.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeCustomerGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
         - completion: The DescribeCustomerGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCustomerGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeCustomerGatewaysAsync(input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCustomerGatewaysResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeCustomerGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeCustomerGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeCustomerGateways.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeCustomerGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCustomerGatewaysSync(input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeCustomerGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeCustomerGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeCustomerGateways.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
         - completion: The DescribeDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    public func describeDhcpOptionsAsync(input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeDhcpOptionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeDhcpOptions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDhcpOptionsSync(input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeDhcpOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeDhcpOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeDhcpOptions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeEgressOnlyInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeEgressOnlyInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGatewaysAsync(input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeEgressOnlyInternetGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeEgressOnlyInternetGateways.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGatewaysSync(input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeEgressOnlyInternetGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeEgressOnlyInternetGateways.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeElasticGpus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
         - completion: The DescribeElasticGpusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeElasticGpusResult
           object will be validated before being returned to caller.
     */
    public func describeElasticGpusAsync(input: ElasticComputeCloudModel.DescribeElasticGpusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeElasticGpusResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeElasticGpusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeElasticGpusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeElasticGpus.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeElasticGpus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeElasticGpusSync(input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeElasticGpusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeElasticGpusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeElasticGpus.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
         - completion: The DescribeExportTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportTasksResult
           object will be validated before being returned to caller.
     */
    public func describeExportTasksAsync(input: ElasticComputeCloudModel.DescribeExportTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeExportTasksResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeExportTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeExportTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeExportTasks.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportTasksSync(input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeExportTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeExportTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeExportTasks.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleetHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
         - completion: The DescribeFleetHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetHistoryResult
           object will be validated before being returned to caller.
     */
    public func describeFleetHistoryAsync(input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetHistoryResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleetHistory.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleetHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetHistorySync(input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleetHistory.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeFleetInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeFleetInstancesAsync(input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleetInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetInstancesSync(input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleetInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
         - completion: The DescribeFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetsResult
           object will be validated before being returned to caller.
     */
    public func describeFleetsAsync(input: ElasticComputeCloudModel.DescribeFleetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleets.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetsSync(input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFleetsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFleetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFleets.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
         - completion: The DescribeFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func describeFlowLogsAsync(input: ElasticComputeCloudModel.DescribeFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFlowLogsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFlowLogs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFlowLogsSync(input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFlowLogsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFlowLogsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFlowLogs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
         - completion: The DescribeFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeFpgaImageAttributeAsync(input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFpgaImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImageAttributeSync(input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFpgaImageAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFpgaImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
         - completion: The DescribeFpgaImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImagesResult
           object will be validated before being returned to caller.
     */
    public func describeFpgaImagesAsync(input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImagesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFpgaImagesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFpgaImagesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFpgaImages.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeFpgaImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImagesSync(input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeFpgaImagesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeFpgaImagesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeFpgaImages.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
         - completion: The DescribeHostReservationOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationOfferingsResult
           object will be validated before being returned to caller.
     */
    public func describeHostReservationOfferingsAsync(input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostReservationOfferingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHostReservationOfferings.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHostReservationOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationOfferingsSync(input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostReservationOfferingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHostReservationOfferings.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHostReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
         - completion: The DescribeHostReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationsResult
           object will be validated before being returned to caller.
     */
    public func describeHostReservationsAsync(input: ElasticComputeCloudModel.DescribeHostReservationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostReservationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostReservationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHostReservations.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHostReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationsSync(input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostReservationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostReservationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHostReservations.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
         - completion: The DescribeHostsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostsResult
           object will be validated before being returned to caller.
     */
    public func describeHostsAsync(input: ElasticComputeCloudModel.DescribeHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHosts.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostsSync(input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeHostsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeHosts.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
         - completion: The DescribeIamInstanceProfileAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIamInstanceProfileAssociationsResult
           object will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociationsAsync(input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIamInstanceProfileAssociationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIamInstanceProfileAssociations.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociationsSync(input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIamInstanceProfileAssociationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIamInstanceProfileAssociations.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeIdFormatAsync(input: ElasticComputeCloudModel.DescribeIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdFormatResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdFormatSync(input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIdFormat.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdentityIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdentityIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeIdentityIdFormatAsync(input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdentityIdFormatResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIdentityIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIdentityIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIdentityIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdentityIdFormatSync(input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeIdentityIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeIdentityIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeIdentityIdFormat.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
         - completion: The ImageAttribute object or an error will be passed to this 
           callback when the operation is complete. The ImageAttribute
           object will be validated before being returned to caller.
     */
    public func describeImageAttributeAsync(input: ElasticComputeCloudModel.DescribeImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImageAttribute>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImageAttributeSync(input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImageAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResult
           object will be validated before being returned to caller.
     */
    public func describeImagesAsync(input: ElasticComputeCloudModel.DescribeImagesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImagesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImagesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImagesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImages.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImagesSync(input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImagesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImagesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImages.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
         - completion: The DescribeImportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportImageTasksResult
           object will be validated before being returned to caller.
     */
    public func describeImportImageTasksAsync(input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportImageTasksResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImportImageTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImportImageTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImportImageTasks.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportImageTasksSync(input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImportImageTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImportImageTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImportImageTasks.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
         - completion: The DescribeImportSnapshotTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportSnapshotTasksResult
           object will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasksAsync(input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImportSnapshotTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImportSnapshotTasks.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasksSync(input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeImportSnapshotTasksOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeImportSnapshotTasks.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
         - completion: The InstanceAttribute object or an error will be passed to this 
           callback when the operation is complete. The InstanceAttribute
           object will be validated before being returned to caller.
     */
    public func describeInstanceAttributeAsync(input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.InstanceAttribute>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceAttributeSync(input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
         - completion: The DescribeInstanceCreditSpecificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceCreditSpecificationsResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecificationsAsync(input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceCreditSpecificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceCreditSpecifications.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecificationsSync(input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceCreditSpecificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceCreditSpecifications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
         - completion: The DescribeInstanceStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceStatusResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceStatusAsync(input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceStatusResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceStatusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceStatus.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceStatusSync(input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstanceStatusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstanceStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstanceStatus.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
         - completion: The DescribeInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeInstancesAsync(input: ElasticComputeCloudModel.DescribeInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstancesSync(input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeInternetGatewaysAsync(input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInternetGatewaysResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInternetGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInternetGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInternetGateways.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInternetGatewaysSync(input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeInternetGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeInternetGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeInternetGateways.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeKeyPairs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
         - completion: The DescribeKeyPairsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeKeyPairsResult
           object will be validated before being returned to caller.
     */
    public func describeKeyPairsAsync(input: ElasticComputeCloudModel.DescribeKeyPairsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeKeyPairsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeKeyPairsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeKeyPairsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeKeyPairs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeKeyPairs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeKeyPairsSync(input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeKeyPairsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeKeyPairsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeKeyPairs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersionsAsync(input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeLaunchTemplateVersionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeLaunchTemplateVersions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersionsSync(input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeLaunchTemplateVersionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeLaunchTemplateVersions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplatesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplatesResult
           object will be validated before being returned to caller.
     */
    public func describeLaunchTemplatesAsync(input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplatesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeLaunchTemplatesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeLaunchTemplatesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeLaunchTemplates.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeLaunchTemplates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplatesSync(input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeLaunchTemplatesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeLaunchTemplatesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeLaunchTemplates.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeMovingAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
         - completion: The DescribeMovingAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeMovingAddressesResult
           object will be validated before being returned to caller.
     */
    public func describeMovingAddressesAsync(input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeMovingAddressesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeMovingAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeMovingAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeMovingAddresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeMovingAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeMovingAddressesSync(input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeMovingAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeMovingAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeMovingAddresses.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNatGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
         - completion: The DescribeNatGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNatGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeNatGatewaysAsync(input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNatGatewaysResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNatGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNatGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNatGateways.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNatGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNatGatewaysSync(input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNatGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNatGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNatGateways.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkAcls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
         - completion: The DescribeNetworkAclsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkAclsResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkAclsAsync(input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkAclsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkAclsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkAclsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkAcls.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkAcls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkAclsSync(input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkAclsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkAclsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkAcls.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfaceAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfaceAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacePermissionsResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissionsAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfacePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfacePermissions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissionsSync(input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfacePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfacePermissions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacesResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfacesAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfacesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfacesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfaces.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeNetworkInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacesSync(input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeNetworkInterfacesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeNetworkInterfacesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeNetworkInterfaces.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePlacementGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
         - completion: The DescribePlacementGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePlacementGroupsResult
           object will be validated before being returned to caller.
     */
    public func describePlacementGroupsAsync(input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePlacementGroupsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePlacementGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePlacementGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePlacementGroups.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePlacementGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePlacementGroupsSync(input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePlacementGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePlacementGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePlacementGroups.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
         - completion: The DescribePrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrefixListsResult
           object will be validated before being returned to caller.
     */
    public func describePrefixListsAsync(input: ElasticComputeCloudModel.DescribePrefixListsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrefixListsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePrefixListsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePrefixListsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePrefixLists.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrefixListsSync(input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePrefixListsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePrefixListsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePrefixLists.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
         - completion: The DescribePrincipalIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrincipalIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describePrincipalIdFormatAsync(input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrincipalIdFormatResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePrincipalIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePrincipalIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePrincipalIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePrincipalIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrincipalIdFormatSync(input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePrincipalIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePrincipalIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePrincipalIdFormat.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
         - completion: The DescribePublicIpv4PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePublicIpv4PoolsResult
           object will be validated before being returned to caller.
     */
    public func describePublicIpv4PoolsAsync(input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePublicIpv4PoolsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePublicIpv4Pools.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribePublicIpv4Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePublicIpv4PoolsSync(input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribePublicIpv4PoolsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describePublicIpv4Pools.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
         - completion: The DescribeRegionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegionsResult
           object will be validated before being returned to caller.
     */
    public func describeRegionsAsync(input: ElasticComputeCloudModel.DescribeRegionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRegionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeRegionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeRegionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeRegions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRegionsSync(input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeRegionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeRegionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeRegions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesSync(input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesListingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesListingsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesListingsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesListingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesListings.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesListings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesListingsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesListingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesListings.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesModificationsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesModificationsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesModificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesModifications.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesModificationsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesModificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesModifications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesOfferingsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferingsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesOfferingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesOfferings.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferingsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeReservedInstancesOfferingsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeReservedInstancesOfferings.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
         - completion: The DescribeRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRouteTablesResult
           object will be validated before being returned to caller.
     */
    public func describeRouteTablesAsync(input: ElasticComputeCloudModel.DescribeRouteTablesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRouteTablesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeRouteTablesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeRouteTablesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeRouteTables.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRouteTablesSync(input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeRouteTablesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeRouteTablesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeRouteTables.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
         - completion: The DescribeScheduledInstanceAvailabilityResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstanceAvailabilityResult
           object will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailabilityAsync(input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeScheduledInstanceAvailabilityOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeScheduledInstanceAvailability.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailabilitySync(input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeScheduledInstanceAvailabilityOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeScheduledInstanceAvailability.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
         - completion: The DescribeScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeScheduledInstancesAsync(input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeScheduledInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstancesSync(input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeScheduledInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupReferencesResult
           object will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferencesAsync(input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSecurityGroupReferencesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSecurityGroupReferences.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferencesSync(input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSecurityGroupReferencesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSecurityGroupReferences.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    public func describeSecurityGroupsAsync(input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSecurityGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSecurityGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSecurityGroups.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupsSync(input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSecurityGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSecurityGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSecurityGroups.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
         - completion: The DescribeSnapshotAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeSnapshotAttributeAsync(input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSnapshotAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotAttributeSync(input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSnapshotAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
         - completion: The DescribeSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotsResult
           object will be validated before being returned to caller.
     */
    public func describeSnapshotsAsync(input: ElasticComputeCloudModel.DescribeSnapshotsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSnapshotsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSnapshotsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSnapshots.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotsSync(input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSnapshotsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSnapshotsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSnapshots.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The DescribeSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotDatafeedSubscriptionOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotDatafeedSubscription.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeSpotFleetInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetInstancesResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetInstancesAsync(input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetInstancesSync(input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestHistoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestHistoryResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistoryAsync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetRequestHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetRequestHistory.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistorySync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetRequestHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetRequestHistory.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestsAsync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetRequests.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestsSync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotFleetRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotFleetRequests.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequestsAsync(input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotInstanceRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotInstanceRequests.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequestsSync(input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotInstanceRequestsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotInstanceRequests.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotPriceHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotPriceHistoryResult
           object will be validated before being returned to caller.
     */
    public func describeSpotPriceHistoryAsync(input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotPriceHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotPriceHistory.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSpotPriceHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotPriceHistorySync(input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSpotPriceHistoryOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSpotPriceHistory.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeStaleSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeStaleSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroupsAsync(input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeStaleSecurityGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeStaleSecurityGroups.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroupsSync(input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeStaleSecurityGroupsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeStaleSecurityGroups.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSubnets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
         - completion: The DescribeSubnetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSubnetsResult
           object will be validated before being returned to caller.
     */
    public func describeSubnetsAsync(input: ElasticComputeCloudModel.DescribeSubnetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSubnetsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSubnetsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSubnetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSubnets.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeSubnets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSubnetsSync(input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeSubnetsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeSubnetsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeSubnets.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
         - completion: The DescribeTagsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTagsResult
           object will be validated before being returned to caller.
     */
    public func describeTagsAsync(input: ElasticComputeCloudModel.DescribeTagsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTagsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeTagsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeTags.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTagsSync(input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeTagsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeTagsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeTags.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
         - completion: The DescribeVolumeAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeVolumeAttributeAsync(input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumeAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumeAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumeAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeAttributeSync(input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumeAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumeAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumeAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumeStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
         - completion: The DescribeVolumeStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeStatusResult
           object will be validated before being returned to caller.
     */
    public func describeVolumeStatusAsync(input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeStatusResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumeStatusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumeStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumeStatus.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumeStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeStatusSync(input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumeStatusOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumeStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumeStatus.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
         - completion: The DescribeVolumesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesResult
           object will be validated before being returned to caller.
     */
    public func describeVolumesAsync(input: ElasticComputeCloudModel.DescribeVolumesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumes.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesSync(input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
         - completion: The DescribeVolumesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesModificationsResult
           object will be validated before being returned to caller.
     */
    public func describeVolumesModificationsAsync(input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesModificationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumesModificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumesModificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumesModifications.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVolumesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesModificationsSync(input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVolumesModificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVolumesModificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVolumesModifications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
         - completion: The DescribeVpcAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeVpcAttributeAsync(input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcAttributeSync(input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkAsync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcClassicLink.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkSync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcClassicLink.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotificationsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointConnectionNotificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointConnectionNotifications.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotificationsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointConnectionNotificationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointConnectionNotifications.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointConnections.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointConnections.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurationsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServiceConfigurationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServiceConfigurations.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurationsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServiceConfigurationsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServiceConfigurations.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissionsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServicePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServicePermissions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissionsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServicePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServicePermissions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicesResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicesAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServicesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServices.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpointServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicesSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointServicesOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpointServices.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpoints.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcEndpointsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcEndpointsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcEndpoints.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcPeeringConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcPeeringConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcPeeringConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcPeeringConnections.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnectionsSync(input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcPeeringConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcPeeringConnections.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
         - completion: The DescribeVpcsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcsAsync(input: ElasticComputeCloudModel.DescribeVpcsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcs.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpcs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcsSync(input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpcsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpcsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpcs.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpnConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnConnectionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpnConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpnConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpnConnections.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnConnectionsSync(input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpnConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpnConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpnConnections.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpnGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
         - completion: The DescribeVpnGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeVpnGatewaysAsync(input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnGatewaysResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpnGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpnGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpnGateways.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DescribeVpnGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnGatewaysSync(input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DescribeVpnGatewaysOperationHTTPRequestInput<ElasticComputeCloudModel.DescribeVpnGatewaysRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.describeVpnGateways.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
         - completion: The DetachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The DetachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    public func detachClassicLinkVpcAsync(input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DetachClassicLinkVpcResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachClassicLinkVpcOperationHTTPRequestInput<ElasticComputeCloudModel.DetachClassicLinkVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachClassicLinkVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachClassicLinkVpcSync(input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachClassicLinkVpcOperationHTTPRequestInput<ElasticComputeCloudModel.DetachClassicLinkVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachClassicLinkVpc.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachInternetGatewayAsync(input: ElasticComputeCloudModel.DetachInternetGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DetachInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachInternetGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    public func detachInternetGatewaySync(input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachInternetGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DetachInternetGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachInternetGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachNetworkInterfaceAsync(input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.DetachNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachNetworkInterface.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    public func detachNetworkInterfaceSync(input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachNetworkInterfaceOperationHTTPRequestInput<ElasticComputeCloudModel.DetachNetworkInterfaceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachNetworkInterface.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    public func detachVolumeAsync(input: ElasticComputeCloudModel.DetachVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.DetachVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachVolumeSync(input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.DetachVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachVolume.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachVpnGatewayAsync(input: ElasticComputeCloudModel.DetachVpnGatewayRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DetachVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachVpnGateway.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DetachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    public func detachVpnGatewaySync(input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DetachVpnGatewayOperationHTTPRequestInput<ElasticComputeCloudModel.DetachVpnGatewayRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.detachVpnGateway.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disableVgwRoutePropagationAsync(input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVgwRoutePropagationOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVgwRoutePropagationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVgwRoutePropagation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func disableVgwRoutePropagationSync(input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVgwRoutePropagationOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVgwRoutePropagationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVgwRoutePropagation.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkAsync(input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVpcClassicLink.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkSync(input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVpcClassicLink.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisableVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disableVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disassociateAddressAsync(input: ElasticComputeCloudModel.DisassociateAddressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateAddress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    public func disassociateAddressSync(input: ElasticComputeCloudModel.DisassociateAddressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateAddressOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateAddress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The DisassociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfileAsync(input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateIamInstanceProfileOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateIamInstanceProfile.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfileSync(input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateIamInstanceProfileOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateIamInstanceProfile.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disassociateRouteTableAsync(input: ElasticComputeCloudModel.DisassociateRouteTableRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateRouteTable.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    public func disassociateRouteTableSync(input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateRouteTableOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateRouteTableRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateRouteTable.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlockAsync(input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateSubnetCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateSubnetCidrBlock.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlockSync(input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateSubnetCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateSubnetCidrBlock.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlockAsync(input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateVpcCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateVpcCidrBlock.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlockSync(input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = DisassociateVpcCidrBlockOperationHTTPRequestInput<ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.disassociateVpcCidrBlock.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableVgwRoutePropagationAsync(input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVgwRoutePropagationOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVgwRoutePropagationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVgwRoutePropagation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func enableVgwRoutePropagationSync(input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVgwRoutePropagationOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVgwRoutePropagationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVgwRoutePropagation.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVolumeIO operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableVolumeIOAsync(input: ElasticComputeCloudModel.EnableVolumeIORequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVolumeIOOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVolumeIORequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVolumeIO.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVolumeIO operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    public func enableVolumeIOSync(input: ElasticComputeCloudModel.EnableVolumeIORequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVolumeIOOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVolumeIORequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVolumeIO.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkAsync(input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVpcClassicLink.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkSync(input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVpcClassicLinkOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVpcClassicLinkRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVpcClassicLink.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = EnableVpcClassicLinkDnsSupportOperationHTTPRequestInput<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.enableVpcClassicLinkDnsSupport.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetConsoleOutput operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
         - completion: The GetConsoleOutputResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleOutputResult
           object will be validated before being returned to caller.
     */
    public func getConsoleOutputAsync(input: ElasticComputeCloudModel.GetConsoleOutputRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleOutputResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetConsoleOutputOperationHTTPRequestInput<ElasticComputeCloudModel.GetConsoleOutputRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getConsoleOutput.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetConsoleOutput operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleOutputSync(input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetConsoleOutputOperationHTTPRequestInput<ElasticComputeCloudModel.GetConsoleOutputRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getConsoleOutput.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetConsoleScreenshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
         - completion: The GetConsoleScreenshotResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleScreenshotResult
           object will be validated before being returned to caller.
     */
    public func getConsoleScreenshotAsync(input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleScreenshotResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetConsoleScreenshotOperationHTTPRequestInput<ElasticComputeCloudModel.GetConsoleScreenshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getConsoleScreenshot.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetConsoleScreenshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleScreenshotSync(input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetConsoleScreenshotOperationHTTPRequestInput<ElasticComputeCloudModel.GetConsoleScreenshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getConsoleScreenshot.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
         - completion: The GetHostReservationPurchasePreviewResult object or an error will be passed to this 
           callback when the operation is complete. The GetHostReservationPurchasePreviewResult
           object will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreviewAsync(input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetHostReservationPurchasePreviewOperationHTTPRequestInput<ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getHostReservationPurchasePreview.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreviewSync(input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetHostReservationPurchasePreviewOperationHTTPRequestInput<ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getHostReservationPurchasePreview.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetLaunchTemplateData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
         - completion: The GetLaunchTemplateDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetLaunchTemplateDataResult
           object will be validated before being returned to caller.
     */
    public func getLaunchTemplateDataAsync(input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetLaunchTemplateDataResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetLaunchTemplateDataOperationHTTPRequestInput<ElasticComputeCloudModel.GetLaunchTemplateDataRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getLaunchTemplateData.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetLaunchTemplateData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getLaunchTemplateDataSync(input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetLaunchTemplateDataOperationHTTPRequestInput<ElasticComputeCloudModel.GetLaunchTemplateDataRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getLaunchTemplateData.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetPasswordData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
         - completion: The GetPasswordDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetPasswordDataResult
           object will be validated before being returned to caller.
     */
    public func getPasswordDataAsync(input: ElasticComputeCloudModel.GetPasswordDataRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetPasswordDataResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetPasswordDataOperationHTTPRequestInput<ElasticComputeCloudModel.GetPasswordDataRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getPasswordData.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetPasswordData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPasswordDataSync(input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetPasswordDataOperationHTTPRequestInput<ElasticComputeCloudModel.GetPasswordDataRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getPasswordData.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The GetReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The GetReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuoteAsync(input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetReservedInstancesExchangeQuoteOperationHTTPRequestInput<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getReservedInstancesExchangeQuote.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuoteSync(input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = GetReservedInstancesExchangeQuoteOperationHTTPRequestInput<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.getReservedInstancesExchangeQuote.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
         - completion: The ImportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ImportImageResult
           object will be validated before being returned to caller.
     */
    public func importImageAsync(input: ElasticComputeCloudModel.ImportImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportImageOperationHTTPRequestInput<ElasticComputeCloudModel.ImportImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importImageSync(input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportImageOperationHTTPRequestInput<ElasticComputeCloudModel.ImportImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
         - completion: The ImportInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ImportInstanceResult
           object will be validated before being returned to caller.
     */
    public func importInstanceAsync(input: ElasticComputeCloudModel.ImportInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportInstanceResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.ImportInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importInstance.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importInstanceSync(input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportInstanceOperationHTTPRequestInput<ElasticComputeCloudModel.ImportInstanceRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importInstance.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
         - completion: The ImportKeyPairResult object or an error will be passed to this 
           callback when the operation is complete. The ImportKeyPairResult
           object will be validated before being returned to caller.
     */
    public func importKeyPairAsync(input: ElasticComputeCloudModel.ImportKeyPairRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportKeyPairResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.ImportKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importKeyPair.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importKeyPairSync(input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportKeyPairOperationHTTPRequestInput<ElasticComputeCloudModel.ImportKeyPairRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importKeyPair.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
         - completion: The ImportSnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The ImportSnapshotResult
           object will be validated before being returned to caller.
     */
    public func importSnapshotAsync(input: ElasticComputeCloudModel.ImportSnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportSnapshotResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.ImportSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importSnapshot.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importSnapshotSync(input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportSnapshotOperationHTTPRequestInput<ElasticComputeCloudModel.ImportSnapshotRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importSnapshot.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
         - completion: The ImportVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ImportVolumeResult
           object will be validated before being returned to caller.
     */
    public func importVolumeAsync(input: ElasticComputeCloudModel.ImportVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportVolumeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.ImportVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ImportVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importVolumeSync(input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ImportVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.ImportVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.importVolume.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
         - completion: The ModifyCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func modifyCapacityReservationAsync(input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyCapacityReservationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyCapacityReservation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyCapacityReservationSync(input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyCapacityReservationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyCapacityReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyCapacityReservation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
         - completion: The ModifyFleetResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFleetResult
           object will be validated before being returned to caller.
     */
    public func modifyFleetAsync(input: ElasticComputeCloudModel.ModifyFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFleetResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyFleetOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyFleet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFleetSync(input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyFleetOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyFleet.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ModifyFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttributeAsync(input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyFpgaImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttributeSync(input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyFpgaImageAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
         - completion: The ModifyHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyHostsResult
           object will be validated before being returned to caller.
     */
    public func modifyHostsAsync(input: ElasticComputeCloudModel.ModifyHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyHostsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyHostsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyHosts.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyHostsSync(input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyHostsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyHosts.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyIdFormatAsync(input: ElasticComputeCloudModel.ModifyIdFormatRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    public func modifyIdFormatSync(input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyIdFormat.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyIdentityIdFormatAsync(input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyIdentityIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyIdentityIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyIdentityIdFormat.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    public func modifyIdentityIdFormatSync(input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyIdentityIdFormatOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyIdentityIdFormatRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyIdentityIdFormat.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyImageAttributeAsync(input: ElasticComputeCloudModel.ModifyImageAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    public func modifyImageAttributeSync(input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyImageAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyInstanceAttributeAsync(input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    public func modifyInstanceAttributeSync(input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
         - completion: The ModifyInstanceCapacityReservationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCapacityReservationAttributesResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributesAsync(input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceCapacityReservationAttributesOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceCapacityReservationAttributes.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributesSync(input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceCapacityReservationAttributesOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceCapacityReservationAttributes.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyInstanceCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecificationAsync(input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceCreditSpecificationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceCreditSpecification.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecificationSync(input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstanceCreditSpecificationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstanceCreditSpecification.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstancePlacement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
         - completion: The ModifyInstancePlacementResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstancePlacementResult
           object will be validated before being returned to caller.
     */
    public func modifyInstancePlacementAsync(input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstancePlacementResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstancePlacementOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstancePlacementRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstancePlacement.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyInstancePlacement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstancePlacementSync(input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyInstancePlacementOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyInstancePlacementRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyInstancePlacement.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
         - completion: The ModifyLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func modifyLaunchTemplateAsync(input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyLaunchTemplateResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyLaunchTemplate.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyLaunchTemplateSync(input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyLaunchTemplateOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyLaunchTemplateRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyLaunchTemplate.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func modifyNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
         - completion: The ModifyReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyReservedInstancesResult
           object will be validated before being returned to caller.
     */
    public func modifyReservedInstancesAsync(input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyReservedInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyReservedInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyReservedInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyReservedInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyReservedInstancesSync(input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyReservedInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyReservedInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyReservedInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifySnapshotAttributeAsync(input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySnapshotAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    public func modifySnapshotAttributeSync(input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySnapshotAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
         - completion: The ModifySpotFleetRequestResponse object or an error will be passed to this 
           callback when the operation is complete. The ModifySpotFleetRequestResponse
           object will be validated before being returned to caller.
     */
    public func modifySpotFleetRequestAsync(input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifySpotFleetRequestResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySpotFleetRequestOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySpotFleetRequestRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySpotFleetRequest.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySpotFleetRequest operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySpotFleetRequestSync(input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySpotFleetRequestOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySpotFleetRequestRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySpotFleetRequest.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySubnetAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifySubnetAttributeAsync(input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySubnetAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySubnetAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySubnetAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifySubnetAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    public func modifySubnetAttributeSync(input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifySubnetAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifySubnetAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifySubnetAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
         - completion: The ModifyVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVolumeResult
           object will be validated before being returned to caller.
     */
    public func modifyVolumeAsync(input: ElasticComputeCloudModel.ModifyVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVolumeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVolume.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVolumeSync(input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVolumeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVolumeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVolume.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyVolumeAttributeAsync(input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVolumeAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVolumeAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVolumeAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    public func modifyVolumeAttributeSync(input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVolumeAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVolumeAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVolumeAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyVpcAttributeAsync(input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    public func modifyVpcAttributeSync(input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpoint.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointSync(input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpoint.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotificationAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointConnectionNotificationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointConnectionNotification.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotificationSync(input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointConnectionNotificationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointConnectionNotification.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfigurationAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointServiceConfigurationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointServiceConfiguration.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfigurationSync(input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointServiceConfigurationOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointServiceConfiguration.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissionsAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointServicePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointServicePermissions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissionsSync(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcEndpointServicePermissionsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcEndpointServicePermissions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpcPeeringConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcPeeringConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptionsAsync(input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcPeeringConnectionOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcPeeringConnectionOptions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptionsSync(input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcPeeringConnectionOptionsOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcPeeringConnectionOptions.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcTenancy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
         - completion: The ModifyVpcTenancyResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcTenancyResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcTenancyAsync(input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcTenancyResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcTenancyOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcTenancyRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcTenancy.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ModifyVpcTenancy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcTenancySync(input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ModifyVpcTenancyOperationHTTPRequestInput<ElasticComputeCloudModel.ModifyVpcTenancyRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.modifyVpcTenancy.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the MonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
         - completion: The MonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The MonitorInstancesResult
           object will be validated before being returned to caller.
     */
    public func monitorInstancesAsync(input: ElasticComputeCloudModel.MonitorInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.MonitorInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = MonitorInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.MonitorInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.monitorInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the MonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func monitorInstancesSync(input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = MonitorInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.MonitorInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.monitorInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the MoveAddressToVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
         - completion: The MoveAddressToVpcResult object or an error will be passed to this 
           callback when the operation is complete. The MoveAddressToVpcResult
           object will be validated before being returned to caller.
     */
    public func moveAddressToVpcAsync(input: ElasticComputeCloudModel.MoveAddressToVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.MoveAddressToVpcResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = MoveAddressToVpcOperationHTTPRequestInput<ElasticComputeCloudModel.MoveAddressToVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.moveAddressToVpc.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the MoveAddressToVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func moveAddressToVpcSync(input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = MoveAddressToVpcOperationHTTPRequestInput<ElasticComputeCloudModel.MoveAddressToVpcRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.moveAddressToVpc.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ProvisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
         - completion: The ProvisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The ProvisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func provisionByoipCidrAsync(input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ProvisionByoipCidrResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ProvisionByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.ProvisionByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.provisionByoipCidr.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ProvisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionByoipCidrSync(input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ProvisionByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.ProvisionByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.provisionByoipCidr.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseHostReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
         - completion: The PurchaseHostReservationResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseHostReservationResult
           object will be validated before being returned to caller.
     */
    public func purchaseHostReservationAsync(input: ElasticComputeCloudModel.PurchaseHostReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseHostReservationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseHostReservationOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseHostReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseHostReservation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseHostReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseHostReservationSync(input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseHostReservationOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseHostReservationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseHostReservation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
         - completion: The PurchaseReservedInstancesOfferingResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedInstancesOfferingResult
           object will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOfferingAsync(input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseReservedInstancesOfferingOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseReservedInstancesOffering.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOfferingSync(input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseReservedInstancesOfferingOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseReservedInstancesOffering.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
         - completion: The PurchaseScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func purchaseScheduledInstancesAsync(input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseScheduledInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseScheduledInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the PurchaseScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseScheduledInstancesSync(input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = PurchaseScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.PurchaseScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.purchaseScheduledInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RebootInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func rebootInstancesAsync(input: ElasticComputeCloudModel.RebootInstancesRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RebootInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RebootInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rebootInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RebootInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    public func rebootInstancesSync(input: ElasticComputeCloudModel.RebootInstancesRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RebootInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RebootInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rebootInstances.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RegisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
         - completion: The RegisterImageResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterImageResult
           object will be validated before being returned to caller.
     */
    public func registerImageAsync(input: ElasticComputeCloudModel.RegisterImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RegisterImageResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RegisterImageOperationHTTPRequestInput<ElasticComputeCloudModel.RegisterImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.registerImage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RegisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerImageSync(input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RegisterImageOperationHTTPRequestInput<ElasticComputeCloudModel.RegisterImageRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.registerImage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The RejectVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RejectVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rejectVpcEndpointConnections.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RejectVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RejectVpcEndpointConnectionsOperationHTTPRequestInput<ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rejectVpcEndpointConnections.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The RejectVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RejectVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rejectVpcPeeringConnection.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RejectVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnectionSync(input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RejectVpcPeeringConnectionOperationHTTPRequestInput<ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.rejectVpcPeeringConnection.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReleaseAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func releaseAddressAsync(input: ElasticComputeCloudModel.ReleaseAddressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReleaseAddressOperationHTTPRequestInput<ElasticComputeCloudModel.ReleaseAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.releaseAddress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReleaseAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    public func releaseAddressSync(input: ElasticComputeCloudModel.ReleaseAddressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReleaseAddressOperationHTTPRequestInput<ElasticComputeCloudModel.ReleaseAddressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.releaseAddress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReleaseHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
         - completion: The ReleaseHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ReleaseHostsResult
           object will be validated before being returned to caller.
     */
    public func releaseHostsAsync(input: ElasticComputeCloudModel.ReleaseHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReleaseHostsResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReleaseHostsOperationHTTPRequestInput<ElasticComputeCloudModel.ReleaseHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.releaseHosts.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReleaseHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func releaseHostsSync(input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReleaseHostsOperationHTTPRequestInput<ElasticComputeCloudModel.ReleaseHostsRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.releaseHosts.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
         - completion: The ReplaceIamInstanceProfileAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceIamInstanceProfileAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociationAsync(input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceIamInstanceProfileAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceIamInstanceProfileAssociation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociationSync(input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceIamInstanceProfileAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceIamInstanceProfileAssociation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
         - completion: The ReplaceNetworkAclAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceNetworkAclAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociationAsync(input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceNetworkAclAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceNetworkAclAssociation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociationSync(input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceNetworkAclAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceNetworkAclAssociation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func replaceNetworkAclEntryAsync(input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceNetworkAclEntry.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    public func replaceNetworkAclEntrySync(input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceNetworkAclEntryOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceNetworkAclEntry.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func replaceRouteAsync(input: ElasticComputeCloudModel.ReplaceRouteRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceRouteOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceRoute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    public func replaceRouteSync(input: ElasticComputeCloudModel.ReplaceRouteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceRouteOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceRouteRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceRoute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
         - completion: The ReplaceRouteTableAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceRouteTableAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociationAsync(input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceRouteTableAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceRouteTableAssociation.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociationSync(input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReplaceRouteTableAssociationOperationHTTPRequestInput<ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.replaceRouteTableAssociation.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReportInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func reportInstanceStatusAsync(input: ElasticComputeCloudModel.ReportInstanceStatusRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReportInstanceStatusOperationHTTPRequestInput<ElasticComputeCloudModel.ReportInstanceStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.reportInstanceStatus.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ReportInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    public func reportInstanceStatusSync(input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ReportInstanceStatusOperationHTTPRequestInput<ElasticComputeCloudModel.ReportInstanceStatusRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.reportInstanceStatus.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RequestSpotFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
         - completion: The RequestSpotFleetResponse object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotFleetResponse
           object will be validated before being returned to caller.
     */
    public func requestSpotFleetAsync(input: ElasticComputeCloudModel.RequestSpotFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotFleetResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RequestSpotFleetOperationHTTPRequestInput<ElasticComputeCloudModel.RequestSpotFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.requestSpotFleet.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RequestSpotFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotFleetSync(input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RequestSpotFleetOperationHTTPRequestInput<ElasticComputeCloudModel.RequestSpotFleetRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.requestSpotFleet.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RequestSpotInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
         - completion: The RequestSpotInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotInstancesResult
           object will be validated before being returned to caller.
     */
    public func requestSpotInstancesAsync(input: ElasticComputeCloudModel.RequestSpotInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RequestSpotInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RequestSpotInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.requestSpotInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RequestSpotInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotInstancesSync(input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RequestSpotInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RequestSpotInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.requestSpotInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ResetFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func resetFpgaImageAttributeAsync(input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ResetFpgaImageAttributeResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetFpgaImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetFpgaImageAttributeSync(input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetFpgaImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetFpgaImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetFpgaImageAttribute.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetImageAttributeAsync(input: ElasticComputeCloudModel.ResetImageAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetImageAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    public func resetImageAttributeSync(input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetImageAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetImageAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetImageAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetInstanceAttributeAsync(input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetInstanceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    public func resetInstanceAttributeSync(input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetInstanceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetInstanceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetInstanceAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func resetNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetNetworkInterfaceAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetNetworkInterfaceAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetSnapshotAttributeAsync(input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetSnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetSnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetSnapshotAttribute.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the ResetSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    public func resetSnapshotAttributeSync(input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = ResetSnapshotAttributeOperationHTTPRequestInput<ElasticComputeCloudModel.ResetSnapshotAttributeRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.resetSnapshotAttribute.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RestoreAddressToClassic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
         - completion: The RestoreAddressToClassicResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreAddressToClassicResult
           object will be validated before being returned to caller.
     */
    public func restoreAddressToClassicAsync(input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RestoreAddressToClassicResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RestoreAddressToClassicOperationHTTPRequestInput<ElasticComputeCloudModel.RestoreAddressToClassicRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.restoreAddressToClassic.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RestoreAddressToClassic operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreAddressToClassicSync(input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RestoreAddressToClassicOperationHTTPRequestInput<ElasticComputeCloudModel.RestoreAddressToClassicRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.restoreAddressToClassic.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func revokeSecurityGroupEgressAsync(input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RevokeSecurityGroupEgressOperationHTTPRequestInput<ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.revokeSecurityGroupEgress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     */
    public func revokeSecurityGroupEgressSync(input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RevokeSecurityGroupEgressOperationHTTPRequestInput<ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.revokeSecurityGroupEgress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func revokeSecurityGroupIngressAsync(input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RevokeSecurityGroupIngressOperationHTTPRequestInput<ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.revokeSecurityGroupIngress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     */
    public func revokeSecurityGroupIngressSync(input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RevokeSecurityGroupIngressOperationHTTPRequestInput<ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.revokeSecurityGroupIngress.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RunInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
         - completion: The Reservation object or an error will be passed to this 
           callback when the operation is complete. The Reservation
           object will be validated before being returned to caller.
     */
    public func runInstancesAsync(input: ElasticComputeCloudModel.RunInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Reservation>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RunInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RunInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.runInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RunInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runInstancesSync(input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RunInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RunInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.runInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RunScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
         - completion: The RunScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RunScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func runScheduledInstancesAsync(input: ElasticComputeCloudModel.RunScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RunScheduledInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RunScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RunScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.runScheduledInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the RunScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runScheduledInstancesSync(input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = RunScheduledInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.RunScheduledInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.runScheduledInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the StartInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
         - completion: The StartInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StartInstancesResult
           object will be validated before being returned to caller.
     */
    public func startInstancesAsync(input: ElasticComputeCloudModel.StartInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.StartInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = StartInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.StartInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.startInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the StartInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startInstancesSync(input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = StartInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.StartInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.startInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the StopInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
         - completion: The StopInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StopInstancesResult
           object will be validated before being returned to caller.
     */
    public func stopInstancesAsync(input: ElasticComputeCloudModel.StopInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.StopInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = StopInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.StopInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.stopInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the StopInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func stopInstancesSync(input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = StopInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.StopInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.stopInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the TerminateInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
         - completion: The TerminateInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateInstancesResult
           object will be validated before being returned to caller.
     */
    public func terminateInstancesAsync(input: ElasticComputeCloudModel.TerminateInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.TerminateInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = TerminateInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.TerminateInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.terminateInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the TerminateInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateInstancesSync(input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = TerminateInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.TerminateInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.terminateInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
         - completion: The UnassignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The UnassignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    public func unassignIpv6AddressesAsync(input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnassignIpv6AddressesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnassignIpv6AddressesOperationHTTPRequestInput<ElasticComputeCloudModel.UnassignIpv6AddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unassignIpv6Addresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnassignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unassignIpv6AddressesSync(input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnassignIpv6AddressesOperationHTTPRequestInput<ElasticComputeCloudModel.UnassignIpv6AddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unassignIpv6Addresses.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func unassignPrivateIpAddressesAsync(input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, completion: @escaping (Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnassignPrivateIpAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unassignPrivateIpAddresses.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    public func unassignPrivateIpAddressesSync(input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnassignPrivateIpAddressesOperationHTTPRequestInput<ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unassignPrivateIpAddresses.rawValue,
            version: apiVersion)

        try httpClient.executeSyncWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnmonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
         - completion: The UnmonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The UnmonitorInstancesResult
           object will be validated before being returned to caller.
     */
    public func unmonitorInstancesAsync(input: ElasticComputeCloudModel.UnmonitorInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnmonitorInstancesResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnmonitorInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.UnmonitorInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unmonitorInstances.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UnmonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unmonitorInstancesSync(input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UnmonitorInstancesOperationHTTPRequestInput<ElasticComputeCloudModel.UnmonitorInstancesRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.unmonitorInstances.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsEgressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsEgressResult
           object will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgressAsync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UpdateSecurityGroupRuleDescriptionsEgressOperationHTTPRequestInput<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsEgress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgressSync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UpdateSecurityGroupRuleDescriptionsEgressOperationHTTPRequestInput<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsEgress.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsIngressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsIngressResult
           object will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngressAsync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UpdateSecurityGroupRuleDescriptionsIngressOperationHTTPRequestInput<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsIngress.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngressSync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = UpdateSecurityGroupRuleDescriptionsIngressOperationHTTPRequestInput<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsIngress.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the WithdrawByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
         - completion: The WithdrawByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The WithdrawByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func withdrawByoipCidrAsync(input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.WithdrawByoipCidrResult>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = WithdrawByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.WithdrawByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.withdrawByoipCidr.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Invokes the WithdrawByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func withdrawByoipCidrSync(input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let wrappedInput = WithdrawByoipCidrOperationHTTPRequestInput<ElasticComputeCloudModel.WithdrawByoipCidrRequest>(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: ElasticComputeCloudModelOperations.withdrawByoipCidr.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }
}
