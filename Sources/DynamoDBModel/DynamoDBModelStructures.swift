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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// DynamoDBModelStructures.swift
// DynamoDBModel
//

import Foundation

public struct AttributeDefinition: Codable, Equatable {
    public var attributeName: KeySchemaAttributeName
    public var attributeType: ScalarAttributeType

    public init(attributeName: KeySchemaAttributeName,
                attributeType: ScalarAttributeType) {
        self.attributeName = attributeName
        self.attributeType = attributeType
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeType = "AttributeType"
    }

    public func validate() throws {
        try attributeName.validateAsKeySchemaAttributeName()
    }
}

public struct AttributeValue: Codable, Equatable {
    public var B: BinaryAttributeValue?
    public var BOOL: BooleanAttributeValue?
    public var BS: BinarySetAttributeValue?
    public var L: ListAttributeValue?
    public var M: MapAttributeValue?
    public var N: NumberAttributeValue?
    public var NS: NumberSetAttributeValue?
    public var NULL: NullAttributeValue?
    public var S: StringAttributeValue?
    public var SS: StringSetAttributeValue?

    public init(B: BinaryAttributeValue? = nil,
                BOOL: BooleanAttributeValue? = nil,
                BS: BinarySetAttributeValue? = nil,
                L: ListAttributeValue? = nil,
                M: MapAttributeValue? = nil,
                N: NumberAttributeValue? = nil,
                NS: NumberSetAttributeValue? = nil,
                NULL: NullAttributeValue? = nil,
                S: StringAttributeValue? = nil,
                SS: StringSetAttributeValue? = nil) {
        self.B = B
        self.BOOL = BOOL
        self.BS = BS
        self.L = L
        self.M = M
        self.N = N
        self.NS = NS
        self.NULL = NULL
        self.S = S
        self.SS = SS
    }

    enum CodingKeys: String, CodingKey {
        case B
        case BOOL
        case BS
        case L
        case M
        case N
        case NS
        case NULL
        case S
        case SS
    }

    public func validate() throws {
    }
}

public struct AttributeValueUpdate: Codable, Equatable {
    public var action: AttributeAction?
    public var value: AttributeValue?

    public init(action: AttributeAction? = nil,
                value: AttributeValue? = nil) {
        self.action = action
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case value = "Value"
    }

    public func validate() throws {
        try value?.validate()
    }
}

public struct AutoScalingPolicyDescription: Codable, Equatable {
    public var policyName: AutoScalingPolicyName?
    public var targetTrackingScalingPolicyConfiguration: AutoScalingTargetTrackingScalingPolicyConfigurationDescription?

    public init(policyName: AutoScalingPolicyName? = nil,
                targetTrackingScalingPolicyConfiguration: AutoScalingTargetTrackingScalingPolicyConfigurationDescription? = nil) {
        self.policyName = policyName
        self.targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case policyName = "PolicyName"
        case targetTrackingScalingPolicyConfiguration = "TargetTrackingScalingPolicyConfiguration"
    }

    public func validate() throws {
        try policyName?.validateAsAutoScalingPolicyName()
        try targetTrackingScalingPolicyConfiguration?.validate()
    }
}

public struct AutoScalingPolicyUpdate: Codable, Equatable {
    public var policyName: AutoScalingPolicyName?
    public var targetTrackingScalingPolicyConfiguration: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate

    public init(policyName: AutoScalingPolicyName? = nil,
                targetTrackingScalingPolicyConfiguration: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate) {
        self.policyName = policyName
        self.targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case policyName = "PolicyName"
        case targetTrackingScalingPolicyConfiguration = "TargetTrackingScalingPolicyConfiguration"
    }

    public func validate() throws {
        try policyName?.validateAsAutoScalingPolicyName()
        try targetTrackingScalingPolicyConfiguration.validate()
    }
}

public struct AutoScalingSettingsDescription: Codable, Equatable {
    public var autoScalingDisabled: BooleanObject?
    public var autoScalingRoleArn: String?
    public var maximumUnits: PositiveLongObject?
    public var minimumUnits: PositiveLongObject?
    public var scalingPolicies: AutoScalingPolicyDescriptionList?

    public init(autoScalingDisabled: BooleanObject? = nil,
                autoScalingRoleArn: String? = nil,
                maximumUnits: PositiveLongObject? = nil,
                minimumUnits: PositiveLongObject? = nil,
                scalingPolicies: AutoScalingPolicyDescriptionList? = nil) {
        self.autoScalingDisabled = autoScalingDisabled
        self.autoScalingRoleArn = autoScalingRoleArn
        self.maximumUnits = maximumUnits
        self.minimumUnits = minimumUnits
        self.scalingPolicies = scalingPolicies
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingDisabled = "AutoScalingDisabled"
        case autoScalingRoleArn = "AutoScalingRoleArn"
        case maximumUnits = "MaximumUnits"
        case minimumUnits = "MinimumUnits"
        case scalingPolicies = "ScalingPolicies"
    }

    public func validate() throws {
        try maximumUnits?.validateAsPositiveLongObject()
        try minimumUnits?.validateAsPositiveLongObject()
    }
}

public struct AutoScalingSettingsUpdate: Codable, Equatable {
    public var autoScalingDisabled: BooleanObject?
    public var autoScalingRoleArn: AutoScalingRoleArn?
    public var maximumUnits: PositiveLongObject?
    public var minimumUnits: PositiveLongObject?
    public var scalingPolicyUpdate: AutoScalingPolicyUpdate?

    public init(autoScalingDisabled: BooleanObject? = nil,
                autoScalingRoleArn: AutoScalingRoleArn? = nil,
                maximumUnits: PositiveLongObject? = nil,
                minimumUnits: PositiveLongObject? = nil,
                scalingPolicyUpdate: AutoScalingPolicyUpdate? = nil) {
        self.autoScalingDisabled = autoScalingDisabled
        self.autoScalingRoleArn = autoScalingRoleArn
        self.maximumUnits = maximumUnits
        self.minimumUnits = minimumUnits
        self.scalingPolicyUpdate = scalingPolicyUpdate
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingDisabled = "AutoScalingDisabled"
        case autoScalingRoleArn = "AutoScalingRoleArn"
        case maximumUnits = "MaximumUnits"
        case minimumUnits = "MinimumUnits"
        case scalingPolicyUpdate = "ScalingPolicyUpdate"
    }

    public func validate() throws {
        try autoScalingRoleArn?.validateAsAutoScalingRoleArn()
        try maximumUnits?.validateAsPositiveLongObject()
        try minimumUnits?.validateAsPositiveLongObject()
        try scalingPolicyUpdate?.validate()
    }
}

public struct AutoScalingTargetTrackingScalingPolicyConfigurationDescription: Codable, Equatable {
    public var disableScaleIn: BooleanObject?
    public var scaleInCooldown: IntegerObject?
    public var scaleOutCooldown: IntegerObject?
    public var targetValue: Double

    public init(disableScaleIn: BooleanObject? = nil,
                scaleInCooldown: IntegerObject? = nil,
                scaleOutCooldown: IntegerObject? = nil,
                targetValue: Double) {
        self.disableScaleIn = disableScaleIn
        self.scaleInCooldown = scaleInCooldown
        self.scaleOutCooldown = scaleOutCooldown
        self.targetValue = targetValue
    }

    enum CodingKeys: String, CodingKey {
        case disableScaleIn = "DisableScaleIn"
        case scaleInCooldown = "ScaleInCooldown"
        case scaleOutCooldown = "ScaleOutCooldown"
        case targetValue = "TargetValue"
    }

    public func validate() throws {
    }
}

public struct AutoScalingTargetTrackingScalingPolicyConfigurationUpdate: Codable, Equatable {
    public var disableScaleIn: BooleanObject?
    public var scaleInCooldown: IntegerObject?
    public var scaleOutCooldown: IntegerObject?
    public var targetValue: Double

    public init(disableScaleIn: BooleanObject? = nil,
                scaleInCooldown: IntegerObject? = nil,
                scaleOutCooldown: IntegerObject? = nil,
                targetValue: Double) {
        self.disableScaleIn = disableScaleIn
        self.scaleInCooldown = scaleInCooldown
        self.scaleOutCooldown = scaleOutCooldown
        self.targetValue = targetValue
    }

    enum CodingKeys: String, CodingKey {
        case disableScaleIn = "DisableScaleIn"
        case scaleInCooldown = "ScaleInCooldown"
        case scaleOutCooldown = "ScaleOutCooldown"
        case targetValue = "TargetValue"
    }

    public func validate() throws {
    }
}

public struct BackupDescription: Codable, Equatable {
    public var backupDetails: BackupDetails?
    public var sourceTableDetails: SourceTableDetails?
    public var sourceTableFeatureDetails: SourceTableFeatureDetails?

    public init(backupDetails: BackupDetails? = nil,
                sourceTableDetails: SourceTableDetails? = nil,
                sourceTableFeatureDetails: SourceTableFeatureDetails? = nil) {
        self.backupDetails = backupDetails
        self.sourceTableDetails = sourceTableDetails
        self.sourceTableFeatureDetails = sourceTableFeatureDetails
    }

    enum CodingKeys: String, CodingKey {
        case backupDetails = "BackupDetails"
        case sourceTableDetails = "SourceTableDetails"
        case sourceTableFeatureDetails = "SourceTableFeatureDetails"
    }

    public func validate() throws {
        try backupDetails?.validate()
        try sourceTableDetails?.validate()
        try sourceTableFeatureDetails?.validate()
    }
}

public struct BackupDetails: Codable, Equatable {
    public var backupArn: BackupArn
    public var backupCreationDateTime: BackupCreationDateTime
    public var backupExpiryDateTime: Date?
    public var backupName: BackupName
    public var backupSizeBytes: BackupSizeBytes?
    public var backupStatus: BackupStatus
    public var backupType: BackupType

    public init(backupArn: BackupArn,
                backupCreationDateTime: BackupCreationDateTime,
                backupExpiryDateTime: Date? = nil,
                backupName: BackupName,
                backupSizeBytes: BackupSizeBytes? = nil,
                backupStatus: BackupStatus,
                backupType: BackupType) {
        self.backupArn = backupArn
        self.backupCreationDateTime = backupCreationDateTime
        self.backupExpiryDateTime = backupExpiryDateTime
        self.backupName = backupName
        self.backupSizeBytes = backupSizeBytes
        self.backupStatus = backupStatus
        self.backupType = backupType
    }

    enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
        case backupCreationDateTime = "BackupCreationDateTime"
        case backupExpiryDateTime = "BackupExpiryDateTime"
        case backupName = "BackupName"
        case backupSizeBytes = "BackupSizeBytes"
        case backupStatus = "BackupStatus"
        case backupType = "BackupType"
    }

    public func validate() throws {
        try backupArn.validateAsBackupArn()
        try backupName.validateAsBackupName()
        try backupSizeBytes?.validateAsBackupSizeBytes()
    }
}

public struct BackupInUseException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct BackupNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct BackupSummary: Codable, Equatable {
    public var backupArn: BackupArn?
    public var backupCreationDateTime: BackupCreationDateTime?
    public var backupExpiryDateTime: Date?
    public var backupName: BackupName?
    public var backupSizeBytes: BackupSizeBytes?
    public var backupStatus: BackupStatus?
    public var backupType: BackupType?
    public var tableArn: TableArn?
    public var tableId: TableId?
    public var tableName: TableName?

    public init(backupArn: BackupArn? = nil,
                backupCreationDateTime: BackupCreationDateTime? = nil,
                backupExpiryDateTime: Date? = nil,
                backupName: BackupName? = nil,
                backupSizeBytes: BackupSizeBytes? = nil,
                backupStatus: BackupStatus? = nil,
                backupType: BackupType? = nil,
                tableArn: TableArn? = nil,
                tableId: TableId? = nil,
                tableName: TableName? = nil) {
        self.backupArn = backupArn
        self.backupCreationDateTime = backupCreationDateTime
        self.backupExpiryDateTime = backupExpiryDateTime
        self.backupName = backupName
        self.backupSizeBytes = backupSizeBytes
        self.backupStatus = backupStatus
        self.backupType = backupType
        self.tableArn = tableArn
        self.tableId = tableId
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
        case backupCreationDateTime = "BackupCreationDateTime"
        case backupExpiryDateTime = "BackupExpiryDateTime"
        case backupName = "BackupName"
        case backupSizeBytes = "BackupSizeBytes"
        case backupStatus = "BackupStatus"
        case backupType = "BackupType"
        case tableArn = "TableArn"
        case tableId = "TableId"
        case tableName = "TableName"
    }

    public func validate() throws {
        try backupArn?.validateAsBackupArn()
        try backupName?.validateAsBackupName()
        try backupSizeBytes?.validateAsBackupSizeBytes()
        try tableId?.validateAsTableId()
        try tableName?.validateAsTableName()
    }
}

public struct BatchGetItemInput: Codable, Equatable {
    public var requestItems: BatchGetRequestMap
    public var returnConsumedCapacity: ReturnConsumedCapacity?

    public init(requestItems: BatchGetRequestMap,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil) {
        self.requestItems = requestItems
        self.returnConsumedCapacity = returnConsumedCapacity
    }

    enum CodingKeys: String, CodingKey {
        case requestItems = "RequestItems"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
    }

    public func validate() throws {
    }
}

public struct BatchGetItemOutput: Codable, Equatable {
    public var consumedCapacity: ConsumedCapacityMultiple?
    public var responses: BatchGetResponseMap?
    public var unprocessedKeys: BatchGetRequestMap?

    public init(consumedCapacity: ConsumedCapacityMultiple? = nil,
                responses: BatchGetResponseMap? = nil,
                unprocessedKeys: BatchGetRequestMap? = nil) {
        self.consumedCapacity = consumedCapacity
        self.responses = responses
        self.unprocessedKeys = unprocessedKeys
    }

    enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case responses = "Responses"
        case unprocessedKeys = "UnprocessedKeys"
    }

    public func validate() throws {
    }
}

public struct BatchWriteItemInput: Codable, Equatable {
    public var requestItems: BatchWriteItemRequestMap
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var returnItemCollectionMetrics: ReturnItemCollectionMetrics?

    public init(requestItems: BatchWriteItemRequestMap,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                returnItemCollectionMetrics: ReturnItemCollectionMetrics? = nil) {
        self.requestItems = requestItems
        self.returnConsumedCapacity = returnConsumedCapacity
        self.returnItemCollectionMetrics = returnItemCollectionMetrics
    }

    enum CodingKeys: String, CodingKey {
        case requestItems = "RequestItems"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case returnItemCollectionMetrics = "ReturnItemCollectionMetrics"
    }

    public func validate() throws {
    }
}

public struct BatchWriteItemOutput: Codable, Equatable {
    public var consumedCapacity: ConsumedCapacityMultiple?
    public var itemCollectionMetrics: ItemCollectionMetricsPerTable?
    public var unprocessedItems: BatchWriteItemRequestMap?

    public init(consumedCapacity: ConsumedCapacityMultiple? = nil,
                itemCollectionMetrics: ItemCollectionMetricsPerTable? = nil,
                unprocessedItems: BatchWriteItemRequestMap? = nil) {
        self.consumedCapacity = consumedCapacity
        self.itemCollectionMetrics = itemCollectionMetrics
        self.unprocessedItems = unprocessedItems
    }

    enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case itemCollectionMetrics = "ItemCollectionMetrics"
        case unprocessedItems = "UnprocessedItems"
    }

    public func validate() throws {
    }
}

public struct Capacity: Codable, Equatable {
    public var capacityUnits: ConsumedCapacityUnits?

    public init(capacityUnits: ConsumedCapacityUnits? = nil) {
        self.capacityUnits = capacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case capacityUnits = "CapacityUnits"
    }

    public func validate() throws {
    }
}

public struct Condition: Codable, Equatable {
    public var attributeValueList: AttributeValueList?
    public var comparisonOperator: ComparisonOperator

    public init(attributeValueList: AttributeValueList? = nil,
                comparisonOperator: ComparisonOperator) {
        self.attributeValueList = attributeValueList
        self.comparisonOperator = comparisonOperator
    }

    enum CodingKeys: String, CodingKey {
        case attributeValueList = "AttributeValueList"
        case comparisonOperator = "ComparisonOperator"
    }

    public func validate() throws {
    }
}

public struct ConditionalCheckFailedException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ConsumedCapacity: Codable, Equatable {
    public var capacityUnits: ConsumedCapacityUnits?
    public var globalSecondaryIndexes: SecondaryIndexesCapacityMap?
    public var localSecondaryIndexes: SecondaryIndexesCapacityMap?
    public var table: Capacity?
    public var tableName: TableName?

    public init(capacityUnits: ConsumedCapacityUnits? = nil,
                globalSecondaryIndexes: SecondaryIndexesCapacityMap? = nil,
                localSecondaryIndexes: SecondaryIndexesCapacityMap? = nil,
                table: Capacity? = nil,
                tableName: TableName? = nil) {
        self.capacityUnits = capacityUnits
        self.globalSecondaryIndexes = globalSecondaryIndexes
        self.localSecondaryIndexes = localSecondaryIndexes
        self.table = table
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case capacityUnits = "CapacityUnits"
        case globalSecondaryIndexes = "GlobalSecondaryIndexes"
        case localSecondaryIndexes = "LocalSecondaryIndexes"
        case table = "Table"
        case tableName = "TableName"
    }

    public func validate() throws {
        try table?.validate()
        try tableName?.validateAsTableName()
    }
}

public struct ContinuousBackupsDescription: Codable, Equatable {
    public var continuousBackupsStatus: ContinuousBackupsStatus
    public var pointInTimeRecoveryDescription: PointInTimeRecoveryDescription?

    public init(continuousBackupsStatus: ContinuousBackupsStatus,
                pointInTimeRecoveryDescription: PointInTimeRecoveryDescription? = nil) {
        self.continuousBackupsStatus = continuousBackupsStatus
        self.pointInTimeRecoveryDescription = pointInTimeRecoveryDescription
    }

    enum CodingKeys: String, CodingKey {
        case continuousBackupsStatus = "ContinuousBackupsStatus"
        case pointInTimeRecoveryDescription = "PointInTimeRecoveryDescription"
    }

    public func validate() throws {
        try pointInTimeRecoveryDescription?.validate()
    }
}

public struct ContinuousBackupsUnavailableException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct CreateBackupInput: Codable, Equatable {
    public var backupName: BackupName
    public var tableName: TableName

    public init(backupName: BackupName,
                tableName: TableName) {
        self.backupName = backupName
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case backupName = "BackupName"
        case tableName = "TableName"
    }

    public func validate() throws {
        try backupName.validateAsBackupName()
        try tableName.validateAsTableName()
    }
}

public struct CreateBackupOutput: Codable, Equatable {
    public var backupDetails: BackupDetails?

    public init(backupDetails: BackupDetails? = nil) {
        self.backupDetails = backupDetails
    }

    enum CodingKeys: String, CodingKey {
        case backupDetails = "BackupDetails"
    }

    public func validate() throws {
        try backupDetails?.validate()
    }
}

public struct CreateGlobalSecondaryIndexAction: Codable, Equatable {
    public var indexName: IndexName
    public var keySchema: KeySchema
    public var projection: Projection
    public var provisionedThroughput: ProvisionedThroughput

    public init(indexName: IndexName,
                keySchema: KeySchema,
                projection: Projection,
                provisionedThroughput: ProvisionedThroughput) {
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
        self.provisionedThroughput = provisionedThroughput
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try keySchema.validateAsKeySchema()
        try projection.validate()
        try provisionedThroughput.validate()
    }
}

public struct CreateGlobalTableInput: Codable, Equatable {
    public var globalTableName: TableName
    public var replicationGroup: ReplicaList

    public init(globalTableName: TableName,
                replicationGroup: ReplicaList) {
        self.globalTableName = globalTableName
        self.replicationGroup = replicationGroup
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicationGroup = "ReplicationGroup"
    }

    public func validate() throws {
        try globalTableName.validateAsTableName()
    }
}

public struct CreateGlobalTableOutput: Codable, Equatable {
    public var globalTableDescription: GlobalTableDescription?

    public init(globalTableDescription: GlobalTableDescription? = nil) {
        self.globalTableDescription = globalTableDescription
    }

    enum CodingKeys: String, CodingKey {
        case globalTableDescription = "GlobalTableDescription"
    }

    public func validate() throws {
        try globalTableDescription?.validate()
    }
}

public struct CreateReplicaAction: Codable, Equatable {
    public var regionName: RegionName

    public init(regionName: RegionName) {
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
    }

    public func validate() throws {
    }
}

public struct CreateTableInput: Codable, Equatable {
    public var attributeDefinitions: AttributeDefinitions
    public var globalSecondaryIndexes: GlobalSecondaryIndexList?
    public var keySchema: KeySchema
    public var localSecondaryIndexes: LocalSecondaryIndexList?
    public var provisionedThroughput: ProvisionedThroughput
    public var sSESpecification: SSESpecification?
    public var streamSpecification: StreamSpecification?
    public var tableName: TableName

    public init(attributeDefinitions: AttributeDefinitions,
                globalSecondaryIndexes: GlobalSecondaryIndexList? = nil,
                keySchema: KeySchema,
                localSecondaryIndexes: LocalSecondaryIndexList? = nil,
                provisionedThroughput: ProvisionedThroughput,
                sSESpecification: SSESpecification? = nil,
                streamSpecification: StreamSpecification? = nil,
                tableName: TableName) {
        self.attributeDefinitions = attributeDefinitions
        self.globalSecondaryIndexes = globalSecondaryIndexes
        self.keySchema = keySchema
        self.localSecondaryIndexes = localSecondaryIndexes
        self.provisionedThroughput = provisionedThroughput
        self.sSESpecification = sSESpecification
        self.streamSpecification = streamSpecification
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case attributeDefinitions = "AttributeDefinitions"
        case globalSecondaryIndexes = "GlobalSecondaryIndexes"
        case keySchema = "KeySchema"
        case localSecondaryIndexes = "LocalSecondaryIndexes"
        case provisionedThroughput = "ProvisionedThroughput"
        case sSESpecification = "SSESpecification"
        case streamSpecification = "StreamSpecification"
        case tableName = "TableName"
    }

    public func validate() throws {
        try keySchema.validateAsKeySchema()
        try provisionedThroughput.validate()
        try sSESpecification?.validate()
        try streamSpecification?.validate()
        try tableName.validateAsTableName()
    }
}

public struct CreateTableOutput: Codable, Equatable {
    public var tableDescription: TableDescription?

    public init(tableDescription: TableDescription? = nil) {
        self.tableDescription = tableDescription
    }

    enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public func validate() throws {
        try tableDescription?.validate()
    }
}

public struct DeleteBackupInput: Codable, Equatable {
    public var backupArn: BackupArn

    public init(backupArn: BackupArn) {
        self.backupArn = backupArn
    }

    enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
    }

    public func validate() throws {
        try backupArn.validateAsBackupArn()
    }
}

public struct DeleteBackupOutput: Codable, Equatable {
    public var backupDescription: BackupDescription?

    public init(backupDescription: BackupDescription? = nil) {
        self.backupDescription = backupDescription
    }

    enum CodingKeys: String, CodingKey {
        case backupDescription = "BackupDescription"
    }

    public func validate() throws {
        try backupDescription?.validate()
    }
}

public struct DeleteGlobalSecondaryIndexAction: Codable, Equatable {
    public var indexName: IndexName

    public init(indexName: IndexName) {
        self.indexName = indexName
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
    }
}

public struct DeleteItemInput: Codable, Equatable {
    public var conditionExpression: ConditionExpression?
    public var conditionalOperator: ConditionalOperator?
    public var expected: ExpectedAttributeMap?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var expressionAttributeValues: ExpressionAttributeValueMap?
    public var key: Key
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var returnItemCollectionMetrics: ReturnItemCollectionMetrics?
    public var returnValues: ReturnValue?
    public var tableName: TableName

    public init(conditionExpression: ConditionExpression? = nil,
                conditionalOperator: ConditionalOperator? = nil,
                expected: ExpectedAttributeMap? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                expressionAttributeValues: ExpressionAttributeValueMap? = nil,
                key: Key,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                returnItemCollectionMetrics: ReturnItemCollectionMetrics? = nil,
                returnValues: ReturnValue? = nil,
                tableName: TableName) {
        self.conditionExpression = conditionExpression
        self.conditionalOperator = conditionalOperator
        self.expected = expected
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.key = key
        self.returnConsumedCapacity = returnConsumedCapacity
        self.returnItemCollectionMetrics = returnItemCollectionMetrics
        self.returnValues = returnValues
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case conditionExpression = "ConditionExpression"
        case conditionalOperator = "ConditionalOperator"
        case expected = "Expected"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case key = "Key"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case returnItemCollectionMetrics = "ReturnItemCollectionMetrics"
        case returnValues = "ReturnValues"
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct DeleteItemOutput: Codable, Equatable {
    public var attributes: AttributeMap?
    public var consumedCapacity: ConsumedCapacity?
    public var itemCollectionMetrics: ItemCollectionMetrics?

    public init(attributes: AttributeMap? = nil,
                consumedCapacity: ConsumedCapacity? = nil,
                itemCollectionMetrics: ItemCollectionMetrics? = nil) {
        self.attributes = attributes
        self.consumedCapacity = consumedCapacity
        self.itemCollectionMetrics = itemCollectionMetrics
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case consumedCapacity = "ConsumedCapacity"
        case itemCollectionMetrics = "ItemCollectionMetrics"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
        try itemCollectionMetrics?.validate()
    }
}

public struct DeleteReplicaAction: Codable, Equatable {
    public var regionName: RegionName

    public init(regionName: RegionName) {
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
    }

    public func validate() throws {
    }
}

public struct DeleteRequest: Codable, Equatable {
    public var key: Key

    public init(key: Key) {
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
    }

    public func validate() throws {
    }
}

public struct DeleteTableInput: Codable, Equatable {
    public var tableName: TableName

    public init(tableName: TableName) {
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct DeleteTableOutput: Codable, Equatable {
    public var tableDescription: TableDescription?

    public init(tableDescription: TableDescription? = nil) {
        self.tableDescription = tableDescription
    }

    enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public func validate() throws {
        try tableDescription?.validate()
    }
}

public struct DescribeBackupInput: Codable, Equatable {
    public var backupArn: BackupArn

    public init(backupArn: BackupArn) {
        self.backupArn = backupArn
    }

    enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
    }

    public func validate() throws {
        try backupArn.validateAsBackupArn()
    }
}

public struct DescribeBackupOutput: Codable, Equatable {
    public var backupDescription: BackupDescription?

    public init(backupDescription: BackupDescription? = nil) {
        self.backupDescription = backupDescription
    }

    enum CodingKeys: String, CodingKey {
        case backupDescription = "BackupDescription"
    }

    public func validate() throws {
        try backupDescription?.validate()
    }
}

public struct DescribeContinuousBackupsInput: Codable, Equatable {
    public var tableName: TableName

    public init(tableName: TableName) {
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct DescribeContinuousBackupsOutput: Codable, Equatable {
    public var continuousBackupsDescription: ContinuousBackupsDescription?

    public init(continuousBackupsDescription: ContinuousBackupsDescription? = nil) {
        self.continuousBackupsDescription = continuousBackupsDescription
    }

    enum CodingKeys: String, CodingKey {
        case continuousBackupsDescription = "ContinuousBackupsDescription"
    }

    public func validate() throws {
        try continuousBackupsDescription?.validate()
    }
}

public struct DescribeEndpointsRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeEndpointsResponse: Codable, Equatable {
    public var endpoints: Endpoints

    public init(endpoints: Endpoints) {
        self.endpoints = endpoints
    }

    enum CodingKeys: String, CodingKey {
        case endpoints = "Endpoints"
    }

    public func validate() throws {
    }
}

public struct DescribeGlobalTableInput: Codable, Equatable {
    public var globalTableName: TableName

    public init(globalTableName: TableName) {
        self.globalTableName = globalTableName
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
    }

    public func validate() throws {
        try globalTableName.validateAsTableName()
    }
}

public struct DescribeGlobalTableOutput: Codable, Equatable {
    public var globalTableDescription: GlobalTableDescription?

    public init(globalTableDescription: GlobalTableDescription? = nil) {
        self.globalTableDescription = globalTableDescription
    }

    enum CodingKeys: String, CodingKey {
        case globalTableDescription = "GlobalTableDescription"
    }

    public func validate() throws {
        try globalTableDescription?.validate()
    }
}

public struct DescribeGlobalTableSettingsInput: Codable, Equatable {
    public var globalTableName: TableName

    public init(globalTableName: TableName) {
        self.globalTableName = globalTableName
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
    }

    public func validate() throws {
        try globalTableName.validateAsTableName()
    }
}

public struct DescribeGlobalTableSettingsOutput: Codable, Equatable {
    public var globalTableName: TableName?
    public var replicaSettings: ReplicaSettingsDescriptionList?

    public init(globalTableName: TableName? = nil,
                replicaSettings: ReplicaSettingsDescriptionList? = nil) {
        self.globalTableName = globalTableName
        self.replicaSettings = replicaSettings
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicaSettings = "ReplicaSettings"
    }

    public func validate() throws {
        try globalTableName?.validateAsTableName()
    }
}

public struct DescribeLimitsInput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeLimitsOutput: Codable, Equatable {
    public var accountMaxReadCapacityUnits: PositiveLongObject?
    public var accountMaxWriteCapacityUnits: PositiveLongObject?
    public var tableMaxReadCapacityUnits: PositiveLongObject?
    public var tableMaxWriteCapacityUnits: PositiveLongObject?

    public init(accountMaxReadCapacityUnits: PositiveLongObject? = nil,
                accountMaxWriteCapacityUnits: PositiveLongObject? = nil,
                tableMaxReadCapacityUnits: PositiveLongObject? = nil,
                tableMaxWriteCapacityUnits: PositiveLongObject? = nil) {
        self.accountMaxReadCapacityUnits = accountMaxReadCapacityUnits
        self.accountMaxWriteCapacityUnits = accountMaxWriteCapacityUnits
        self.tableMaxReadCapacityUnits = tableMaxReadCapacityUnits
        self.tableMaxWriteCapacityUnits = tableMaxWriteCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case accountMaxReadCapacityUnits = "AccountMaxReadCapacityUnits"
        case accountMaxWriteCapacityUnits = "AccountMaxWriteCapacityUnits"
        case tableMaxReadCapacityUnits = "TableMaxReadCapacityUnits"
        case tableMaxWriteCapacityUnits = "TableMaxWriteCapacityUnits"
    }

    public func validate() throws {
        try accountMaxReadCapacityUnits?.validateAsPositiveLongObject()
        try accountMaxWriteCapacityUnits?.validateAsPositiveLongObject()
        try tableMaxReadCapacityUnits?.validateAsPositiveLongObject()
        try tableMaxWriteCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct DescribeTableInput: Codable, Equatable {
    public var tableName: TableName

    public init(tableName: TableName) {
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct DescribeTableOutput: Codable, Equatable {
    public var table: TableDescription?

    public init(table: TableDescription? = nil) {
        self.table = table
    }

    enum CodingKeys: String, CodingKey {
        case table = "Table"
    }

    public func validate() throws {
        try table?.validate()
    }
}

public struct DescribeTimeToLiveInput: Codable, Equatable {
    public var tableName: TableName

    public init(tableName: TableName) {
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct DescribeTimeToLiveOutput: Codable, Equatable {
    public var timeToLiveDescription: TimeToLiveDescription?

    public init(timeToLiveDescription: TimeToLiveDescription? = nil) {
        self.timeToLiveDescription = timeToLiveDescription
    }

    enum CodingKeys: String, CodingKey {
        case timeToLiveDescription = "TimeToLiveDescription"
    }

    public func validate() throws {
        try timeToLiveDescription?.validate()
    }
}

public struct Endpoint: Codable, Equatable {
    public var address: String
    public var cachePeriodInMinutes: Long

    public init(address: String,
                cachePeriodInMinutes: Long) {
        self.address = address
        self.cachePeriodInMinutes = cachePeriodInMinutes
    }

    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case cachePeriodInMinutes = "CachePeriodInMinutes"
    }

    public func validate() throws {
    }
}

public struct ExpectedAttributeValue: Codable, Equatable {
    public var attributeValueList: AttributeValueList?
    public var comparisonOperator: ComparisonOperator?
    public var exists: BooleanObject?
    public var value: AttributeValue?

    public init(attributeValueList: AttributeValueList? = nil,
                comparisonOperator: ComparisonOperator? = nil,
                exists: BooleanObject? = nil,
                value: AttributeValue? = nil) {
        self.attributeValueList = attributeValueList
        self.comparisonOperator = comparisonOperator
        self.exists = exists
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case attributeValueList = "AttributeValueList"
        case comparisonOperator = "ComparisonOperator"
        case exists = "Exists"
        case value = "Value"
    }

    public func validate() throws {
        try value?.validate()
    }
}

public struct GetItemInput: Codable, Equatable {
    public var attributesToGet: AttributeNameList?
    public var consistentRead: ConsistentRead?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var key: Key
    public var projectionExpression: ProjectionExpression?
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var tableName: TableName

    public init(attributesToGet: AttributeNameList? = nil,
                consistentRead: ConsistentRead? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                key: Key,
                projectionExpression: ProjectionExpression? = nil,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                tableName: TableName) {
        self.attributesToGet = attributesToGet
        self.consistentRead = consistentRead
        self.expressionAttributeNames = expressionAttributeNames
        self.key = key
        self.projectionExpression = projectionExpression
        self.returnConsumedCapacity = returnConsumedCapacity
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case consistentRead = "ConsistentRead"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case key = "Key"
        case projectionExpression = "ProjectionExpression"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case tableName = "TableName"
    }

    public func validate() throws {
        try attributesToGet?.validateAsAttributeNameList()
        try tableName.validateAsTableName()
    }
}

public struct GetItemOutput: Codable, Equatable {
    public var consumedCapacity: ConsumedCapacity?
    public var item: AttributeMap?

    public init(consumedCapacity: ConsumedCapacity? = nil,
                item: AttributeMap? = nil) {
        self.consumedCapacity = consumedCapacity
        self.item = item
    }

    enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case item = "Item"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
    }
}

public struct GlobalSecondaryIndex: Codable, Equatable {
    public var indexName: IndexName
    public var keySchema: KeySchema
    public var projection: Projection
    public var provisionedThroughput: ProvisionedThroughput

    public init(indexName: IndexName,
                keySchema: KeySchema,
                projection: Projection,
                provisionedThroughput: ProvisionedThroughput) {
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
        self.provisionedThroughput = provisionedThroughput
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try keySchema.validateAsKeySchema()
        try projection.validate()
        try provisionedThroughput.validate()
    }
}

public struct GlobalSecondaryIndexDescription: Codable, Equatable {
    public var backfilling: Backfilling?
    public var indexArn: String?
    public var indexName: IndexName?
    public var indexSizeBytes: Long?
    public var indexStatus: IndexStatus?
    public var itemCount: Long?
    public var keySchema: KeySchema?
    public var projection: Projection?
    public var provisionedThroughput: ProvisionedThroughputDescription?

    public init(backfilling: Backfilling? = nil,
                indexArn: String? = nil,
                indexName: IndexName? = nil,
                indexSizeBytes: Long? = nil,
                indexStatus: IndexStatus? = nil,
                itemCount: Long? = nil,
                keySchema: KeySchema? = nil,
                projection: Projection? = nil,
                provisionedThroughput: ProvisionedThroughputDescription? = nil) {
        self.backfilling = backfilling
        self.indexArn = indexArn
        self.indexName = indexName
        self.indexSizeBytes = indexSizeBytes
        self.indexStatus = indexStatus
        self.itemCount = itemCount
        self.keySchema = keySchema
        self.projection = projection
        self.provisionedThroughput = provisionedThroughput
    }

    enum CodingKeys: String, CodingKey {
        case backfilling = "Backfilling"
        case indexArn = "IndexArn"
        case indexName = "IndexName"
        case indexSizeBytes = "IndexSizeBytes"
        case indexStatus = "IndexStatus"
        case itemCount = "ItemCount"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try keySchema?.validateAsKeySchema()
        try projection?.validate()
        try provisionedThroughput?.validate()
    }
}

public struct GlobalSecondaryIndexInfo: Codable, Equatable {
    public var indexName: IndexName?
    public var keySchema: KeySchema?
    public var projection: Projection?
    public var provisionedThroughput: ProvisionedThroughput?

    public init(indexName: IndexName? = nil,
                keySchema: KeySchema? = nil,
                projection: Projection? = nil,
                provisionedThroughput: ProvisionedThroughput? = nil) {
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
        self.provisionedThroughput = provisionedThroughput
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try keySchema?.validateAsKeySchema()
        try projection?.validate()
        try provisionedThroughput?.validate()
    }
}

public struct GlobalSecondaryIndexUpdate: Codable, Equatable {
    public var create: CreateGlobalSecondaryIndexAction?
    public var delete: DeleteGlobalSecondaryIndexAction?
    public var update: UpdateGlobalSecondaryIndexAction?

    public init(create: CreateGlobalSecondaryIndexAction? = nil,
                delete: DeleteGlobalSecondaryIndexAction? = nil,
                update: UpdateGlobalSecondaryIndexAction? = nil) {
        self.create = create
        self.delete = delete
        self.update = update
    }

    enum CodingKeys: String, CodingKey {
        case create = "Create"
        case delete = "Delete"
        case update = "Update"
    }

    public func validate() throws {
        try create?.validate()
        try delete?.validate()
        try update?.validate()
    }
}

public struct GlobalTable: Codable, Equatable {
    public var globalTableName: TableName?
    public var replicationGroup: ReplicaList?

    public init(globalTableName: TableName? = nil,
                replicationGroup: ReplicaList? = nil) {
        self.globalTableName = globalTableName
        self.replicationGroup = replicationGroup
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicationGroup = "ReplicationGroup"
    }

    public func validate() throws {
        try globalTableName?.validateAsTableName()
    }
}

public struct GlobalTableAlreadyExistsException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct GlobalTableDescription: Codable, Equatable {
    public var creationDateTime: Date?
    public var globalTableArn: GlobalTableArnString?
    public var globalTableName: TableName?
    public var globalTableStatus: GlobalTableStatus?
    public var replicationGroup: ReplicaDescriptionList?

    public init(creationDateTime: Date? = nil,
                globalTableArn: GlobalTableArnString? = nil,
                globalTableName: TableName? = nil,
                globalTableStatus: GlobalTableStatus? = nil,
                replicationGroup: ReplicaDescriptionList? = nil) {
        self.creationDateTime = creationDateTime
        self.globalTableArn = globalTableArn
        self.globalTableName = globalTableName
        self.globalTableStatus = globalTableStatus
        self.replicationGroup = replicationGroup
    }

    enum CodingKeys: String, CodingKey {
        case creationDateTime = "CreationDateTime"
        case globalTableArn = "GlobalTableArn"
        case globalTableName = "GlobalTableName"
        case globalTableStatus = "GlobalTableStatus"
        case replicationGroup = "ReplicationGroup"
    }

    public func validate() throws {
        try globalTableName?.validateAsTableName()
    }
}

public struct GlobalTableGlobalSecondaryIndexSettingsUpdate: Codable, Equatable {
    public var indexName: IndexName
    public var provisionedWriteCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate?
    public var provisionedWriteCapacityUnits: PositiveLongObject?

    public init(indexName: IndexName,
                provisionedWriteCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate? = nil,
                provisionedWriteCapacityUnits: PositiveLongObject? = nil) {
        self.indexName = indexName
        self.provisionedWriteCapacityAutoScalingSettingsUpdate = provisionedWriteCapacityAutoScalingSettingsUpdate
        self.provisionedWriteCapacityUnits = provisionedWriteCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case provisionedWriteCapacityAutoScalingSettingsUpdate = "ProvisionedWriteCapacityAutoScalingSettingsUpdate"
        case provisionedWriteCapacityUnits = "ProvisionedWriteCapacityUnits"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try provisionedWriteCapacityAutoScalingSettingsUpdate?.validate()
        try provisionedWriteCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct GlobalTableNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct IndexNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InternalServerError: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidRestoreTimeException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ItemCollectionMetrics: Codable, Equatable {
    public var itemCollectionKey: ItemCollectionKeyAttributeMap?
    public var sizeEstimateRangeGB: ItemCollectionSizeEstimateRange?

    public init(itemCollectionKey: ItemCollectionKeyAttributeMap? = nil,
                sizeEstimateRangeGB: ItemCollectionSizeEstimateRange? = nil) {
        self.itemCollectionKey = itemCollectionKey
        self.sizeEstimateRangeGB = sizeEstimateRangeGB
    }

    enum CodingKeys: String, CodingKey {
        case itemCollectionKey = "ItemCollectionKey"
        case sizeEstimateRangeGB = "SizeEstimateRangeGB"
    }

    public func validate() throws {
    }
}

public struct ItemCollectionSizeLimitExceededException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct KeySchemaElement: Codable, Equatable {
    public var attributeName: KeySchemaAttributeName
    public var keyType: KeyType

    public init(attributeName: KeySchemaAttributeName,
                keyType: KeyType) {
        self.attributeName = attributeName
        self.keyType = keyType
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case keyType = "KeyType"
    }

    public func validate() throws {
        try attributeName.validateAsKeySchemaAttributeName()
    }
}

public struct KeysAndAttributes: Codable, Equatable {
    public var attributesToGet: AttributeNameList?
    public var consistentRead: ConsistentRead?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var keys: KeyList
    public var projectionExpression: ProjectionExpression?

    public init(attributesToGet: AttributeNameList? = nil,
                consistentRead: ConsistentRead? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                keys: KeyList,
                projectionExpression: ProjectionExpression? = nil) {
        self.attributesToGet = attributesToGet
        self.consistentRead = consistentRead
        self.expressionAttributeNames = expressionAttributeNames
        self.keys = keys
        self.projectionExpression = projectionExpression
    }

    enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case consistentRead = "ConsistentRead"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case keys = "Keys"
        case projectionExpression = "ProjectionExpression"
    }

    public func validate() throws {
        try attributesToGet?.validateAsAttributeNameList()
        try keys.validateAsKeyList()
    }
}

public struct LimitExceededException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ListBackupsInput: Codable, Equatable {
    public var backupType: BackupTypeFilter?
    public var exclusiveStartBackupArn: BackupArn?
    public var limit: BackupsInputLimit?
    public var tableName: TableName?
    public var timeRangeLowerBound: TimeRangeLowerBound?
    public var timeRangeUpperBound: TimeRangeUpperBound?

    public init(backupType: BackupTypeFilter? = nil,
                exclusiveStartBackupArn: BackupArn? = nil,
                limit: BackupsInputLimit? = nil,
                tableName: TableName? = nil,
                timeRangeLowerBound: TimeRangeLowerBound? = nil,
                timeRangeUpperBound: TimeRangeUpperBound? = nil) {
        self.backupType = backupType
        self.exclusiveStartBackupArn = exclusiveStartBackupArn
        self.limit = limit
        self.tableName = tableName
        self.timeRangeLowerBound = timeRangeLowerBound
        self.timeRangeUpperBound = timeRangeUpperBound
    }

    enum CodingKeys: String, CodingKey {
        case backupType = "BackupType"
        case exclusiveStartBackupArn = "ExclusiveStartBackupArn"
        case limit = "Limit"
        case tableName = "TableName"
        case timeRangeLowerBound = "TimeRangeLowerBound"
        case timeRangeUpperBound = "TimeRangeUpperBound"
    }

    public func validate() throws {
        try exclusiveStartBackupArn?.validateAsBackupArn()
        try limit?.validateAsBackupsInputLimit()
        try tableName?.validateAsTableName()
    }
}

public struct ListBackupsOutput: Codable, Equatable {
    public var backupSummaries: BackupSummaries?
    public var lastEvaluatedBackupArn: BackupArn?

    public init(backupSummaries: BackupSummaries? = nil,
                lastEvaluatedBackupArn: BackupArn? = nil) {
        self.backupSummaries = backupSummaries
        self.lastEvaluatedBackupArn = lastEvaluatedBackupArn
    }

    enum CodingKeys: String, CodingKey {
        case backupSummaries = "BackupSummaries"
        case lastEvaluatedBackupArn = "LastEvaluatedBackupArn"
    }

    public func validate() throws {
        try lastEvaluatedBackupArn?.validateAsBackupArn()
    }
}

public struct ListGlobalTablesInput: Codable, Equatable {
    public var exclusiveStartGlobalTableName: TableName?
    public var limit: PositiveIntegerObject?
    public var regionName: RegionName?

    public init(exclusiveStartGlobalTableName: TableName? = nil,
                limit: PositiveIntegerObject? = nil,
                regionName: RegionName? = nil) {
        self.exclusiveStartGlobalTableName = exclusiveStartGlobalTableName
        self.limit = limit
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case exclusiveStartGlobalTableName = "ExclusiveStartGlobalTableName"
        case limit = "Limit"
        case regionName = "RegionName"
    }

    public func validate() throws {
        try exclusiveStartGlobalTableName?.validateAsTableName()
        try limit?.validateAsPositiveIntegerObject()
    }
}

public struct ListGlobalTablesOutput: Codable, Equatable {
    public var globalTables: GlobalTableList?
    public var lastEvaluatedGlobalTableName: TableName?

    public init(globalTables: GlobalTableList? = nil,
                lastEvaluatedGlobalTableName: TableName? = nil) {
        self.globalTables = globalTables
        self.lastEvaluatedGlobalTableName = lastEvaluatedGlobalTableName
    }

    enum CodingKeys: String, CodingKey {
        case globalTables = "GlobalTables"
        case lastEvaluatedGlobalTableName = "LastEvaluatedGlobalTableName"
    }

    public func validate() throws {
        try lastEvaluatedGlobalTableName?.validateAsTableName()
    }
}

public struct ListTablesInput: Codable, Equatable {
    public var exclusiveStartTableName: TableName?
    public var limit: ListTablesInputLimit?

    public init(exclusiveStartTableName: TableName? = nil,
                limit: ListTablesInputLimit? = nil) {
        self.exclusiveStartTableName = exclusiveStartTableName
        self.limit = limit
    }

    enum CodingKeys: String, CodingKey {
        case exclusiveStartTableName = "ExclusiveStartTableName"
        case limit = "Limit"
    }

    public func validate() throws {
        try exclusiveStartTableName?.validateAsTableName()
        try limit?.validateAsListTablesInputLimit()
    }
}

public struct ListTablesOutput: Codable, Equatable {
    public var lastEvaluatedTableName: TableName?
    public var tableNames: TableNameList?

    public init(lastEvaluatedTableName: TableName? = nil,
                tableNames: TableNameList? = nil) {
        self.lastEvaluatedTableName = lastEvaluatedTableName
        self.tableNames = tableNames
    }

    enum CodingKeys: String, CodingKey {
        case lastEvaluatedTableName = "LastEvaluatedTableName"
        case tableNames = "TableNames"
    }

    public func validate() throws {
        try lastEvaluatedTableName?.validateAsTableName()
    }
}

public struct ListTagsOfResourceInput: Codable, Equatable {
    public var nextToken: NextTokenString?
    public var resourceArn: ResourceArnString

    public init(nextToken: NextTokenString? = nil,
                resourceArn: ResourceArnString) {
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsResourceArnString()
    }
}

public struct ListTagsOfResourceOutput: Codable, Equatable {
    public var nextToken: NextTokenString?
    public var tags: TagList?

    public init(nextToken: NextTokenString? = nil,
                tags: TagList? = nil) {
        self.nextToken = nextToken
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct LocalSecondaryIndex: Codable, Equatable {
    public var indexName: IndexName
    public var keySchema: KeySchema
    public var projection: Projection

    public init(indexName: IndexName,
                keySchema: KeySchema,
                projection: Projection) {
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try keySchema.validateAsKeySchema()
        try projection.validate()
    }
}

public struct LocalSecondaryIndexDescription: Codable, Equatable {
    public var indexArn: String?
    public var indexName: IndexName?
    public var indexSizeBytes: Long?
    public var itemCount: Long?
    public var keySchema: KeySchema?
    public var projection: Projection?

    public init(indexArn: String? = nil,
                indexName: IndexName? = nil,
                indexSizeBytes: Long? = nil,
                itemCount: Long? = nil,
                keySchema: KeySchema? = nil,
                projection: Projection? = nil) {
        self.indexArn = indexArn
        self.indexName = indexName
        self.indexSizeBytes = indexSizeBytes
        self.itemCount = itemCount
        self.keySchema = keySchema
        self.projection = projection
    }

    enum CodingKeys: String, CodingKey {
        case indexArn = "IndexArn"
        case indexName = "IndexName"
        case indexSizeBytes = "IndexSizeBytes"
        case itemCount = "ItemCount"
        case keySchema = "KeySchema"
        case projection = "Projection"
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try keySchema?.validateAsKeySchema()
        try projection?.validate()
    }
}

public struct LocalSecondaryIndexInfo: Codable, Equatable {
    public var indexName: IndexName?
    public var keySchema: KeySchema?
    public var projection: Projection?

    public init(indexName: IndexName? = nil,
                keySchema: KeySchema? = nil,
                projection: Projection? = nil) {
        self.indexName = indexName
        self.keySchema = keySchema
        self.projection = projection
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case keySchema = "KeySchema"
        case projection = "Projection"
    }

    public func validate() throws {
        try indexName?.validateAsIndexName()
        try keySchema?.validateAsKeySchema()
        try projection?.validate()
    }
}

public struct PointInTimeRecoveryDescription: Codable, Equatable {
    public var earliestRestorableDateTime: Date?
    public var latestRestorableDateTime: Date?
    public var pointInTimeRecoveryStatus: PointInTimeRecoveryStatus?

    public init(earliestRestorableDateTime: Date? = nil,
                latestRestorableDateTime: Date? = nil,
                pointInTimeRecoveryStatus: PointInTimeRecoveryStatus? = nil) {
        self.earliestRestorableDateTime = earliestRestorableDateTime
        self.latestRestorableDateTime = latestRestorableDateTime
        self.pointInTimeRecoveryStatus = pointInTimeRecoveryStatus
    }

    enum CodingKeys: String, CodingKey {
        case earliestRestorableDateTime = "EarliestRestorableDateTime"
        case latestRestorableDateTime = "LatestRestorableDateTime"
        case pointInTimeRecoveryStatus = "PointInTimeRecoveryStatus"
    }

    public func validate() throws {
    }
}

public struct PointInTimeRecoverySpecification: Codable, Equatable {
    public var pointInTimeRecoveryEnabled: BooleanObject

    public init(pointInTimeRecoveryEnabled: BooleanObject) {
        self.pointInTimeRecoveryEnabled = pointInTimeRecoveryEnabled
    }

    enum CodingKeys: String, CodingKey {
        case pointInTimeRecoveryEnabled = "PointInTimeRecoveryEnabled"
    }

    public func validate() throws {
    }
}

public struct PointInTimeRecoveryUnavailableException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Projection: Codable, Equatable {
    public var nonKeyAttributes: NonKeyAttributeNameList?
    public var projectionType: ProjectionType?

    public init(nonKeyAttributes: NonKeyAttributeNameList? = nil,
                projectionType: ProjectionType? = nil) {
        self.nonKeyAttributes = nonKeyAttributes
        self.projectionType = projectionType
    }

    enum CodingKeys: String, CodingKey {
        case nonKeyAttributes = "NonKeyAttributes"
        case projectionType = "ProjectionType"
    }

    public func validate() throws {
        try nonKeyAttributes?.validateAsNonKeyAttributeNameList()
    }
}

public struct ProvisionedThroughput: Codable, Equatable {
    public var readCapacityUnits: PositiveLongObject
    public var writeCapacityUnits: PositiveLongObject

    public init(readCapacityUnits: PositiveLongObject,
                writeCapacityUnits: PositiveLongObject) {
        self.readCapacityUnits = readCapacityUnits
        self.writeCapacityUnits = writeCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case readCapacityUnits = "ReadCapacityUnits"
        case writeCapacityUnits = "WriteCapacityUnits"
    }

    public func validate() throws {
        try readCapacityUnits.validateAsPositiveLongObject()
        try writeCapacityUnits.validateAsPositiveLongObject()
    }
}

public struct ProvisionedThroughputDescription: Codable, Equatable {
    public var lastDecreaseDateTime: Date?
    public var lastIncreaseDateTime: Date?
    public var numberOfDecreasesToday: PositiveLongObject?
    public var readCapacityUnits: PositiveLongObject?
    public var writeCapacityUnits: PositiveLongObject?

    public init(lastDecreaseDateTime: Date? = nil,
                lastIncreaseDateTime: Date? = nil,
                numberOfDecreasesToday: PositiveLongObject? = nil,
                readCapacityUnits: PositiveLongObject? = nil,
                writeCapacityUnits: PositiveLongObject? = nil) {
        self.lastDecreaseDateTime = lastDecreaseDateTime
        self.lastIncreaseDateTime = lastIncreaseDateTime
        self.numberOfDecreasesToday = numberOfDecreasesToday
        self.readCapacityUnits = readCapacityUnits
        self.writeCapacityUnits = writeCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case lastDecreaseDateTime = "LastDecreaseDateTime"
        case lastIncreaseDateTime = "LastIncreaseDateTime"
        case numberOfDecreasesToday = "NumberOfDecreasesToday"
        case readCapacityUnits = "ReadCapacityUnits"
        case writeCapacityUnits = "WriteCapacityUnits"
    }

    public func validate() throws {
        try numberOfDecreasesToday?.validateAsPositiveLongObject()
        try readCapacityUnits?.validateAsPositiveLongObject()
        try writeCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct ProvisionedThroughputExceededException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PutItemInput: Codable, Equatable {
    public var conditionExpression: ConditionExpression?
    public var conditionalOperator: ConditionalOperator?
    public var expected: ExpectedAttributeMap?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var expressionAttributeValues: ExpressionAttributeValueMap?
    public var item: PutItemInputAttributeMap
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var returnItemCollectionMetrics: ReturnItemCollectionMetrics?
    public var returnValues: ReturnValue?
    public var tableName: TableName

    public init(conditionExpression: ConditionExpression? = nil,
                conditionalOperator: ConditionalOperator? = nil,
                expected: ExpectedAttributeMap? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                expressionAttributeValues: ExpressionAttributeValueMap? = nil,
                item: PutItemInputAttributeMap,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                returnItemCollectionMetrics: ReturnItemCollectionMetrics? = nil,
                returnValues: ReturnValue? = nil,
                tableName: TableName) {
        self.conditionExpression = conditionExpression
        self.conditionalOperator = conditionalOperator
        self.expected = expected
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.item = item
        self.returnConsumedCapacity = returnConsumedCapacity
        self.returnItemCollectionMetrics = returnItemCollectionMetrics
        self.returnValues = returnValues
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case conditionExpression = "ConditionExpression"
        case conditionalOperator = "ConditionalOperator"
        case expected = "Expected"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case item = "Item"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case returnItemCollectionMetrics = "ReturnItemCollectionMetrics"
        case returnValues = "ReturnValues"
        case tableName = "TableName"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct PutItemOutput: Codable, Equatable {
    public var attributes: AttributeMap?
    public var consumedCapacity: ConsumedCapacity?
    public var itemCollectionMetrics: ItemCollectionMetrics?

    public init(attributes: AttributeMap? = nil,
                consumedCapacity: ConsumedCapacity? = nil,
                itemCollectionMetrics: ItemCollectionMetrics? = nil) {
        self.attributes = attributes
        self.consumedCapacity = consumedCapacity
        self.itemCollectionMetrics = itemCollectionMetrics
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case consumedCapacity = "ConsumedCapacity"
        case itemCollectionMetrics = "ItemCollectionMetrics"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
        try itemCollectionMetrics?.validate()
    }
}

public struct PutRequest: Codable, Equatable {
    public var item: PutItemInputAttributeMap

    public init(item: PutItemInputAttributeMap) {
        self.item = item
    }

    enum CodingKeys: String, CodingKey {
        case item = "Item"
    }

    public func validate() throws {
    }
}

public struct QueryInput: Codable, Equatable {
    public var attributesToGet: AttributeNameList?
    public var conditionalOperator: ConditionalOperator?
    public var consistentRead: ConsistentRead?
    public var exclusiveStartKey: Key?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var expressionAttributeValues: ExpressionAttributeValueMap?
    public var filterExpression: ConditionExpression?
    public var indexName: IndexName?
    public var keyConditionExpression: KeyExpression?
    public var keyConditions: KeyConditions?
    public var limit: PositiveIntegerObject?
    public var projectionExpression: ProjectionExpression?
    public var queryFilter: FilterConditionMap?
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var scanIndexForward: BooleanObject?
    public var select: Select?
    public var tableName: TableName

    public init(attributesToGet: AttributeNameList? = nil,
                conditionalOperator: ConditionalOperator? = nil,
                consistentRead: ConsistentRead? = nil,
                exclusiveStartKey: Key? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                expressionAttributeValues: ExpressionAttributeValueMap? = nil,
                filterExpression: ConditionExpression? = nil,
                indexName: IndexName? = nil,
                keyConditionExpression: KeyExpression? = nil,
                keyConditions: KeyConditions? = nil,
                limit: PositiveIntegerObject? = nil,
                projectionExpression: ProjectionExpression? = nil,
                queryFilter: FilterConditionMap? = nil,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                scanIndexForward: BooleanObject? = nil,
                select: Select? = nil,
                tableName: TableName) {
        self.attributesToGet = attributesToGet
        self.conditionalOperator = conditionalOperator
        self.consistentRead = consistentRead
        self.exclusiveStartKey = exclusiveStartKey
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.filterExpression = filterExpression
        self.indexName = indexName
        self.keyConditionExpression = keyConditionExpression
        self.keyConditions = keyConditions
        self.limit = limit
        self.projectionExpression = projectionExpression
        self.queryFilter = queryFilter
        self.returnConsumedCapacity = returnConsumedCapacity
        self.scanIndexForward = scanIndexForward
        self.select = select
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case conditionalOperator = "ConditionalOperator"
        case consistentRead = "ConsistentRead"
        case exclusiveStartKey = "ExclusiveStartKey"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case filterExpression = "FilterExpression"
        case indexName = "IndexName"
        case keyConditionExpression = "KeyConditionExpression"
        case keyConditions = "KeyConditions"
        case limit = "Limit"
        case projectionExpression = "ProjectionExpression"
        case queryFilter = "QueryFilter"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case scanIndexForward = "ScanIndexForward"
        case select = "Select"
        case tableName = "TableName"
    }

    public func validate() throws {
        try attributesToGet?.validateAsAttributeNameList()
        try indexName?.validateAsIndexName()
        try limit?.validateAsPositiveIntegerObject()
        try tableName.validateAsTableName()
    }
}

public struct QueryOutput: Codable, Equatable {
    public var consumedCapacity: ConsumedCapacity?
    public var count: Integer?
    public var items: ItemList?
    public var lastEvaluatedKey: Key?
    public var scannedCount: Integer?

    public init(consumedCapacity: ConsumedCapacity? = nil,
                count: Integer? = nil,
                items: ItemList? = nil,
                lastEvaluatedKey: Key? = nil,
                scannedCount: Integer? = nil) {
        self.consumedCapacity = consumedCapacity
        self.count = count
        self.items = items
        self.lastEvaluatedKey = lastEvaluatedKey
        self.scannedCount = scannedCount
    }

    enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case count = "Count"
        case items = "Items"
        case lastEvaluatedKey = "LastEvaluatedKey"
        case scannedCount = "ScannedCount"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
    }
}

public struct Replica: Codable, Equatable {
    public var regionName: RegionName?

    public init(regionName: RegionName? = nil) {
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
    }

    public func validate() throws {
    }
}

public struct ReplicaAlreadyExistsException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ReplicaDescription: Codable, Equatable {
    public var regionName: RegionName?

    public init(regionName: RegionName? = nil) {
        self.regionName = regionName
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
    }

    public func validate() throws {
    }
}

public struct ReplicaGlobalSecondaryIndexSettingsDescription: Codable, Equatable {
    public var indexName: IndexName
    public var indexStatus: IndexStatus?
    public var provisionedReadCapacityAutoScalingSettings: AutoScalingSettingsDescription?
    public var provisionedReadCapacityUnits: PositiveLongObject?
    public var provisionedWriteCapacityAutoScalingSettings: AutoScalingSettingsDescription?
    public var provisionedWriteCapacityUnits: PositiveLongObject?

    public init(indexName: IndexName,
                indexStatus: IndexStatus? = nil,
                provisionedReadCapacityAutoScalingSettings: AutoScalingSettingsDescription? = nil,
                provisionedReadCapacityUnits: PositiveLongObject? = nil,
                provisionedWriteCapacityAutoScalingSettings: AutoScalingSettingsDescription? = nil,
                provisionedWriteCapacityUnits: PositiveLongObject? = nil) {
        self.indexName = indexName
        self.indexStatus = indexStatus
        self.provisionedReadCapacityAutoScalingSettings = provisionedReadCapacityAutoScalingSettings
        self.provisionedReadCapacityUnits = provisionedReadCapacityUnits
        self.provisionedWriteCapacityAutoScalingSettings = provisionedWriteCapacityAutoScalingSettings
        self.provisionedWriteCapacityUnits = provisionedWriteCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case indexStatus = "IndexStatus"
        case provisionedReadCapacityAutoScalingSettings = "ProvisionedReadCapacityAutoScalingSettings"
        case provisionedReadCapacityUnits = "ProvisionedReadCapacityUnits"
        case provisionedWriteCapacityAutoScalingSettings = "ProvisionedWriteCapacityAutoScalingSettings"
        case provisionedWriteCapacityUnits = "ProvisionedWriteCapacityUnits"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try provisionedReadCapacityAutoScalingSettings?.validate()
        try provisionedReadCapacityUnits?.validateAsPositiveLongObject()
        try provisionedWriteCapacityAutoScalingSettings?.validate()
        try provisionedWriteCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct ReplicaGlobalSecondaryIndexSettingsUpdate: Codable, Equatable {
    public var indexName: IndexName
    public var provisionedReadCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate?
    public var provisionedReadCapacityUnits: PositiveLongObject?

    public init(indexName: IndexName,
                provisionedReadCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate? = nil,
                provisionedReadCapacityUnits: PositiveLongObject? = nil) {
        self.indexName = indexName
        self.provisionedReadCapacityAutoScalingSettingsUpdate = provisionedReadCapacityAutoScalingSettingsUpdate
        self.provisionedReadCapacityUnits = provisionedReadCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case provisionedReadCapacityAutoScalingSettingsUpdate = "ProvisionedReadCapacityAutoScalingSettingsUpdate"
        case provisionedReadCapacityUnits = "ProvisionedReadCapacityUnits"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try provisionedReadCapacityAutoScalingSettingsUpdate?.validate()
        try provisionedReadCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct ReplicaNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ReplicaSettingsDescription: Codable, Equatable {
    public var regionName: RegionName
    public var replicaGlobalSecondaryIndexSettings: ReplicaGlobalSecondaryIndexSettingsDescriptionList?
    public var replicaProvisionedReadCapacityAutoScalingSettings: AutoScalingSettingsDescription?
    public var replicaProvisionedReadCapacityUnits: PositiveLongObject?
    public var replicaProvisionedWriteCapacityAutoScalingSettings: AutoScalingSettingsDescription?
    public var replicaProvisionedWriteCapacityUnits: PositiveLongObject?
    public var replicaStatus: ReplicaStatus?

    public init(regionName: RegionName,
                replicaGlobalSecondaryIndexSettings: ReplicaGlobalSecondaryIndexSettingsDescriptionList? = nil,
                replicaProvisionedReadCapacityAutoScalingSettings: AutoScalingSettingsDescription? = nil,
                replicaProvisionedReadCapacityUnits: PositiveLongObject? = nil,
                replicaProvisionedWriteCapacityAutoScalingSettings: AutoScalingSettingsDescription? = nil,
                replicaProvisionedWriteCapacityUnits: PositiveLongObject? = nil,
                replicaStatus: ReplicaStatus? = nil) {
        self.regionName = regionName
        self.replicaGlobalSecondaryIndexSettings = replicaGlobalSecondaryIndexSettings
        self.replicaProvisionedReadCapacityAutoScalingSettings = replicaProvisionedReadCapacityAutoScalingSettings
        self.replicaProvisionedReadCapacityUnits = replicaProvisionedReadCapacityUnits
        self.replicaProvisionedWriteCapacityAutoScalingSettings = replicaProvisionedWriteCapacityAutoScalingSettings
        self.replicaProvisionedWriteCapacityUnits = replicaProvisionedWriteCapacityUnits
        self.replicaStatus = replicaStatus
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
        case replicaGlobalSecondaryIndexSettings = "ReplicaGlobalSecondaryIndexSettings"
        case replicaProvisionedReadCapacityAutoScalingSettings = "ReplicaProvisionedReadCapacityAutoScalingSettings"
        case replicaProvisionedReadCapacityUnits = "ReplicaProvisionedReadCapacityUnits"
        case replicaProvisionedWriteCapacityAutoScalingSettings = "ReplicaProvisionedWriteCapacityAutoScalingSettings"
        case replicaProvisionedWriteCapacityUnits = "ReplicaProvisionedWriteCapacityUnits"
        case replicaStatus = "ReplicaStatus"
    }

    public func validate() throws {
        try replicaProvisionedReadCapacityAutoScalingSettings?.validate()
        try replicaProvisionedReadCapacityUnits?.validateAsPositiveLongObject()
        try replicaProvisionedWriteCapacityAutoScalingSettings?.validate()
        try replicaProvisionedWriteCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct ReplicaSettingsUpdate: Codable, Equatable {
    public var regionName: RegionName
    public var replicaGlobalSecondaryIndexSettingsUpdate: ReplicaGlobalSecondaryIndexSettingsUpdateList?
    public var replicaProvisionedReadCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate?
    public var replicaProvisionedReadCapacityUnits: PositiveLongObject?

    public init(regionName: RegionName,
                replicaGlobalSecondaryIndexSettingsUpdate: ReplicaGlobalSecondaryIndexSettingsUpdateList? = nil,
                replicaProvisionedReadCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate? = nil,
                replicaProvisionedReadCapacityUnits: PositiveLongObject? = nil) {
        self.regionName = regionName
        self.replicaGlobalSecondaryIndexSettingsUpdate = replicaGlobalSecondaryIndexSettingsUpdate
        self.replicaProvisionedReadCapacityAutoScalingSettingsUpdate = replicaProvisionedReadCapacityAutoScalingSettingsUpdate
        self.replicaProvisionedReadCapacityUnits = replicaProvisionedReadCapacityUnits
    }

    enum CodingKeys: String, CodingKey {
        case regionName = "RegionName"
        case replicaGlobalSecondaryIndexSettingsUpdate = "ReplicaGlobalSecondaryIndexSettingsUpdate"
        case replicaProvisionedReadCapacityAutoScalingSettingsUpdate = "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"
        case replicaProvisionedReadCapacityUnits = "ReplicaProvisionedReadCapacityUnits"
    }

    public func validate() throws {
        try replicaGlobalSecondaryIndexSettingsUpdate?.validateAsReplicaGlobalSecondaryIndexSettingsUpdateList()
        try replicaProvisionedReadCapacityAutoScalingSettingsUpdate?.validate()
        try replicaProvisionedReadCapacityUnits?.validateAsPositiveLongObject()
    }
}

public struct ReplicaUpdate: Codable, Equatable {
    public var create: CreateReplicaAction?
    public var delete: DeleteReplicaAction?

    public init(create: CreateReplicaAction? = nil,
                delete: DeleteReplicaAction? = nil) {
        self.create = create
        self.delete = delete
    }

    enum CodingKeys: String, CodingKey {
        case create = "Create"
        case delete = "Delete"
    }

    public func validate() throws {
        try create?.validate()
        try delete?.validate()
    }
}

public struct ResourceInUseException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RestoreSummary: Codable, Equatable {
    public var restoreDateTime: Date
    public var restoreInProgress: RestoreInProgress
    public var sourceBackupArn: BackupArn?
    public var sourceTableArn: TableArn?

    public init(restoreDateTime: Date,
                restoreInProgress: RestoreInProgress,
                sourceBackupArn: BackupArn? = nil,
                sourceTableArn: TableArn? = nil) {
        self.restoreDateTime = restoreDateTime
        self.restoreInProgress = restoreInProgress
        self.sourceBackupArn = sourceBackupArn
        self.sourceTableArn = sourceTableArn
    }

    enum CodingKeys: String, CodingKey {
        case restoreDateTime = "RestoreDateTime"
        case restoreInProgress = "RestoreInProgress"
        case sourceBackupArn = "SourceBackupArn"
        case sourceTableArn = "SourceTableArn"
    }

    public func validate() throws {
        try sourceBackupArn?.validateAsBackupArn()
    }
}

public struct RestoreTableFromBackupInput: Codable, Equatable {
    public var backupArn: BackupArn
    public var targetTableName: TableName

    public init(backupArn: BackupArn,
                targetTableName: TableName) {
        self.backupArn = backupArn
        self.targetTableName = targetTableName
    }

    enum CodingKeys: String, CodingKey {
        case backupArn = "BackupArn"
        case targetTableName = "TargetTableName"
    }

    public func validate() throws {
        try backupArn.validateAsBackupArn()
        try targetTableName.validateAsTableName()
    }
}

public struct RestoreTableFromBackupOutput: Codable, Equatable {
    public var tableDescription: TableDescription?

    public init(tableDescription: TableDescription? = nil) {
        self.tableDescription = tableDescription
    }

    enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public func validate() throws {
        try tableDescription?.validate()
    }
}

public struct RestoreTableToPointInTimeInput: Codable, Equatable {
    public var restoreDateTime: Date?
    public var sourceTableName: TableName
    public var targetTableName: TableName
    public var useLatestRestorableTime: BooleanObject?

    public init(restoreDateTime: Date? = nil,
                sourceTableName: TableName,
                targetTableName: TableName,
                useLatestRestorableTime: BooleanObject? = nil) {
        self.restoreDateTime = restoreDateTime
        self.sourceTableName = sourceTableName
        self.targetTableName = targetTableName
        self.useLatestRestorableTime = useLatestRestorableTime
    }

    enum CodingKeys: String, CodingKey {
        case restoreDateTime = "RestoreDateTime"
        case sourceTableName = "SourceTableName"
        case targetTableName = "TargetTableName"
        case useLatestRestorableTime = "UseLatestRestorableTime"
    }

    public func validate() throws {
        try sourceTableName.validateAsTableName()
        try targetTableName.validateAsTableName()
    }
}

public struct RestoreTableToPointInTimeOutput: Codable, Equatable {
    public var tableDescription: TableDescription?

    public init(tableDescription: TableDescription? = nil) {
        self.tableDescription = tableDescription
    }

    enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public func validate() throws {
        try tableDescription?.validate()
    }
}

public struct SSEDescription: Codable, Equatable {
    public var kMSMasterKeyArn: KMSMasterKeyArn?
    public var sSEType: SSEType?
    public var status: SSEStatus?

    public init(kMSMasterKeyArn: KMSMasterKeyArn? = nil,
                sSEType: SSEType? = nil,
                status: SSEStatus? = nil) {
        self.kMSMasterKeyArn = kMSMasterKeyArn
        self.sSEType = sSEType
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case kMSMasterKeyArn = "KMSMasterKeyArn"
        case sSEType = "SSEType"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct SSESpecification: Codable, Equatable {
    public var enabled: SSEEnabled?
    public var kMSMasterKeyId: KMSMasterKeyId?
    public var sSEType: SSEType?

    public init(enabled: SSEEnabled? = nil,
                kMSMasterKeyId: KMSMasterKeyId? = nil,
                sSEType: SSEType? = nil) {
        self.enabled = enabled
        self.kMSMasterKeyId = kMSMasterKeyId
        self.sSEType = sSEType
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case kMSMasterKeyId = "KMSMasterKeyId"
        case sSEType = "SSEType"
    }

    public func validate() throws {
    }
}

public struct ScanInput: Codable, Equatable {
    public var attributesToGet: AttributeNameList?
    public var conditionalOperator: ConditionalOperator?
    public var consistentRead: ConsistentRead?
    public var exclusiveStartKey: Key?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var expressionAttributeValues: ExpressionAttributeValueMap?
    public var filterExpression: ConditionExpression?
    public var indexName: IndexName?
    public var limit: PositiveIntegerObject?
    public var projectionExpression: ProjectionExpression?
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var scanFilter: FilterConditionMap?
    public var segment: ScanSegment?
    public var select: Select?
    public var tableName: TableName
    public var totalSegments: ScanTotalSegments?

    public init(attributesToGet: AttributeNameList? = nil,
                conditionalOperator: ConditionalOperator? = nil,
                consistentRead: ConsistentRead? = nil,
                exclusiveStartKey: Key? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                expressionAttributeValues: ExpressionAttributeValueMap? = nil,
                filterExpression: ConditionExpression? = nil,
                indexName: IndexName? = nil,
                limit: PositiveIntegerObject? = nil,
                projectionExpression: ProjectionExpression? = nil,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                scanFilter: FilterConditionMap? = nil,
                segment: ScanSegment? = nil,
                select: Select? = nil,
                tableName: TableName,
                totalSegments: ScanTotalSegments? = nil) {
        self.attributesToGet = attributesToGet
        self.conditionalOperator = conditionalOperator
        self.consistentRead = consistentRead
        self.exclusiveStartKey = exclusiveStartKey
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.filterExpression = filterExpression
        self.indexName = indexName
        self.limit = limit
        self.projectionExpression = projectionExpression
        self.returnConsumedCapacity = returnConsumedCapacity
        self.scanFilter = scanFilter
        self.segment = segment
        self.select = select
        self.tableName = tableName
        self.totalSegments = totalSegments
    }

    enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case conditionalOperator = "ConditionalOperator"
        case consistentRead = "ConsistentRead"
        case exclusiveStartKey = "ExclusiveStartKey"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case filterExpression = "FilterExpression"
        case indexName = "IndexName"
        case limit = "Limit"
        case projectionExpression = "ProjectionExpression"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case scanFilter = "ScanFilter"
        case segment = "Segment"
        case select = "Select"
        case tableName = "TableName"
        case totalSegments = "TotalSegments"
    }

    public func validate() throws {
        try attributesToGet?.validateAsAttributeNameList()
        try indexName?.validateAsIndexName()
        try limit?.validateAsPositiveIntegerObject()
        try segment?.validateAsScanSegment()
        try tableName.validateAsTableName()
        try totalSegments?.validateAsScanTotalSegments()
    }
}

public struct ScanOutput: Codable, Equatable {
    public var consumedCapacity: ConsumedCapacity?
    public var count: Integer?
    public var items: ItemList?
    public var lastEvaluatedKey: Key?
    public var scannedCount: Integer?

    public init(consumedCapacity: ConsumedCapacity? = nil,
                count: Integer? = nil,
                items: ItemList? = nil,
                lastEvaluatedKey: Key? = nil,
                scannedCount: Integer? = nil) {
        self.consumedCapacity = consumedCapacity
        self.count = count
        self.items = items
        self.lastEvaluatedKey = lastEvaluatedKey
        self.scannedCount = scannedCount
    }

    enum CodingKeys: String, CodingKey {
        case consumedCapacity = "ConsumedCapacity"
        case count = "Count"
        case items = "Items"
        case lastEvaluatedKey = "LastEvaluatedKey"
        case scannedCount = "ScannedCount"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
    }
}

public struct SourceTableDetails: Codable, Equatable {
    public var itemCount: ItemCount?
    public var keySchema: KeySchema
    public var provisionedThroughput: ProvisionedThroughput
    public var tableArn: TableArn?
    public var tableCreationDateTime: TableCreationDateTime
    public var tableId: TableId
    public var tableName: TableName
    public var tableSizeBytes: Long?

    public init(itemCount: ItemCount? = nil,
                keySchema: KeySchema,
                provisionedThroughput: ProvisionedThroughput,
                tableArn: TableArn? = nil,
                tableCreationDateTime: TableCreationDateTime,
                tableId: TableId,
                tableName: TableName,
                tableSizeBytes: Long? = nil) {
        self.itemCount = itemCount
        self.keySchema = keySchema
        self.provisionedThroughput = provisionedThroughput
        self.tableArn = tableArn
        self.tableCreationDateTime = tableCreationDateTime
        self.tableId = tableId
        self.tableName = tableName
        self.tableSizeBytes = tableSizeBytes
    }

    enum CodingKeys: String, CodingKey {
        case itemCount = "ItemCount"
        case keySchema = "KeySchema"
        case provisionedThroughput = "ProvisionedThroughput"
        case tableArn = "TableArn"
        case tableCreationDateTime = "TableCreationDateTime"
        case tableId = "TableId"
        case tableName = "TableName"
        case tableSizeBytes = "TableSizeBytes"
    }

    public func validate() throws {
        try itemCount?.validateAsItemCount()
        try keySchema.validateAsKeySchema()
        try provisionedThroughput.validate()
        try tableId.validateAsTableId()
        try tableName.validateAsTableName()
    }
}

public struct SourceTableFeatureDetails: Codable, Equatable {
    public var globalSecondaryIndexes: GlobalSecondaryIndexes?
    public var localSecondaryIndexes: LocalSecondaryIndexes?
    public var sSEDescription: SSEDescription?
    public var streamDescription: StreamSpecification?
    public var timeToLiveDescription: TimeToLiveDescription?

    public init(globalSecondaryIndexes: GlobalSecondaryIndexes? = nil,
                localSecondaryIndexes: LocalSecondaryIndexes? = nil,
                sSEDescription: SSEDescription? = nil,
                streamDescription: StreamSpecification? = nil,
                timeToLiveDescription: TimeToLiveDescription? = nil) {
        self.globalSecondaryIndexes = globalSecondaryIndexes
        self.localSecondaryIndexes = localSecondaryIndexes
        self.sSEDescription = sSEDescription
        self.streamDescription = streamDescription
        self.timeToLiveDescription = timeToLiveDescription
    }

    enum CodingKeys: String, CodingKey {
        case globalSecondaryIndexes = "GlobalSecondaryIndexes"
        case localSecondaryIndexes = "LocalSecondaryIndexes"
        case sSEDescription = "SSEDescription"
        case streamDescription = "StreamDescription"
        case timeToLiveDescription = "TimeToLiveDescription"
    }

    public func validate() throws {
        try sSEDescription?.validate()
        try streamDescription?.validate()
        try timeToLiveDescription?.validate()
    }
}

public struct StreamSpecification: Codable, Equatable {
    public var streamEnabled: StreamEnabled?
    public var streamViewType: StreamViewType?

    public init(streamEnabled: StreamEnabled? = nil,
                streamViewType: StreamViewType? = nil) {
        self.streamEnabled = streamEnabled
        self.streamViewType = streamViewType
    }

    enum CodingKeys: String, CodingKey {
        case streamEnabled = "StreamEnabled"
        case streamViewType = "StreamViewType"
    }

    public func validate() throws {
    }
}

public struct TableAlreadyExistsException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TableDescription: Codable, Equatable {
    public var attributeDefinitions: AttributeDefinitions?
    public var creationDateTime: Date?
    public var globalSecondaryIndexes: GlobalSecondaryIndexDescriptionList?
    public var itemCount: Long?
    public var keySchema: KeySchema?
    public var latestStreamArn: StreamArn?
    public var latestStreamLabel: String?
    public var localSecondaryIndexes: LocalSecondaryIndexDescriptionList?
    public var provisionedThroughput: ProvisionedThroughputDescription?
    public var restoreSummary: RestoreSummary?
    public var sSEDescription: SSEDescription?
    public var streamSpecification: StreamSpecification?
    public var tableArn: String?
    public var tableId: TableId?
    public var tableName: TableName?
    public var tableSizeBytes: Long?
    public var tableStatus: TableStatus?

    public init(attributeDefinitions: AttributeDefinitions? = nil,
                creationDateTime: Date? = nil,
                globalSecondaryIndexes: GlobalSecondaryIndexDescriptionList? = nil,
                itemCount: Long? = nil,
                keySchema: KeySchema? = nil,
                latestStreamArn: StreamArn? = nil,
                latestStreamLabel: String? = nil,
                localSecondaryIndexes: LocalSecondaryIndexDescriptionList? = nil,
                provisionedThroughput: ProvisionedThroughputDescription? = nil,
                restoreSummary: RestoreSummary? = nil,
                sSEDescription: SSEDescription? = nil,
                streamSpecification: StreamSpecification? = nil,
                tableArn: String? = nil,
                tableId: TableId? = nil,
                tableName: TableName? = nil,
                tableSizeBytes: Long? = nil,
                tableStatus: TableStatus? = nil) {
        self.attributeDefinitions = attributeDefinitions
        self.creationDateTime = creationDateTime
        self.globalSecondaryIndexes = globalSecondaryIndexes
        self.itemCount = itemCount
        self.keySchema = keySchema
        self.latestStreamArn = latestStreamArn
        self.latestStreamLabel = latestStreamLabel
        self.localSecondaryIndexes = localSecondaryIndexes
        self.provisionedThroughput = provisionedThroughput
        self.restoreSummary = restoreSummary
        self.sSEDescription = sSEDescription
        self.streamSpecification = streamSpecification
        self.tableArn = tableArn
        self.tableId = tableId
        self.tableName = tableName
        self.tableSizeBytes = tableSizeBytes
        self.tableStatus = tableStatus
    }

    enum CodingKeys: String, CodingKey {
        case attributeDefinitions = "AttributeDefinitions"
        case creationDateTime = "CreationDateTime"
        case globalSecondaryIndexes = "GlobalSecondaryIndexes"
        case itemCount = "ItemCount"
        case keySchema = "KeySchema"
        case latestStreamArn = "LatestStreamArn"
        case latestStreamLabel = "LatestStreamLabel"
        case localSecondaryIndexes = "LocalSecondaryIndexes"
        case provisionedThroughput = "ProvisionedThroughput"
        case restoreSummary = "RestoreSummary"
        case sSEDescription = "SSEDescription"
        case streamSpecification = "StreamSpecification"
        case tableArn = "TableArn"
        case tableId = "TableId"
        case tableName = "TableName"
        case tableSizeBytes = "TableSizeBytes"
        case tableStatus = "TableStatus"
    }

    public func validate() throws {
        try keySchema?.validateAsKeySchema()
        try latestStreamArn?.validateAsStreamArn()
        try provisionedThroughput?.validate()
        try restoreSummary?.validate()
        try sSEDescription?.validate()
        try streamSpecification?.validate()
        try tableId?.validateAsTableId()
        try tableName?.validateAsTableName()
    }
}

public struct TableInUseException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TableNotFoundException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKeyString
    public var value: TagValueString

    public init(key: TagKeyString,
                value: TagValueString) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsTagKeyString()
        try value.validateAsTagValueString()
    }
}

public struct TagResourceInput: Codable, Equatable {
    public var resourceArn: ResourceArnString
    public var tags: TagList

    public init(resourceArn: ResourceArnString,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tags = "Tags"
    }

    public func validate() throws {
        try resourceArn.validateAsResourceArnString()
    }
}

public struct TimeToLiveDescription: Codable, Equatable {
    public var attributeName: TimeToLiveAttributeName?
    public var timeToLiveStatus: TimeToLiveStatus?

    public init(attributeName: TimeToLiveAttributeName? = nil,
                timeToLiveStatus: TimeToLiveStatus? = nil) {
        self.attributeName = attributeName
        self.timeToLiveStatus = timeToLiveStatus
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case timeToLiveStatus = "TimeToLiveStatus"
    }

    public func validate() throws {
        try attributeName?.validateAsTimeToLiveAttributeName()
    }
}

public struct TimeToLiveSpecification: Codable, Equatable {
    public var attributeName: TimeToLiveAttributeName
    public var enabled: TimeToLiveEnabled

    public init(attributeName: TimeToLiveAttributeName,
                enabled: TimeToLiveEnabled) {
        self.attributeName = attributeName
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case enabled = "Enabled"
    }

    public func validate() throws {
        try attributeName.validateAsTimeToLiveAttributeName()
    }
}

public struct UntagResourceInput: Codable, Equatable {
    public var resourceArn: ResourceArnString
    public var tagKeys: TagKeyList

    public init(resourceArn: ResourceArnString,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
        try resourceArn.validateAsResourceArnString()
    }
}

public struct UpdateContinuousBackupsInput: Codable, Equatable {
    public var pointInTimeRecoverySpecification: PointInTimeRecoverySpecification
    public var tableName: TableName

    public init(pointInTimeRecoverySpecification: PointInTimeRecoverySpecification,
                tableName: TableName) {
        self.pointInTimeRecoverySpecification = pointInTimeRecoverySpecification
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case pointInTimeRecoverySpecification = "PointInTimeRecoverySpecification"
        case tableName = "TableName"
    }

    public func validate() throws {
        try pointInTimeRecoverySpecification.validate()
        try tableName.validateAsTableName()
    }
}

public struct UpdateContinuousBackupsOutput: Codable, Equatable {
    public var continuousBackupsDescription: ContinuousBackupsDescription?

    public init(continuousBackupsDescription: ContinuousBackupsDescription? = nil) {
        self.continuousBackupsDescription = continuousBackupsDescription
    }

    enum CodingKeys: String, CodingKey {
        case continuousBackupsDescription = "ContinuousBackupsDescription"
    }

    public func validate() throws {
        try continuousBackupsDescription?.validate()
    }
}

public struct UpdateGlobalSecondaryIndexAction: Codable, Equatable {
    public var indexName: IndexName
    public var provisionedThroughput: ProvisionedThroughput

    public init(indexName: IndexName,
                provisionedThroughput: ProvisionedThroughput) {
        self.indexName = indexName
        self.provisionedThroughput = provisionedThroughput
    }

    enum CodingKeys: String, CodingKey {
        case indexName = "IndexName"
        case provisionedThroughput = "ProvisionedThroughput"
    }

    public func validate() throws {
        try indexName.validateAsIndexName()
        try provisionedThroughput.validate()
    }
}

public struct UpdateGlobalTableInput: Codable, Equatable {
    public var globalTableName: TableName
    public var replicaUpdates: ReplicaUpdateList

    public init(globalTableName: TableName,
                replicaUpdates: ReplicaUpdateList) {
        self.globalTableName = globalTableName
        self.replicaUpdates = replicaUpdates
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicaUpdates = "ReplicaUpdates"
    }

    public func validate() throws {
        try globalTableName.validateAsTableName()
    }
}

public struct UpdateGlobalTableOutput: Codable, Equatable {
    public var globalTableDescription: GlobalTableDescription?

    public init(globalTableDescription: GlobalTableDescription? = nil) {
        self.globalTableDescription = globalTableDescription
    }

    enum CodingKeys: String, CodingKey {
        case globalTableDescription = "GlobalTableDescription"
    }

    public func validate() throws {
        try globalTableDescription?.validate()
    }
}

public struct UpdateGlobalTableSettingsInput: Codable, Equatable {
    public var globalTableGlobalSecondaryIndexSettingsUpdate: GlobalTableGlobalSecondaryIndexSettingsUpdateList?
    public var globalTableName: TableName
    public var globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate?
    public var globalTableProvisionedWriteCapacityUnits: PositiveLongObject?
    public var replicaSettingsUpdate: ReplicaSettingsUpdateList?

    public init(globalTableGlobalSecondaryIndexSettingsUpdate: GlobalTableGlobalSecondaryIndexSettingsUpdateList? = nil,
                globalTableName: TableName,
                globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate? = nil,
                globalTableProvisionedWriteCapacityUnits: PositiveLongObject? = nil,
                replicaSettingsUpdate: ReplicaSettingsUpdateList? = nil) {
        self.globalTableGlobalSecondaryIndexSettingsUpdate = globalTableGlobalSecondaryIndexSettingsUpdate
        self.globalTableName = globalTableName
        self.globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
        self.globalTableProvisionedWriteCapacityUnits = globalTableProvisionedWriteCapacityUnits
        self.replicaSettingsUpdate = replicaSettingsUpdate
    }

    enum CodingKeys: String, CodingKey {
        case globalTableGlobalSecondaryIndexSettingsUpdate = "GlobalTableGlobalSecondaryIndexSettingsUpdate"
        case globalTableName = "GlobalTableName"
        case globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"
        case globalTableProvisionedWriteCapacityUnits = "GlobalTableProvisionedWriteCapacityUnits"
        case replicaSettingsUpdate = "ReplicaSettingsUpdate"
    }

    public func validate() throws {
        try globalTableGlobalSecondaryIndexSettingsUpdate?.validateAsGlobalTableGlobalSecondaryIndexSettingsUpdateList()
        try globalTableName.validateAsTableName()
        try globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate?.validate()
        try globalTableProvisionedWriteCapacityUnits?.validateAsPositiveLongObject()
        try replicaSettingsUpdate?.validateAsReplicaSettingsUpdateList()
    }
}

public struct UpdateGlobalTableSettingsOutput: Codable, Equatable {
    public var globalTableName: TableName?
    public var replicaSettings: ReplicaSettingsDescriptionList?

    public init(globalTableName: TableName? = nil,
                replicaSettings: ReplicaSettingsDescriptionList? = nil) {
        self.globalTableName = globalTableName
        self.replicaSettings = replicaSettings
    }

    enum CodingKeys: String, CodingKey {
        case globalTableName = "GlobalTableName"
        case replicaSettings = "ReplicaSettings"
    }

    public func validate() throws {
        try globalTableName?.validateAsTableName()
    }
}

public struct UpdateItemInput: Codable, Equatable {
    public var attributeUpdates: AttributeUpdates?
    public var conditionExpression: ConditionExpression?
    public var conditionalOperator: ConditionalOperator?
    public var expected: ExpectedAttributeMap?
    public var expressionAttributeNames: ExpressionAttributeNameMap?
    public var expressionAttributeValues: ExpressionAttributeValueMap?
    public var key: Key
    public var returnConsumedCapacity: ReturnConsumedCapacity?
    public var returnItemCollectionMetrics: ReturnItemCollectionMetrics?
    public var returnValues: ReturnValue?
    public var tableName: TableName
    public var updateExpression: UpdateExpression?

    public init(attributeUpdates: AttributeUpdates? = nil,
                conditionExpression: ConditionExpression? = nil,
                conditionalOperator: ConditionalOperator? = nil,
                expected: ExpectedAttributeMap? = nil,
                expressionAttributeNames: ExpressionAttributeNameMap? = nil,
                expressionAttributeValues: ExpressionAttributeValueMap? = nil,
                key: Key,
                returnConsumedCapacity: ReturnConsumedCapacity? = nil,
                returnItemCollectionMetrics: ReturnItemCollectionMetrics? = nil,
                returnValues: ReturnValue? = nil,
                tableName: TableName,
                updateExpression: UpdateExpression? = nil) {
        self.attributeUpdates = attributeUpdates
        self.conditionExpression = conditionExpression
        self.conditionalOperator = conditionalOperator
        self.expected = expected
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.key = key
        self.returnConsumedCapacity = returnConsumedCapacity
        self.returnItemCollectionMetrics = returnItemCollectionMetrics
        self.returnValues = returnValues
        self.tableName = tableName
        self.updateExpression = updateExpression
    }

    enum CodingKeys: String, CodingKey {
        case attributeUpdates = "AttributeUpdates"
        case conditionExpression = "ConditionExpression"
        case conditionalOperator = "ConditionalOperator"
        case expected = "Expected"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case key = "Key"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case returnItemCollectionMetrics = "ReturnItemCollectionMetrics"
        case returnValues = "ReturnValues"
        case tableName = "TableName"
        case updateExpression = "UpdateExpression"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
    }
}

public struct UpdateItemOutput: Codable, Equatable {
    public var attributes: AttributeMap?
    public var consumedCapacity: ConsumedCapacity?
    public var itemCollectionMetrics: ItemCollectionMetrics?

    public init(attributes: AttributeMap? = nil,
                consumedCapacity: ConsumedCapacity? = nil,
                itemCollectionMetrics: ItemCollectionMetrics? = nil) {
        self.attributes = attributes
        self.consumedCapacity = consumedCapacity
        self.itemCollectionMetrics = itemCollectionMetrics
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case consumedCapacity = "ConsumedCapacity"
        case itemCollectionMetrics = "ItemCollectionMetrics"
    }

    public func validate() throws {
        try consumedCapacity?.validate()
        try itemCollectionMetrics?.validate()
    }
}

public struct UpdateTableInput: Codable, Equatable {
    public var attributeDefinitions: AttributeDefinitions?
    public var globalSecondaryIndexUpdates: GlobalSecondaryIndexUpdateList?
    public var provisionedThroughput: ProvisionedThroughput?
    public var sSESpecification: SSESpecification?
    public var streamSpecification: StreamSpecification?
    public var tableName: TableName

    public init(attributeDefinitions: AttributeDefinitions? = nil,
                globalSecondaryIndexUpdates: GlobalSecondaryIndexUpdateList? = nil,
                provisionedThroughput: ProvisionedThroughput? = nil,
                sSESpecification: SSESpecification? = nil,
                streamSpecification: StreamSpecification? = nil,
                tableName: TableName) {
        self.attributeDefinitions = attributeDefinitions
        self.globalSecondaryIndexUpdates = globalSecondaryIndexUpdates
        self.provisionedThroughput = provisionedThroughput
        self.sSESpecification = sSESpecification
        self.streamSpecification = streamSpecification
        self.tableName = tableName
    }

    enum CodingKeys: String, CodingKey {
        case attributeDefinitions = "AttributeDefinitions"
        case globalSecondaryIndexUpdates = "GlobalSecondaryIndexUpdates"
        case provisionedThroughput = "ProvisionedThroughput"
        case sSESpecification = "SSESpecification"
        case streamSpecification = "StreamSpecification"
        case tableName = "TableName"
    }

    public func validate() throws {
        try provisionedThroughput?.validate()
        try sSESpecification?.validate()
        try streamSpecification?.validate()
        try tableName.validateAsTableName()
    }
}

public struct UpdateTableOutput: Codable, Equatable {
    public var tableDescription: TableDescription?

    public init(tableDescription: TableDescription? = nil) {
        self.tableDescription = tableDescription
    }

    enum CodingKeys: String, CodingKey {
        case tableDescription = "TableDescription"
    }

    public func validate() throws {
        try tableDescription?.validate()
    }
}

public struct UpdateTimeToLiveInput: Codable, Equatable {
    public var tableName: TableName
    public var timeToLiveSpecification: TimeToLiveSpecification

    public init(tableName: TableName,
                timeToLiveSpecification: TimeToLiveSpecification) {
        self.tableName = tableName
        self.timeToLiveSpecification = timeToLiveSpecification
    }

    enum CodingKeys: String, CodingKey {
        case tableName = "TableName"
        case timeToLiveSpecification = "TimeToLiveSpecification"
    }

    public func validate() throws {
        try tableName.validateAsTableName()
        try timeToLiveSpecification.validate()
    }
}

public struct UpdateTimeToLiveOutput: Codable, Equatable {
    public var timeToLiveSpecification: TimeToLiveSpecification?

    public init(timeToLiveSpecification: TimeToLiveSpecification? = nil) {
        self.timeToLiveSpecification = timeToLiveSpecification
    }

    enum CodingKeys: String, CodingKey {
        case timeToLiveSpecification = "TimeToLiveSpecification"
    }

    public func validate() throws {
        try timeToLiveSpecification?.validate()
    }
}

public struct WriteRequest: Codable, Equatable {
    public var deleteRequest: DeleteRequest?
    public var putRequest: PutRequest?

    public init(deleteRequest: DeleteRequest? = nil,
                putRequest: PutRequest? = nil) {
        self.deleteRequest = deleteRequest
        self.putRequest = putRequest
    }

    enum CodingKeys: String, CodingKey {
        case deleteRequest = "DeleteRequest"
        case putRequest = "PutRequest"
    }

    public func validate() throws {
        try deleteRequest?.validate()
        try putRequest?.validate()
    }
}