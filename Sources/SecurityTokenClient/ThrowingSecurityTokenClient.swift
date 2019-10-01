// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// ThrowingSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeHTTPClient

/**
 Mock Client for the SecurityToken service that by default always throws from its methods.
 */
public struct ThrowingSecurityTokenClient: SecurityTokenClientProtocol {
    let error: Swift.Error
    let assumeRoleAsyncOverride: SecurityTokenClientProtocol.AssumeRoleAsyncType?
    let assumeRoleSyncOverride: SecurityTokenClientProtocol.AssumeRoleSyncType?
    let assumeRoleWithSAMLAsyncOverride: SecurityTokenClientProtocol.AssumeRoleWithSAMLAsyncType?
    let assumeRoleWithSAMLSyncOverride: SecurityTokenClientProtocol.AssumeRoleWithSAMLSyncType?
    let assumeRoleWithWebIdentityAsyncOverride: SecurityTokenClientProtocol.AssumeRoleWithWebIdentityAsyncType?
    let assumeRoleWithWebIdentitySyncOverride: SecurityTokenClientProtocol.AssumeRoleWithWebIdentitySyncType?
    let decodeAuthorizationMessageAsyncOverride: SecurityTokenClientProtocol.DecodeAuthorizationMessageAsyncType?
    let decodeAuthorizationMessageSyncOverride: SecurityTokenClientProtocol.DecodeAuthorizationMessageSyncType?
    let getAccessKeyInfoAsyncOverride: SecurityTokenClientProtocol.GetAccessKeyInfoAsyncType?
    let getAccessKeyInfoSyncOverride: SecurityTokenClientProtocol.GetAccessKeyInfoSyncType?
    let getCallerIdentityAsyncOverride: SecurityTokenClientProtocol.GetCallerIdentityAsyncType?
    let getCallerIdentitySyncOverride: SecurityTokenClientProtocol.GetCallerIdentitySyncType?
    let getFederationTokenAsyncOverride: SecurityTokenClientProtocol.GetFederationTokenAsyncType?
    let getFederationTokenSyncOverride: SecurityTokenClientProtocol.GetFederationTokenSyncType?
    let getSessionTokenAsyncOverride: SecurityTokenClientProtocol.GetSessionTokenAsyncType?
    let getSessionTokenSyncOverride: SecurityTokenClientProtocol.GetSessionTokenSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: Swift.Error,
            assumeRoleAsync: SecurityTokenClientProtocol.AssumeRoleAsyncType? = nil,
            assumeRoleSync: SecurityTokenClientProtocol.AssumeRoleSyncType? = nil,
            assumeRoleWithSAMLAsync: SecurityTokenClientProtocol.AssumeRoleWithSAMLAsyncType? = nil,
            assumeRoleWithSAMLSync: SecurityTokenClientProtocol.AssumeRoleWithSAMLSyncType? = nil,
            assumeRoleWithWebIdentityAsync: SecurityTokenClientProtocol.AssumeRoleWithWebIdentityAsyncType? = nil,
            assumeRoleWithWebIdentitySync: SecurityTokenClientProtocol.AssumeRoleWithWebIdentitySyncType? = nil,
            decodeAuthorizationMessageAsync: SecurityTokenClientProtocol.DecodeAuthorizationMessageAsyncType? = nil,
            decodeAuthorizationMessageSync: SecurityTokenClientProtocol.DecodeAuthorizationMessageSyncType? = nil,
            getAccessKeyInfoAsync: SecurityTokenClientProtocol.GetAccessKeyInfoAsyncType? = nil,
            getAccessKeyInfoSync: SecurityTokenClientProtocol.GetAccessKeyInfoSyncType? = nil,
            getCallerIdentityAsync: SecurityTokenClientProtocol.GetCallerIdentityAsyncType? = nil,
            getCallerIdentitySync: SecurityTokenClientProtocol.GetCallerIdentitySyncType? = nil,
            getFederationTokenAsync: SecurityTokenClientProtocol.GetFederationTokenAsyncType? = nil,
            getFederationTokenSync: SecurityTokenClientProtocol.GetFederationTokenSyncType? = nil,
            getSessionTokenAsync: SecurityTokenClientProtocol.GetSessionTokenAsyncType? = nil,
            getSessionTokenSync: SecurityTokenClientProtocol.GetSessionTokenSyncType? = nil) {
        self.error = error
        self.assumeRoleAsyncOverride = assumeRoleAsync
        self.assumeRoleSyncOverride = assumeRoleSync
        self.assumeRoleWithSAMLAsyncOverride = assumeRoleWithSAMLAsync
        self.assumeRoleWithSAMLSyncOverride = assumeRoleWithSAMLSync
        self.assumeRoleWithWebIdentityAsyncOverride = assumeRoleWithWebIdentityAsync
        self.assumeRoleWithWebIdentitySyncOverride = assumeRoleWithWebIdentitySync
        self.decodeAuthorizationMessageAsyncOverride = decodeAuthorizationMessageAsync
        self.decodeAuthorizationMessageSyncOverride = decodeAuthorizationMessageSync
        self.getAccessKeyInfoAsyncOverride = getAccessKeyInfoAsync
        self.getAccessKeyInfoSyncOverride = getAccessKeyInfoSync
        self.getCallerIdentityAsyncOverride = getCallerIdentityAsync
        self.getCallerIdentitySyncOverride = getCallerIdentitySync
        self.getFederationTokenAsyncOverride = getFederationTokenAsync
        self.getFederationTokenSyncOverride = getFederationTokenSync
        self.getSessionTokenAsyncOverride = getSessionTokenAsync
        self.getSessionTokenSyncOverride = getSessionTokenSync
    }

    /**
     Invokes the AssumeRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
         - completion: The AssumeRoleResponseForAssumeRole object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleResponseForAssumeRole
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleAsync(input: SecurityTokenModel.AssumeRoleRequest, completion: @escaping (HTTPResult<SecurityTokenModel.AssumeRoleResponseForAssumeRole>) -> ()) throws {
        if let assumeRoleAsyncOverride = assumeRoleAsyncOverride {
            return try assumeRoleAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleSync(input: SecurityTokenModel.AssumeRoleRequest) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole {
        if let assumeRoleSyncOverride = assumeRoleSyncOverride {
            return try assumeRoleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
         - completion: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAMLAsync(input: SecurityTokenModel.AssumeRoleWithSAMLRequest, completion: @escaping (HTTPResult<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML>) -> ()) throws {
        if let assumeRoleWithSAMLAsyncOverride = assumeRoleWithSAMLAsyncOverride {
            return try assumeRoleWithSAMLAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the AssumeRoleWithSAML operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAMLSync(input: SecurityTokenModel.AssumeRoleWithSAMLRequest) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        if let assumeRoleWithSAMLSyncOverride = assumeRoleWithSAMLSyncOverride {
            return try assumeRoleWithSAMLSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
         - completion: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentityAsync(input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, completion: @escaping (HTTPResult<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity>) -> ()) throws {
        if let assumeRoleWithWebIdentityAsyncOverride = assumeRoleWithWebIdentityAsyncOverride {
            return try assumeRoleWithWebIdentityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentitySync(input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        if let assumeRoleWithWebIdentitySyncOverride = assumeRoleWithWebIdentitySyncOverride {
            return try assumeRoleWithWebIdentitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
         - completion: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object or an error will be passed to this 
           callback when the operation is complete. The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessageAsync(input: SecurityTokenModel.DecodeAuthorizationMessageRequest, completion: @escaping (HTTPResult<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage>) -> ()) throws {
        if let decodeAuthorizationMessageAsyncOverride = decodeAuthorizationMessageAsyncOverride {
            return try decodeAuthorizationMessageAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DecodeAuthorizationMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessageSync(input: SecurityTokenModel.DecodeAuthorizationMessageRequest) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        if let decodeAuthorizationMessageSyncOverride = decodeAuthorizationMessageSyncOverride {
            return try decodeAuthorizationMessageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAccessKeyInfo operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
         - completion: The GetAccessKeyInfoResponseForGetAccessKeyInfo object or an error will be passed to this 
           callback when the operation is complete. The GetAccessKeyInfoResponseForGetAccessKeyInfo
           object will be validated before being returned to caller.
     */
    public func getAccessKeyInfoAsync(input: SecurityTokenModel.GetAccessKeyInfoRequest, completion: @escaping (HTTPResult<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo>) -> ()) throws {
        if let getAccessKeyInfoAsyncOverride = getAccessKeyInfoAsyncOverride {
            return try getAccessKeyInfoAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetAccessKeyInfo operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfoSync(input: SecurityTokenModel.GetAccessKeyInfoRequest) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo {
        if let getAccessKeyInfoSyncOverride = getAccessKeyInfoSyncOverride {
            return try getAccessKeyInfoSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCallerIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
         - completion: The GetCallerIdentityResponseForGetCallerIdentity object or an error will be passed to this 
           callback when the operation is complete. The GetCallerIdentityResponseForGetCallerIdentity
           object will be validated before being returned to caller.
     */
    public func getCallerIdentityAsync(input: SecurityTokenModel.GetCallerIdentityRequest, completion: @escaping (HTTPResult<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity>) -> ()) throws {
        if let getCallerIdentityAsyncOverride = getCallerIdentityAsyncOverride {
            return try getCallerIdentityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetCallerIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentitySync(input: SecurityTokenModel.GetCallerIdentityRequest) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity {
        if let getCallerIdentitySyncOverride = getCallerIdentitySyncOverride {
            return try getCallerIdentitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetFederationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
         - completion: The GetFederationTokenResponseForGetFederationToken object or an error will be passed to this 
           callback when the operation is complete. The GetFederationTokenResponseForGetFederationToken
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationTokenAsync(input: SecurityTokenModel.GetFederationTokenRequest, completion: @escaping (HTTPResult<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken>) -> ()) throws {
        if let getFederationTokenAsyncOverride = getFederationTokenAsyncOverride {
            return try getFederationTokenAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetFederationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationTokenSync(input: SecurityTokenModel.GetFederationTokenRequest) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken {
        if let getFederationTokenSyncOverride = getFederationTokenSyncOverride {
            return try getFederationTokenSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSessionToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
         - completion: The GetSessionTokenResponseForGetSessionToken object or an error will be passed to this 
           callback when the operation is complete. The GetSessionTokenResponseForGetSessionToken
           object will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    public func getSessionTokenAsync(input: SecurityTokenModel.GetSessionTokenRequest, completion: @escaping (HTTPResult<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken>) -> ()) throws {
        if let getSessionTokenAsyncOverride = getSessionTokenAsyncOverride {
            return try getSessionTokenAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetSessionToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    public func getSessionTokenSync(input: SecurityTokenModel.GetSessionTokenRequest) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken {
        if let getSessionTokenSyncOverride = getSessionTokenSyncOverride {
            return try getSessionTokenSyncOverride(input)
        }

        throw error
    }
}
