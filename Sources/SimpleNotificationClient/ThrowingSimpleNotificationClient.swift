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
// ThrowingSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeHTTPClient

/**
 Mock Client for the SimpleNotification service that by default always throws from its methods.
 */
public struct ThrowingSimpleNotificationClient: SimpleNotificationClientProtocol {
    let error: Swift.Error
    let addPermissionAsyncOverride: SimpleNotificationClientProtocol.AddPermissionAsyncType?
    let addPermissionSyncOverride: SimpleNotificationClientProtocol.AddPermissionSyncType?
    let checkIfPhoneNumberIsOptedOutAsyncOverride: SimpleNotificationClientProtocol.CheckIfPhoneNumberIsOptedOutAsyncType?
    let checkIfPhoneNumberIsOptedOutSyncOverride: SimpleNotificationClientProtocol.CheckIfPhoneNumberIsOptedOutSyncType?
    let confirmSubscriptionAsyncOverride: SimpleNotificationClientProtocol.ConfirmSubscriptionAsyncType?
    let confirmSubscriptionSyncOverride: SimpleNotificationClientProtocol.ConfirmSubscriptionSyncType?
    let createPlatformApplicationAsyncOverride: SimpleNotificationClientProtocol.CreatePlatformApplicationAsyncType?
    let createPlatformApplicationSyncOverride: SimpleNotificationClientProtocol.CreatePlatformApplicationSyncType?
    let createPlatformEndpointAsyncOverride: SimpleNotificationClientProtocol.CreatePlatformEndpointAsyncType?
    let createPlatformEndpointSyncOverride: SimpleNotificationClientProtocol.CreatePlatformEndpointSyncType?
    let createTopicAsyncOverride: SimpleNotificationClientProtocol.CreateTopicAsyncType?
    let createTopicSyncOverride: SimpleNotificationClientProtocol.CreateTopicSyncType?
    let deleteEndpointAsyncOverride: SimpleNotificationClientProtocol.DeleteEndpointAsyncType?
    let deleteEndpointSyncOverride: SimpleNotificationClientProtocol.DeleteEndpointSyncType?
    let deletePlatformApplicationAsyncOverride: SimpleNotificationClientProtocol.DeletePlatformApplicationAsyncType?
    let deletePlatformApplicationSyncOverride: SimpleNotificationClientProtocol.DeletePlatformApplicationSyncType?
    let deleteTopicAsyncOverride: SimpleNotificationClientProtocol.DeleteTopicAsyncType?
    let deleteTopicSyncOverride: SimpleNotificationClientProtocol.DeleteTopicSyncType?
    let getEndpointAttributesAsyncOverride: SimpleNotificationClientProtocol.GetEndpointAttributesAsyncType?
    let getEndpointAttributesSyncOverride: SimpleNotificationClientProtocol.GetEndpointAttributesSyncType?
    let getPlatformApplicationAttributesAsyncOverride: SimpleNotificationClientProtocol.GetPlatformApplicationAttributesAsyncType?
    let getPlatformApplicationAttributesSyncOverride: SimpleNotificationClientProtocol.GetPlatformApplicationAttributesSyncType?
    let getSMSAttributesAsyncOverride: SimpleNotificationClientProtocol.GetSMSAttributesAsyncType?
    let getSMSAttributesSyncOverride: SimpleNotificationClientProtocol.GetSMSAttributesSyncType?
    let getSubscriptionAttributesAsyncOverride: SimpleNotificationClientProtocol.GetSubscriptionAttributesAsyncType?
    let getSubscriptionAttributesSyncOverride: SimpleNotificationClientProtocol.GetSubscriptionAttributesSyncType?
    let getTopicAttributesAsyncOverride: SimpleNotificationClientProtocol.GetTopicAttributesAsyncType?
    let getTopicAttributesSyncOverride: SimpleNotificationClientProtocol.GetTopicAttributesSyncType?
    let listEndpointsByPlatformApplicationAsyncOverride: SimpleNotificationClientProtocol.ListEndpointsByPlatformApplicationAsyncType?
    let listEndpointsByPlatformApplicationSyncOverride: SimpleNotificationClientProtocol.ListEndpointsByPlatformApplicationSyncType?
    let listPhoneNumbersOptedOutAsyncOverride: SimpleNotificationClientProtocol.ListPhoneNumbersOptedOutAsyncType?
    let listPhoneNumbersOptedOutSyncOverride: SimpleNotificationClientProtocol.ListPhoneNumbersOptedOutSyncType?
    let listPlatformApplicationsAsyncOverride: SimpleNotificationClientProtocol.ListPlatformApplicationsAsyncType?
    let listPlatformApplicationsSyncOverride: SimpleNotificationClientProtocol.ListPlatformApplicationsSyncType?
    let listSubscriptionsAsyncOverride: SimpleNotificationClientProtocol.ListSubscriptionsAsyncType?
    let listSubscriptionsSyncOverride: SimpleNotificationClientProtocol.ListSubscriptionsSyncType?
    let listSubscriptionsByTopicAsyncOverride: SimpleNotificationClientProtocol.ListSubscriptionsByTopicAsyncType?
    let listSubscriptionsByTopicSyncOverride: SimpleNotificationClientProtocol.ListSubscriptionsByTopicSyncType?
    let listTagsForResourceAsyncOverride: SimpleNotificationClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: SimpleNotificationClientProtocol.ListTagsForResourceSyncType?
    let listTopicsAsyncOverride: SimpleNotificationClientProtocol.ListTopicsAsyncType?
    let listTopicsSyncOverride: SimpleNotificationClientProtocol.ListTopicsSyncType?
    let optInPhoneNumberAsyncOverride: SimpleNotificationClientProtocol.OptInPhoneNumberAsyncType?
    let optInPhoneNumberSyncOverride: SimpleNotificationClientProtocol.OptInPhoneNumberSyncType?
    let publishAsyncOverride: SimpleNotificationClientProtocol.PublishAsyncType?
    let publishSyncOverride: SimpleNotificationClientProtocol.PublishSyncType?
    let removePermissionAsyncOverride: SimpleNotificationClientProtocol.RemovePermissionAsyncType?
    let removePermissionSyncOverride: SimpleNotificationClientProtocol.RemovePermissionSyncType?
    let setEndpointAttributesAsyncOverride: SimpleNotificationClientProtocol.SetEndpointAttributesAsyncType?
    let setEndpointAttributesSyncOverride: SimpleNotificationClientProtocol.SetEndpointAttributesSyncType?
    let setPlatformApplicationAttributesAsyncOverride: SimpleNotificationClientProtocol.SetPlatformApplicationAttributesAsyncType?
    let setPlatformApplicationAttributesSyncOverride: SimpleNotificationClientProtocol.SetPlatformApplicationAttributesSyncType?
    let setSMSAttributesAsyncOverride: SimpleNotificationClientProtocol.SetSMSAttributesAsyncType?
    let setSMSAttributesSyncOverride: SimpleNotificationClientProtocol.SetSMSAttributesSyncType?
    let setSubscriptionAttributesAsyncOverride: SimpleNotificationClientProtocol.SetSubscriptionAttributesAsyncType?
    let setSubscriptionAttributesSyncOverride: SimpleNotificationClientProtocol.SetSubscriptionAttributesSyncType?
    let setTopicAttributesAsyncOverride: SimpleNotificationClientProtocol.SetTopicAttributesAsyncType?
    let setTopicAttributesSyncOverride: SimpleNotificationClientProtocol.SetTopicAttributesSyncType?
    let subscribeAsyncOverride: SimpleNotificationClientProtocol.SubscribeAsyncType?
    let subscribeSyncOverride: SimpleNotificationClientProtocol.SubscribeSyncType?
    let tagResourceAsyncOverride: SimpleNotificationClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: SimpleNotificationClientProtocol.TagResourceSyncType?
    let unsubscribeAsyncOverride: SimpleNotificationClientProtocol.UnsubscribeAsyncType?
    let unsubscribeSyncOverride: SimpleNotificationClientProtocol.UnsubscribeSyncType?
    let untagResourceAsyncOverride: SimpleNotificationClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: SimpleNotificationClientProtocol.UntagResourceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: Swift.Error,
            addPermissionAsync: SimpleNotificationClientProtocol.AddPermissionAsyncType? = nil,
            addPermissionSync: SimpleNotificationClientProtocol.AddPermissionSyncType? = nil,
            checkIfPhoneNumberIsOptedOutAsync: SimpleNotificationClientProtocol.CheckIfPhoneNumberIsOptedOutAsyncType? = nil,
            checkIfPhoneNumberIsOptedOutSync: SimpleNotificationClientProtocol.CheckIfPhoneNumberIsOptedOutSyncType? = nil,
            confirmSubscriptionAsync: SimpleNotificationClientProtocol.ConfirmSubscriptionAsyncType? = nil,
            confirmSubscriptionSync: SimpleNotificationClientProtocol.ConfirmSubscriptionSyncType? = nil,
            createPlatformApplicationAsync: SimpleNotificationClientProtocol.CreatePlatformApplicationAsyncType? = nil,
            createPlatformApplicationSync: SimpleNotificationClientProtocol.CreatePlatformApplicationSyncType? = nil,
            createPlatformEndpointAsync: SimpleNotificationClientProtocol.CreatePlatformEndpointAsyncType? = nil,
            createPlatformEndpointSync: SimpleNotificationClientProtocol.CreatePlatformEndpointSyncType? = nil,
            createTopicAsync: SimpleNotificationClientProtocol.CreateTopicAsyncType? = nil,
            createTopicSync: SimpleNotificationClientProtocol.CreateTopicSyncType? = nil,
            deleteEndpointAsync: SimpleNotificationClientProtocol.DeleteEndpointAsyncType? = nil,
            deleteEndpointSync: SimpleNotificationClientProtocol.DeleteEndpointSyncType? = nil,
            deletePlatformApplicationAsync: SimpleNotificationClientProtocol.DeletePlatformApplicationAsyncType? = nil,
            deletePlatformApplicationSync: SimpleNotificationClientProtocol.DeletePlatformApplicationSyncType? = nil,
            deleteTopicAsync: SimpleNotificationClientProtocol.DeleteTopicAsyncType? = nil,
            deleteTopicSync: SimpleNotificationClientProtocol.DeleteTopicSyncType? = nil,
            getEndpointAttributesAsync: SimpleNotificationClientProtocol.GetEndpointAttributesAsyncType? = nil,
            getEndpointAttributesSync: SimpleNotificationClientProtocol.GetEndpointAttributesSyncType? = nil,
            getPlatformApplicationAttributesAsync: SimpleNotificationClientProtocol.GetPlatformApplicationAttributesAsyncType? = nil,
            getPlatformApplicationAttributesSync: SimpleNotificationClientProtocol.GetPlatformApplicationAttributesSyncType? = nil,
            getSMSAttributesAsync: SimpleNotificationClientProtocol.GetSMSAttributesAsyncType? = nil,
            getSMSAttributesSync: SimpleNotificationClientProtocol.GetSMSAttributesSyncType? = nil,
            getSubscriptionAttributesAsync: SimpleNotificationClientProtocol.GetSubscriptionAttributesAsyncType? = nil,
            getSubscriptionAttributesSync: SimpleNotificationClientProtocol.GetSubscriptionAttributesSyncType? = nil,
            getTopicAttributesAsync: SimpleNotificationClientProtocol.GetTopicAttributesAsyncType? = nil,
            getTopicAttributesSync: SimpleNotificationClientProtocol.GetTopicAttributesSyncType? = nil,
            listEndpointsByPlatformApplicationAsync: SimpleNotificationClientProtocol.ListEndpointsByPlatformApplicationAsyncType? = nil,
            listEndpointsByPlatformApplicationSync: SimpleNotificationClientProtocol.ListEndpointsByPlatformApplicationSyncType? = nil,
            listPhoneNumbersOptedOutAsync: SimpleNotificationClientProtocol.ListPhoneNumbersOptedOutAsyncType? = nil,
            listPhoneNumbersOptedOutSync: SimpleNotificationClientProtocol.ListPhoneNumbersOptedOutSyncType? = nil,
            listPlatformApplicationsAsync: SimpleNotificationClientProtocol.ListPlatformApplicationsAsyncType? = nil,
            listPlatformApplicationsSync: SimpleNotificationClientProtocol.ListPlatformApplicationsSyncType? = nil,
            listSubscriptionsAsync: SimpleNotificationClientProtocol.ListSubscriptionsAsyncType? = nil,
            listSubscriptionsSync: SimpleNotificationClientProtocol.ListSubscriptionsSyncType? = nil,
            listSubscriptionsByTopicAsync: SimpleNotificationClientProtocol.ListSubscriptionsByTopicAsyncType? = nil,
            listSubscriptionsByTopicSync: SimpleNotificationClientProtocol.ListSubscriptionsByTopicSyncType? = nil,
            listTagsForResourceAsync: SimpleNotificationClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: SimpleNotificationClientProtocol.ListTagsForResourceSyncType? = nil,
            listTopicsAsync: SimpleNotificationClientProtocol.ListTopicsAsyncType? = nil,
            listTopicsSync: SimpleNotificationClientProtocol.ListTopicsSyncType? = nil,
            optInPhoneNumberAsync: SimpleNotificationClientProtocol.OptInPhoneNumberAsyncType? = nil,
            optInPhoneNumberSync: SimpleNotificationClientProtocol.OptInPhoneNumberSyncType? = nil,
            publishAsync: SimpleNotificationClientProtocol.PublishAsyncType? = nil,
            publishSync: SimpleNotificationClientProtocol.PublishSyncType? = nil,
            removePermissionAsync: SimpleNotificationClientProtocol.RemovePermissionAsyncType? = nil,
            removePermissionSync: SimpleNotificationClientProtocol.RemovePermissionSyncType? = nil,
            setEndpointAttributesAsync: SimpleNotificationClientProtocol.SetEndpointAttributesAsyncType? = nil,
            setEndpointAttributesSync: SimpleNotificationClientProtocol.SetEndpointAttributesSyncType? = nil,
            setPlatformApplicationAttributesAsync: SimpleNotificationClientProtocol.SetPlatformApplicationAttributesAsyncType? = nil,
            setPlatformApplicationAttributesSync: SimpleNotificationClientProtocol.SetPlatformApplicationAttributesSyncType? = nil,
            setSMSAttributesAsync: SimpleNotificationClientProtocol.SetSMSAttributesAsyncType? = nil,
            setSMSAttributesSync: SimpleNotificationClientProtocol.SetSMSAttributesSyncType? = nil,
            setSubscriptionAttributesAsync: SimpleNotificationClientProtocol.SetSubscriptionAttributesAsyncType? = nil,
            setSubscriptionAttributesSync: SimpleNotificationClientProtocol.SetSubscriptionAttributesSyncType? = nil,
            setTopicAttributesAsync: SimpleNotificationClientProtocol.SetTopicAttributesAsyncType? = nil,
            setTopicAttributesSync: SimpleNotificationClientProtocol.SetTopicAttributesSyncType? = nil,
            subscribeAsync: SimpleNotificationClientProtocol.SubscribeAsyncType? = nil,
            subscribeSync: SimpleNotificationClientProtocol.SubscribeSyncType? = nil,
            tagResourceAsync: SimpleNotificationClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: SimpleNotificationClientProtocol.TagResourceSyncType? = nil,
            unsubscribeAsync: SimpleNotificationClientProtocol.UnsubscribeAsyncType? = nil,
            unsubscribeSync: SimpleNotificationClientProtocol.UnsubscribeSyncType? = nil,
            untagResourceAsync: SimpleNotificationClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: SimpleNotificationClientProtocol.UntagResourceSyncType? = nil) {
        self.error = error
        self.addPermissionAsyncOverride = addPermissionAsync
        self.addPermissionSyncOverride = addPermissionSync
        self.checkIfPhoneNumberIsOptedOutAsyncOverride = checkIfPhoneNumberIsOptedOutAsync
        self.checkIfPhoneNumberIsOptedOutSyncOverride = checkIfPhoneNumberIsOptedOutSync
        self.confirmSubscriptionAsyncOverride = confirmSubscriptionAsync
        self.confirmSubscriptionSyncOverride = confirmSubscriptionSync
        self.createPlatformApplicationAsyncOverride = createPlatformApplicationAsync
        self.createPlatformApplicationSyncOverride = createPlatformApplicationSync
        self.createPlatformEndpointAsyncOverride = createPlatformEndpointAsync
        self.createPlatformEndpointSyncOverride = createPlatformEndpointSync
        self.createTopicAsyncOverride = createTopicAsync
        self.createTopicSyncOverride = createTopicSync
        self.deleteEndpointAsyncOverride = deleteEndpointAsync
        self.deleteEndpointSyncOverride = deleteEndpointSync
        self.deletePlatformApplicationAsyncOverride = deletePlatformApplicationAsync
        self.deletePlatformApplicationSyncOverride = deletePlatformApplicationSync
        self.deleteTopicAsyncOverride = deleteTopicAsync
        self.deleteTopicSyncOverride = deleteTopicSync
        self.getEndpointAttributesAsyncOverride = getEndpointAttributesAsync
        self.getEndpointAttributesSyncOverride = getEndpointAttributesSync
        self.getPlatformApplicationAttributesAsyncOverride = getPlatformApplicationAttributesAsync
        self.getPlatformApplicationAttributesSyncOverride = getPlatformApplicationAttributesSync
        self.getSMSAttributesAsyncOverride = getSMSAttributesAsync
        self.getSMSAttributesSyncOverride = getSMSAttributesSync
        self.getSubscriptionAttributesAsyncOverride = getSubscriptionAttributesAsync
        self.getSubscriptionAttributesSyncOverride = getSubscriptionAttributesSync
        self.getTopicAttributesAsyncOverride = getTopicAttributesAsync
        self.getTopicAttributesSyncOverride = getTopicAttributesSync
        self.listEndpointsByPlatformApplicationAsyncOverride = listEndpointsByPlatformApplicationAsync
        self.listEndpointsByPlatformApplicationSyncOverride = listEndpointsByPlatformApplicationSync
        self.listPhoneNumbersOptedOutAsyncOverride = listPhoneNumbersOptedOutAsync
        self.listPhoneNumbersOptedOutSyncOverride = listPhoneNumbersOptedOutSync
        self.listPlatformApplicationsAsyncOverride = listPlatformApplicationsAsync
        self.listPlatformApplicationsSyncOverride = listPlatformApplicationsSync
        self.listSubscriptionsAsyncOverride = listSubscriptionsAsync
        self.listSubscriptionsSyncOverride = listSubscriptionsSync
        self.listSubscriptionsByTopicAsyncOverride = listSubscriptionsByTopicAsync
        self.listSubscriptionsByTopicSyncOverride = listSubscriptionsByTopicSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.listTopicsAsyncOverride = listTopicsAsync
        self.listTopicsSyncOverride = listTopicsSync
        self.optInPhoneNumberAsyncOverride = optInPhoneNumberAsync
        self.optInPhoneNumberSyncOverride = optInPhoneNumberSync
        self.publishAsyncOverride = publishAsync
        self.publishSyncOverride = publishSync
        self.removePermissionAsyncOverride = removePermissionAsync
        self.removePermissionSyncOverride = removePermissionSync
        self.setEndpointAttributesAsyncOverride = setEndpointAttributesAsync
        self.setEndpointAttributesSyncOverride = setEndpointAttributesSync
        self.setPlatformApplicationAttributesAsyncOverride = setPlatformApplicationAttributesAsync
        self.setPlatformApplicationAttributesSyncOverride = setPlatformApplicationAttributesSync
        self.setSMSAttributesAsyncOverride = setSMSAttributesAsync
        self.setSMSAttributesSyncOverride = setSMSAttributesSync
        self.setSubscriptionAttributesAsyncOverride = setSubscriptionAttributesAsync
        self.setSubscriptionAttributesSyncOverride = setSubscriptionAttributesSync
        self.setTopicAttributesAsyncOverride = setTopicAttributesAsync
        self.setTopicAttributesSyncOverride = setTopicAttributesSync
        self.subscribeAsyncOverride = subscribeAsync
        self.subscribeSyncOverride = subscribeSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.unsubscribeAsyncOverride = unsubscribeAsync
        self.unsubscribeSyncOverride = unsubscribeSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
    }

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionAsync(input: SimpleNotificationModel.AddPermissionInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let addPermissionAsyncOverride = addPermissionAsyncOverride {
            return try addPermissionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermissionSync(input: SimpleNotificationModel.AddPermissionInput) throws {
        if let addPermissionSyncOverride = addPermissionSyncOverride {
            return try addPermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
         - completion: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object or an error will be passed to this 
           callback when the operation is complete. The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutAsync(input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut>) -> ()) throws {
        if let checkIfPhoneNumberIsOptedOutAsyncOverride = checkIfPhoneNumberIsOptedOutAsyncOverride {
            return try checkIfPhoneNumberIsOptedOutAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: The CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOutSync(input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) throws -> SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        if let checkIfPhoneNumberIsOptedOutSyncOverride = checkIfPhoneNumberIsOptedOutSyncOverride {
            return try checkIfPhoneNumberIsOptedOutSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ConfirmSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
         - completion: The ConfirmSubscriptionResponseForConfirmSubscription object or an error will be passed to this 
           callback when the operation is complete. The ConfirmSubscriptionResponseForConfirmSubscription
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionAsync(input: SimpleNotificationModel.ConfirmSubscriptionInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription>) -> ()) throws {
        if let confirmSubscriptionAsyncOverride = confirmSubscriptionAsyncOverride {
            return try confirmSubscriptionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ConfirmSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: The ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscriptionSync(input: SimpleNotificationModel.ConfirmSubscriptionInput) throws -> SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription {
        if let confirmSubscriptionSyncOverride = confirmSubscriptionSyncOverride {
            return try confirmSubscriptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
         - completion: The CreatePlatformApplicationResponseForCreatePlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The CreatePlatformApplicationResponseForCreatePlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationAsync(input: SimpleNotificationModel.CreatePlatformApplicationInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication>) -> ()) throws {
        if let createPlatformApplicationAsyncOverride = createPlatformApplicationAsyncOverride {
            return try createPlatformApplicationAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreatePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: The CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplicationSync(input: SimpleNotificationModel.CreatePlatformApplicationInput) throws -> SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication {
        if let createPlatformApplicationSyncOverride = createPlatformApplicationSyncOverride {
            return try createPlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
         - completion: The CreateEndpointResponseForCreatePlatformEndpoint object or an error will be passed to this 
           callback when the operation is complete. The CreateEndpointResponseForCreatePlatformEndpoint
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointAsync(input: SimpleNotificationModel.CreatePlatformEndpointInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint>) -> ()) throws {
        if let createPlatformEndpointAsyncOverride = createPlatformEndpointAsyncOverride {
            return try createPlatformEndpointAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreatePlatformEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: The CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpointSync(input: SimpleNotificationModel.CreatePlatformEndpointInput) throws -> SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint {
        if let createPlatformEndpointSyncOverride = createPlatformEndpointSyncOverride {
            return try createPlatformEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
         - completion: The CreateTopicResponseForCreateTopic object or an error will be passed to this 
           callback when the operation is complete. The CreateTopicResponseForCreateTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicAsync(input: SimpleNotificationModel.CreateTopicInput, completion: @escaping (HTTPResult<SimpleNotificationModel.CreateTopicResponseForCreateTopic>) -> ()) throws {
        if let createTopicAsyncOverride = createTopicAsyncOverride {
            return try createTopicAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: The CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopicSync(input: SimpleNotificationModel.CreateTopicInput) throws -> SimpleNotificationModel.CreateTopicResponseForCreateTopic {
        if let createTopicSyncOverride = createTopicSyncOverride {
            return try createTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointAsync(input: SimpleNotificationModel.DeleteEndpointInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteEndpointAsyncOverride = deleteEndpointAsyncOverride {
            return try deleteEndpointAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpointSync(input: SimpleNotificationModel.DeleteEndpointInput) throws {
        if let deleteEndpointSyncOverride = deleteEndpointSyncOverride {
            return try deleteEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationAsync(input: SimpleNotificationModel.DeletePlatformApplicationInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deletePlatformApplicationAsyncOverride = deletePlatformApplicationAsyncOverride {
            return try deletePlatformApplicationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeletePlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplicationSync(input: SimpleNotificationModel.DeletePlatformApplicationInput) throws {
        if let deletePlatformApplicationSyncOverride = deletePlatformApplicationSyncOverride {
            return try deletePlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicAsync(input: SimpleNotificationModel.DeleteTopicInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteTopicAsyncOverride = deleteTopicAsyncOverride {
            return try deleteTopicAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
     - Throws: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopicSync(input: SimpleNotificationModel.DeleteTopicInput) throws {
        if let deleteTopicSyncOverride = deleteTopicSyncOverride {
            return try deleteTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
         - completion: The GetEndpointAttributesResponseForGetEndpointAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetEndpointAttributesResponseForGetEndpointAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesAsync(input: SimpleNotificationModel.GetEndpointAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes>) -> ()) throws {
        if let getEndpointAttributesAsyncOverride = getEndpointAttributesAsyncOverride {
            return try getEndpointAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: The GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributesSync(input: SimpleNotificationModel.GetEndpointAttributesInput) throws -> SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes {
        if let getEndpointAttributesSyncOverride = getEndpointAttributesSyncOverride {
            return try getEndpointAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesAsync(input: SimpleNotificationModel.GetPlatformApplicationAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes>) -> ()) throws {
        if let getPlatformApplicationAttributesAsyncOverride = getPlatformApplicationAttributesAsyncOverride {
            return try getPlatformApplicationAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: The GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributesSync(input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) throws -> SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        if let getPlatformApplicationAttributesSyncOverride = getPlatformApplicationAttributesSyncOverride {
            return try getPlatformApplicationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
         - completion: The GetSMSAttributesResponseForGetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSMSAttributesResponseForGetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesAsync(input: SimpleNotificationModel.GetSMSAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes>) -> ()) throws {
        if let getSMSAttributesAsyncOverride = getSMSAttributesAsyncOverride {
            return try getSMSAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: The GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributesSync(input: SimpleNotificationModel.GetSMSAttributesInput) throws -> SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes {
        if let getSMSAttributesSyncOverride = getSMSAttributesSyncOverride {
            return try getSMSAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
         - completion: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetSubscriptionAttributesResponseForGetSubscriptionAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesAsync(input: SimpleNotificationModel.GetSubscriptionAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes>) -> ()) throws {
        if let getSubscriptionAttributesAsyncOverride = getSubscriptionAttributesAsyncOverride {
            return try getSubscriptionAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: The GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributesSync(input: SimpleNotificationModel.GetSubscriptionAttributesInput) throws -> SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        if let getSubscriptionAttributesSyncOverride = getSubscriptionAttributesSyncOverride {
            return try getSubscriptionAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
         - completion: The GetTopicAttributesResponseForGetTopicAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetTopicAttributesResponseForGetTopicAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesAsync(input: SimpleNotificationModel.GetTopicAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes>) -> ()) throws {
        if let getTopicAttributesAsyncOverride = getTopicAttributesAsyncOverride {
            return try getTopicAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: The GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributesSync(input: SimpleNotificationModel.GetTopicAttributesInput) throws -> SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes {
        if let getTopicAttributesSyncOverride = getTopicAttributesSyncOverride {
            return try getTopicAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
         - completion: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object or an error will be passed to this 
           callback when the operation is complete. The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationAsync(input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication>) -> ()) throws {
        if let listEndpointsByPlatformApplicationAsyncOverride = listEndpointsByPlatformApplicationAsyncOverride {
            return try listEndpointsByPlatformApplicationAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: The ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplicationSync(input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) throws -> SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        if let listEndpointsByPlatformApplicationSyncOverride = listEndpointsByPlatformApplicationSyncOverride {
            return try listEndpointsByPlatformApplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
         - completion: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object or an error will be passed to this 
           callback when the operation is complete. The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutAsync(input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut>) -> ()) throws {
        if let listPhoneNumbersOptedOutAsyncOverride = listPhoneNumbersOptedOutAsyncOverride {
            return try listPhoneNumbersOptedOutAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: The ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOutSync(input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) throws -> SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        if let listPhoneNumbersOptedOutSyncOverride = listPhoneNumbersOptedOutSyncOverride {
            return try listPhoneNumbersOptedOutSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListPlatformApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
         - completion: The ListPlatformApplicationsResponseForListPlatformApplications object or an error will be passed to this 
           callback when the operation is complete. The ListPlatformApplicationsResponseForListPlatformApplications
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsAsync(input: SimpleNotificationModel.ListPlatformApplicationsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications>) -> ()) throws {
        if let listPlatformApplicationsAsyncOverride = listPlatformApplicationsAsyncOverride {
            return try listPlatformApplicationsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListPlatformApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: The ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplicationsSync(input: SimpleNotificationModel.ListPlatformApplicationsInput) throws -> SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications {
        if let listPlatformApplicationsSyncOverride = listPlatformApplicationsSyncOverride {
            return try listPlatformApplicationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
         - completion: The ListSubscriptionsResponseForListSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsResponseForListSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsAsync(input: SimpleNotificationModel.ListSubscriptionsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions>) -> ()) throws {
        if let listSubscriptionsAsyncOverride = listSubscriptionsAsyncOverride {
            return try listSubscriptionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: The ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptionsSync(input: SimpleNotificationModel.ListSubscriptionsInput) throws -> SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions {
        if let listSubscriptionsSyncOverride = listSubscriptionsSyncOverride {
            return try listSubscriptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
         - completion: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object or an error will be passed to this 
           callback when the operation is complete. The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicAsync(input: SimpleNotificationModel.ListSubscriptionsByTopicInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic>) -> ()) throws {
        if let listSubscriptionsByTopicAsyncOverride = listSubscriptionsByTopicAsyncOverride {
            return try listSubscriptionsByTopicAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListSubscriptionsByTopic operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: The ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopicSync(input: SimpleNotificationModel.ListSubscriptionsByTopicInput) throws -> SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        if let listSubscriptionsByTopicSyncOverride = listSubscriptionsByTopicSyncOverride {
            return try listSubscriptionsByTopicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponseForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponseForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceAsync(input: SimpleNotificationModel.ListTagsForResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResourceSync(input: SimpleNotificationModel.ListTagsForResourceRequest) throws -> SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTopics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
         - completion: The ListTopicsResponseForListTopics object or an error will be passed to this 
           callback when the operation is complete. The ListTopicsResponseForListTopics
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsAsync(input: SimpleNotificationModel.ListTopicsInput, completion: @escaping (HTTPResult<SimpleNotificationModel.ListTopicsResponseForListTopics>) -> ()) throws {
        if let listTopicsAsyncOverride = listTopicsAsyncOverride {
            return try listTopicsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListTopics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: The ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter.
     */
    public func listTopicsSync(input: SimpleNotificationModel.ListTopicsInput) throws -> SimpleNotificationModel.ListTopicsResponseForListTopics {
        if let listTopicsSyncOverride = listTopicsSyncOverride {
            return try listTopicsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the OptInPhoneNumber operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
         - completion: The OptInPhoneNumberResponseForOptInPhoneNumber object or an error will be passed to this 
           callback when the operation is complete. The OptInPhoneNumberResponseForOptInPhoneNumber
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberAsync(input: SimpleNotificationModel.OptInPhoneNumberInput, completion: @escaping (HTTPResult<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber>) -> ()) throws {
        if let optInPhoneNumberAsyncOverride = optInPhoneNumberAsyncOverride {
            return try optInPhoneNumberAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the OptInPhoneNumber operation waiting for the response before returning.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: The OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumberSync(input: SimpleNotificationModel.OptInPhoneNumberInput) throws -> SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber {
        if let optInPhoneNumberSyncOverride = optInPhoneNumberSyncOverride {
            return try optInPhoneNumberSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Publish operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
         - completion: The PublishResponseForPublish object or an error will be passed to this 
           callback when the operation is complete. The PublishResponseForPublish
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishAsync(input: SimpleNotificationModel.PublishInput, completion: @escaping (HTTPResult<SimpleNotificationModel.PublishResponseForPublish>) -> ()) throws {
        if let publishAsyncOverride = publishAsyncOverride {
            return try publishAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the Publish operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: The PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publishSync(input: SimpleNotificationModel.PublishInput) throws -> SimpleNotificationModel.PublishResponseForPublish {
        if let publishSyncOverride = publishSyncOverride {
            return try publishSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionAsync(input: SimpleNotificationModel.RemovePermissionInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let removePermissionAsyncOverride = removePermissionAsyncOverride {
            return try removePermissionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermissionSync(input: SimpleNotificationModel.RemovePermissionInput) throws {
        if let removePermissionSyncOverride = removePermissionSyncOverride {
            return try removePermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesAsync(input: SimpleNotificationModel.SetEndpointAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let setEndpointAttributesAsyncOverride = setEndpointAttributesAsyncOverride {
            return try setEndpointAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetEndpointAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributesSync(input: SimpleNotificationModel.SetEndpointAttributesInput) throws {
        if let setEndpointAttributesSyncOverride = setEndpointAttributesSyncOverride {
            return try setEndpointAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesAsync(input: SimpleNotificationModel.SetPlatformApplicationAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let setPlatformApplicationAttributesAsyncOverride = setPlatformApplicationAttributesAsyncOverride {
            return try setPlatformApplicationAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributesSync(input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) throws {
        if let setPlatformApplicationAttributesSyncOverride = setPlatformApplicationAttributesSyncOverride {
            return try setPlatformApplicationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetSMSAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
         - completion: The SetSMSAttributesResponseForSetSMSAttributes object or an error will be passed to this 
           callback when the operation is complete. The SetSMSAttributesResponseForSetSMSAttributes
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesAsync(input: SimpleNotificationModel.SetSMSAttributesInput, completion: @escaping (HTTPResult<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes>) -> ()) throws {
        if let setSMSAttributesAsyncOverride = setSMSAttributesAsyncOverride {
            return try setSMSAttributesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the SetSMSAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: The SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributesSync(input: SimpleNotificationModel.SetSMSAttributesInput) throws -> SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes {
        if let setSMSAttributesSyncOverride = setSMSAttributesSyncOverride {
            return try setSMSAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesAsync(input: SimpleNotificationModel.SetSubscriptionAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let setSubscriptionAttributesAsyncOverride = setSubscriptionAttributesAsyncOverride {
            return try setSubscriptionAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetSubscriptionAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributesSync(input: SimpleNotificationModel.SetSubscriptionAttributesInput) throws {
        if let setSubscriptionAttributesSyncOverride = setSubscriptionAttributesSyncOverride {
            return try setSubscriptionAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetTopicAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesAsync(input: SimpleNotificationModel.SetTopicAttributesInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let setTopicAttributesAsyncOverride = setTopicAttributesAsyncOverride {
            return try setTopicAttributesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetTopicAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributesSync(input: SimpleNotificationModel.SetTopicAttributesInput) throws {
        if let setTopicAttributesSyncOverride = setTopicAttributesSyncOverride {
            return try setTopicAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Subscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
         - completion: The SubscribeResponseForSubscribe object or an error will be passed to this 
           callback when the operation is complete. The SubscribeResponseForSubscribe
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeAsync(input: SimpleNotificationModel.SubscribeInput, completion: @escaping (HTTPResult<SimpleNotificationModel.SubscribeResponseForSubscribe>) -> ()) throws {
        if let subscribeAsyncOverride = subscribeAsyncOverride {
            return try subscribeAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the Subscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: The SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribeSync(input: SimpleNotificationModel.SubscribeInput) throws -> SimpleNotificationModel.SubscribeResponseForSubscribe {
        if let subscribeSyncOverride = subscribeSyncOverride {
            return try subscribeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponseForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponseForTagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceAsync(input: SimpleNotificationModel.TagResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.TagResourceResponseForTagResource>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResourceSync(input: SimpleNotificationModel.TagResourceRequest) throws -> SimpleNotificationModel.TagResourceResponseForTagResource {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Unsubscribe operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeAsync(input: SimpleNotificationModel.UnsubscribeInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let unsubscribeAsyncOverride = unsubscribeAsyncOverride {
            return try unsubscribeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the Unsubscribe operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
     - Throws: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribeSync(input: SimpleNotificationModel.UnsubscribeInput) throws {
        if let unsubscribeSyncOverride = unsubscribeSyncOverride {
            return try unsubscribeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponseForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponseForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceAsync(input: SimpleNotificationModel.UntagResourceRequest, completion: @escaping (HTTPResult<SimpleNotificationModel.UntagResourceResponseForUntagResource>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResourceSync(input: SimpleNotificationModel.UntagResourceRequest) throws -> SimpleNotificationModel.UntagResourceResponseForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }
}
