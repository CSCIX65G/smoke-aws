// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// AWSSimpleWorkflowClientGenerator.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? SimpleWorkflowError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client Generator for the SimpleWorkflow service.
 */
public struct AWSSimpleWorkflowClientGenerator {
    let httpClient: HTTPOperationsClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider

    let operationsReporting: SimpleWorkflowOperationsReporting
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "swf",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "SimpleWorkflowService",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>() ) {
        let clientDelegate = JSONAWSHttpClientDelegate<SimpleWorkflowError>()

        self.httpClient = HTTPOperationsClient(endpointHostName: endpointHostName,
                                               endpointPort: endpointPort,
                                               contentType: contentType,
                                               clientDelegate: clientDelegate,
                                               connectionTimeoutSeconds: connectionTimeoutSeconds,
                                               eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = SimpleWorkflowOperationsReporting(clientName: "AWSSimpleWorkflowClient", reportingConfiguration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        try httpClient.close()
    }
    
    public func with<NewInvocationReportingType: HTTPClientCoreInvocationReporting>(
            reporting: NewInvocationReportingType) -> AWSSimpleWorkflowClient<NewInvocationReportingType> {
        return AWSSimpleWorkflowClient<NewInvocationReportingType>(
            credentialsProvider: self.credentialsProvider,
            awsRegion: self.awsRegion,
            reporting: reporting,
            httpClient: self.httpClient,
            service: self.service,
            target: self.target,
            retryOnErrorProvider: self.retryOnErrorProvider,
            retryConfiguration: self.retryConfiguration,
            operationsReporting: self.operationsReporting)
    }
}
