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
// ThrowingRDSClient.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDS service that by default always throws from its methods.
 */
public struct ThrowingRDSClient: RDSClientProtocol {
    let error: HTTPClientError
    let addRoleToDBClusterAsyncOverride: RDSClientProtocol.AddRoleToDBClusterAsyncType?
    let addRoleToDBClusterSyncOverride: RDSClientProtocol.AddRoleToDBClusterSyncType?
    let addRoleToDBInstanceAsyncOverride: RDSClientProtocol.AddRoleToDBInstanceAsyncType?
    let addRoleToDBInstanceSyncOverride: RDSClientProtocol.AddRoleToDBInstanceSyncType?
    let addSourceIdentifierToSubscriptionAsyncOverride: RDSClientProtocol.AddSourceIdentifierToSubscriptionAsyncType?
    let addSourceIdentifierToSubscriptionSyncOverride: RDSClientProtocol.AddSourceIdentifierToSubscriptionSyncType?
    let addTagsToResourceAsyncOverride: RDSClientProtocol.AddTagsToResourceAsyncType?
    let addTagsToResourceSyncOverride: RDSClientProtocol.AddTagsToResourceSyncType?
    let applyPendingMaintenanceActionAsyncOverride: RDSClientProtocol.ApplyPendingMaintenanceActionAsyncType?
    let applyPendingMaintenanceActionSyncOverride: RDSClientProtocol.ApplyPendingMaintenanceActionSyncType?
    let authorizeDBSecurityGroupIngressAsyncOverride: RDSClientProtocol.AuthorizeDBSecurityGroupIngressAsyncType?
    let authorizeDBSecurityGroupIngressSyncOverride: RDSClientProtocol.AuthorizeDBSecurityGroupIngressSyncType?
    let backtrackDBClusterAsyncOverride: RDSClientProtocol.BacktrackDBClusterAsyncType?
    let backtrackDBClusterSyncOverride: RDSClientProtocol.BacktrackDBClusterSyncType?
    let cancelExportTaskAsyncOverride: RDSClientProtocol.CancelExportTaskAsyncType?
    let cancelExportTaskSyncOverride: RDSClientProtocol.CancelExportTaskSyncType?
    let copyDBClusterParameterGroupAsyncOverride: RDSClientProtocol.CopyDBClusterParameterGroupAsyncType?
    let copyDBClusterParameterGroupSyncOverride: RDSClientProtocol.CopyDBClusterParameterGroupSyncType?
    let copyDBClusterSnapshotAsyncOverride: RDSClientProtocol.CopyDBClusterSnapshotAsyncType?
    let copyDBClusterSnapshotSyncOverride: RDSClientProtocol.CopyDBClusterSnapshotSyncType?
    let copyDBParameterGroupAsyncOverride: RDSClientProtocol.CopyDBParameterGroupAsyncType?
    let copyDBParameterGroupSyncOverride: RDSClientProtocol.CopyDBParameterGroupSyncType?
    let copyDBSnapshotAsyncOverride: RDSClientProtocol.CopyDBSnapshotAsyncType?
    let copyDBSnapshotSyncOverride: RDSClientProtocol.CopyDBSnapshotSyncType?
    let copyOptionGroupAsyncOverride: RDSClientProtocol.CopyOptionGroupAsyncType?
    let copyOptionGroupSyncOverride: RDSClientProtocol.CopyOptionGroupSyncType?
    let createCustomAvailabilityZoneAsyncOverride: RDSClientProtocol.CreateCustomAvailabilityZoneAsyncType?
    let createCustomAvailabilityZoneSyncOverride: RDSClientProtocol.CreateCustomAvailabilityZoneSyncType?
    let createDBClusterAsyncOverride: RDSClientProtocol.CreateDBClusterAsyncType?
    let createDBClusterSyncOverride: RDSClientProtocol.CreateDBClusterSyncType?
    let createDBClusterEndpointAsyncOverride: RDSClientProtocol.CreateDBClusterEndpointAsyncType?
    let createDBClusterEndpointSyncOverride: RDSClientProtocol.CreateDBClusterEndpointSyncType?
    let createDBClusterParameterGroupAsyncOverride: RDSClientProtocol.CreateDBClusterParameterGroupAsyncType?
    let createDBClusterParameterGroupSyncOverride: RDSClientProtocol.CreateDBClusterParameterGroupSyncType?
    let createDBClusterSnapshotAsyncOverride: RDSClientProtocol.CreateDBClusterSnapshotAsyncType?
    let createDBClusterSnapshotSyncOverride: RDSClientProtocol.CreateDBClusterSnapshotSyncType?
    let createDBInstanceAsyncOverride: RDSClientProtocol.CreateDBInstanceAsyncType?
    let createDBInstanceSyncOverride: RDSClientProtocol.CreateDBInstanceSyncType?
    let createDBInstanceReadReplicaAsyncOverride: RDSClientProtocol.CreateDBInstanceReadReplicaAsyncType?
    let createDBInstanceReadReplicaSyncOverride: RDSClientProtocol.CreateDBInstanceReadReplicaSyncType?
    let createDBParameterGroupAsyncOverride: RDSClientProtocol.CreateDBParameterGroupAsyncType?
    let createDBParameterGroupSyncOverride: RDSClientProtocol.CreateDBParameterGroupSyncType?
    let createDBProxyAsyncOverride: RDSClientProtocol.CreateDBProxyAsyncType?
    let createDBProxySyncOverride: RDSClientProtocol.CreateDBProxySyncType?
    let createDBSecurityGroupAsyncOverride: RDSClientProtocol.CreateDBSecurityGroupAsyncType?
    let createDBSecurityGroupSyncOverride: RDSClientProtocol.CreateDBSecurityGroupSyncType?
    let createDBSnapshotAsyncOverride: RDSClientProtocol.CreateDBSnapshotAsyncType?
    let createDBSnapshotSyncOverride: RDSClientProtocol.CreateDBSnapshotSyncType?
    let createDBSubnetGroupAsyncOverride: RDSClientProtocol.CreateDBSubnetGroupAsyncType?
    let createDBSubnetGroupSyncOverride: RDSClientProtocol.CreateDBSubnetGroupSyncType?
    let createEventSubscriptionAsyncOverride: RDSClientProtocol.CreateEventSubscriptionAsyncType?
    let createEventSubscriptionSyncOverride: RDSClientProtocol.CreateEventSubscriptionSyncType?
    let createGlobalClusterAsyncOverride: RDSClientProtocol.CreateGlobalClusterAsyncType?
    let createGlobalClusterSyncOverride: RDSClientProtocol.CreateGlobalClusterSyncType?
    let createOptionGroupAsyncOverride: RDSClientProtocol.CreateOptionGroupAsyncType?
    let createOptionGroupSyncOverride: RDSClientProtocol.CreateOptionGroupSyncType?
    let deleteCustomAvailabilityZoneAsyncOverride: RDSClientProtocol.DeleteCustomAvailabilityZoneAsyncType?
    let deleteCustomAvailabilityZoneSyncOverride: RDSClientProtocol.DeleteCustomAvailabilityZoneSyncType?
    let deleteDBClusterAsyncOverride: RDSClientProtocol.DeleteDBClusterAsyncType?
    let deleteDBClusterSyncOverride: RDSClientProtocol.DeleteDBClusterSyncType?
    let deleteDBClusterEndpointAsyncOverride: RDSClientProtocol.DeleteDBClusterEndpointAsyncType?
    let deleteDBClusterEndpointSyncOverride: RDSClientProtocol.DeleteDBClusterEndpointSyncType?
    let deleteDBClusterParameterGroupAsyncOverride: RDSClientProtocol.DeleteDBClusterParameterGroupAsyncType?
    let deleteDBClusterParameterGroupSyncOverride: RDSClientProtocol.DeleteDBClusterParameterGroupSyncType?
    let deleteDBClusterSnapshotAsyncOverride: RDSClientProtocol.DeleteDBClusterSnapshotAsyncType?
    let deleteDBClusterSnapshotSyncOverride: RDSClientProtocol.DeleteDBClusterSnapshotSyncType?
    let deleteDBInstanceAsyncOverride: RDSClientProtocol.DeleteDBInstanceAsyncType?
    let deleteDBInstanceSyncOverride: RDSClientProtocol.DeleteDBInstanceSyncType?
    let deleteDBInstanceAutomatedBackupAsyncOverride: RDSClientProtocol.DeleteDBInstanceAutomatedBackupAsyncType?
    let deleteDBInstanceAutomatedBackupSyncOverride: RDSClientProtocol.DeleteDBInstanceAutomatedBackupSyncType?
    let deleteDBParameterGroupAsyncOverride: RDSClientProtocol.DeleteDBParameterGroupAsyncType?
    let deleteDBParameterGroupSyncOverride: RDSClientProtocol.DeleteDBParameterGroupSyncType?
    let deleteDBProxyAsyncOverride: RDSClientProtocol.DeleteDBProxyAsyncType?
    let deleteDBProxySyncOverride: RDSClientProtocol.DeleteDBProxySyncType?
    let deleteDBSecurityGroupAsyncOverride: RDSClientProtocol.DeleteDBSecurityGroupAsyncType?
    let deleteDBSecurityGroupSyncOverride: RDSClientProtocol.DeleteDBSecurityGroupSyncType?
    let deleteDBSnapshotAsyncOverride: RDSClientProtocol.DeleteDBSnapshotAsyncType?
    let deleteDBSnapshotSyncOverride: RDSClientProtocol.DeleteDBSnapshotSyncType?
    let deleteDBSubnetGroupAsyncOverride: RDSClientProtocol.DeleteDBSubnetGroupAsyncType?
    let deleteDBSubnetGroupSyncOverride: RDSClientProtocol.DeleteDBSubnetGroupSyncType?
    let deleteEventSubscriptionAsyncOverride: RDSClientProtocol.DeleteEventSubscriptionAsyncType?
    let deleteEventSubscriptionSyncOverride: RDSClientProtocol.DeleteEventSubscriptionSyncType?
    let deleteGlobalClusterAsyncOverride: RDSClientProtocol.DeleteGlobalClusterAsyncType?
    let deleteGlobalClusterSyncOverride: RDSClientProtocol.DeleteGlobalClusterSyncType?
    let deleteInstallationMediaAsyncOverride: RDSClientProtocol.DeleteInstallationMediaAsyncType?
    let deleteInstallationMediaSyncOverride: RDSClientProtocol.DeleteInstallationMediaSyncType?
    let deleteOptionGroupAsyncOverride: RDSClientProtocol.DeleteOptionGroupAsyncType?
    let deleteOptionGroupSyncOverride: RDSClientProtocol.DeleteOptionGroupSyncType?
    let deregisterDBProxyTargetsAsyncOverride: RDSClientProtocol.DeregisterDBProxyTargetsAsyncType?
    let deregisterDBProxyTargetsSyncOverride: RDSClientProtocol.DeregisterDBProxyTargetsSyncType?
    let describeAccountAttributesAsyncOverride: RDSClientProtocol.DescribeAccountAttributesAsyncType?
    let describeAccountAttributesSyncOverride: RDSClientProtocol.DescribeAccountAttributesSyncType?
    let describeCertificatesAsyncOverride: RDSClientProtocol.DescribeCertificatesAsyncType?
    let describeCertificatesSyncOverride: RDSClientProtocol.DescribeCertificatesSyncType?
    let describeCustomAvailabilityZonesAsyncOverride: RDSClientProtocol.DescribeCustomAvailabilityZonesAsyncType?
    let describeCustomAvailabilityZonesSyncOverride: RDSClientProtocol.DescribeCustomAvailabilityZonesSyncType?
    let describeDBClusterBacktracksAsyncOverride: RDSClientProtocol.DescribeDBClusterBacktracksAsyncType?
    let describeDBClusterBacktracksSyncOverride: RDSClientProtocol.DescribeDBClusterBacktracksSyncType?
    let describeDBClusterEndpointsAsyncOverride: RDSClientProtocol.DescribeDBClusterEndpointsAsyncType?
    let describeDBClusterEndpointsSyncOverride: RDSClientProtocol.DescribeDBClusterEndpointsSyncType?
    let describeDBClusterParameterGroupsAsyncOverride: RDSClientProtocol.DescribeDBClusterParameterGroupsAsyncType?
    let describeDBClusterParameterGroupsSyncOverride: RDSClientProtocol.DescribeDBClusterParameterGroupsSyncType?
    let describeDBClusterParametersAsyncOverride: RDSClientProtocol.DescribeDBClusterParametersAsyncType?
    let describeDBClusterParametersSyncOverride: RDSClientProtocol.DescribeDBClusterParametersSyncType?
    let describeDBClusterSnapshotAttributesAsyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotAttributesAsyncType?
    let describeDBClusterSnapshotAttributesSyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotAttributesSyncType?
    let describeDBClusterSnapshotsAsyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotsAsyncType?
    let describeDBClusterSnapshotsSyncOverride: RDSClientProtocol.DescribeDBClusterSnapshotsSyncType?
    let describeDBClustersAsyncOverride: RDSClientProtocol.DescribeDBClustersAsyncType?
    let describeDBClustersSyncOverride: RDSClientProtocol.DescribeDBClustersSyncType?
    let describeDBEngineVersionsAsyncOverride: RDSClientProtocol.DescribeDBEngineVersionsAsyncType?
    let describeDBEngineVersionsSyncOverride: RDSClientProtocol.DescribeDBEngineVersionsSyncType?
    let describeDBInstanceAutomatedBackupsAsyncOverride: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsAsyncType?
    let describeDBInstanceAutomatedBackupsSyncOverride: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsSyncType?
    let describeDBInstancesAsyncOverride: RDSClientProtocol.DescribeDBInstancesAsyncType?
    let describeDBInstancesSyncOverride: RDSClientProtocol.DescribeDBInstancesSyncType?
    let describeDBLogFilesAsyncOverride: RDSClientProtocol.DescribeDBLogFilesAsyncType?
    let describeDBLogFilesSyncOverride: RDSClientProtocol.DescribeDBLogFilesSyncType?
    let describeDBParameterGroupsAsyncOverride: RDSClientProtocol.DescribeDBParameterGroupsAsyncType?
    let describeDBParameterGroupsSyncOverride: RDSClientProtocol.DescribeDBParameterGroupsSyncType?
    let describeDBParametersAsyncOverride: RDSClientProtocol.DescribeDBParametersAsyncType?
    let describeDBParametersSyncOverride: RDSClientProtocol.DescribeDBParametersSyncType?
    let describeDBProxiesAsyncOverride: RDSClientProtocol.DescribeDBProxiesAsyncType?
    let describeDBProxiesSyncOverride: RDSClientProtocol.DescribeDBProxiesSyncType?
    let describeDBProxyTargetGroupsAsyncOverride: RDSClientProtocol.DescribeDBProxyTargetGroupsAsyncType?
    let describeDBProxyTargetGroupsSyncOverride: RDSClientProtocol.DescribeDBProxyTargetGroupsSyncType?
    let describeDBProxyTargetsAsyncOverride: RDSClientProtocol.DescribeDBProxyTargetsAsyncType?
    let describeDBProxyTargetsSyncOverride: RDSClientProtocol.DescribeDBProxyTargetsSyncType?
    let describeDBSecurityGroupsAsyncOverride: RDSClientProtocol.DescribeDBSecurityGroupsAsyncType?
    let describeDBSecurityGroupsSyncOverride: RDSClientProtocol.DescribeDBSecurityGroupsSyncType?
    let describeDBSnapshotAttributesAsyncOverride: RDSClientProtocol.DescribeDBSnapshotAttributesAsyncType?
    let describeDBSnapshotAttributesSyncOverride: RDSClientProtocol.DescribeDBSnapshotAttributesSyncType?
    let describeDBSnapshotsAsyncOverride: RDSClientProtocol.DescribeDBSnapshotsAsyncType?
    let describeDBSnapshotsSyncOverride: RDSClientProtocol.DescribeDBSnapshotsSyncType?
    let describeDBSubnetGroupsAsyncOverride: RDSClientProtocol.DescribeDBSubnetGroupsAsyncType?
    let describeDBSubnetGroupsSyncOverride: RDSClientProtocol.DescribeDBSubnetGroupsSyncType?
    let describeEngineDefaultClusterParametersAsyncOverride: RDSClientProtocol.DescribeEngineDefaultClusterParametersAsyncType?
    let describeEngineDefaultClusterParametersSyncOverride: RDSClientProtocol.DescribeEngineDefaultClusterParametersSyncType?
    let describeEngineDefaultParametersAsyncOverride: RDSClientProtocol.DescribeEngineDefaultParametersAsyncType?
    let describeEngineDefaultParametersSyncOverride: RDSClientProtocol.DescribeEngineDefaultParametersSyncType?
    let describeEventCategoriesAsyncOverride: RDSClientProtocol.DescribeEventCategoriesAsyncType?
    let describeEventCategoriesSyncOverride: RDSClientProtocol.DescribeEventCategoriesSyncType?
    let describeEventSubscriptionsAsyncOverride: RDSClientProtocol.DescribeEventSubscriptionsAsyncType?
    let describeEventSubscriptionsSyncOverride: RDSClientProtocol.DescribeEventSubscriptionsSyncType?
    let describeEventsAsyncOverride: RDSClientProtocol.DescribeEventsAsyncType?
    let describeEventsSyncOverride: RDSClientProtocol.DescribeEventsSyncType?
    let describeExportTasksAsyncOverride: RDSClientProtocol.DescribeExportTasksAsyncType?
    let describeExportTasksSyncOverride: RDSClientProtocol.DescribeExportTasksSyncType?
    let describeGlobalClustersAsyncOverride: RDSClientProtocol.DescribeGlobalClustersAsyncType?
    let describeGlobalClustersSyncOverride: RDSClientProtocol.DescribeGlobalClustersSyncType?
    let describeInstallationMediaAsyncOverride: RDSClientProtocol.DescribeInstallationMediaAsyncType?
    let describeInstallationMediaSyncOverride: RDSClientProtocol.DescribeInstallationMediaSyncType?
    let describeOptionGroupOptionsAsyncOverride: RDSClientProtocol.DescribeOptionGroupOptionsAsyncType?
    let describeOptionGroupOptionsSyncOverride: RDSClientProtocol.DescribeOptionGroupOptionsSyncType?
    let describeOptionGroupsAsyncOverride: RDSClientProtocol.DescribeOptionGroupsAsyncType?
    let describeOptionGroupsSyncOverride: RDSClientProtocol.DescribeOptionGroupsSyncType?
    let describeOrderableDBInstanceOptionsAsyncOverride: RDSClientProtocol.DescribeOrderableDBInstanceOptionsAsyncType?
    let describeOrderableDBInstanceOptionsSyncOverride: RDSClientProtocol.DescribeOrderableDBInstanceOptionsSyncType?
    let describePendingMaintenanceActionsAsyncOverride: RDSClientProtocol.DescribePendingMaintenanceActionsAsyncType?
    let describePendingMaintenanceActionsSyncOverride: RDSClientProtocol.DescribePendingMaintenanceActionsSyncType?
    let describeReservedDBInstancesAsyncOverride: RDSClientProtocol.DescribeReservedDBInstancesAsyncType?
    let describeReservedDBInstancesSyncOverride: RDSClientProtocol.DescribeReservedDBInstancesSyncType?
    let describeReservedDBInstancesOfferingsAsyncOverride: RDSClientProtocol.DescribeReservedDBInstancesOfferingsAsyncType?
    let describeReservedDBInstancesOfferingsSyncOverride: RDSClientProtocol.DescribeReservedDBInstancesOfferingsSyncType?
    let describeSourceRegionsAsyncOverride: RDSClientProtocol.DescribeSourceRegionsAsyncType?
    let describeSourceRegionsSyncOverride: RDSClientProtocol.DescribeSourceRegionsSyncType?
    let describeValidDBInstanceModificationsAsyncOverride: RDSClientProtocol.DescribeValidDBInstanceModificationsAsyncType?
    let describeValidDBInstanceModificationsSyncOverride: RDSClientProtocol.DescribeValidDBInstanceModificationsSyncType?
    let downloadDBLogFilePortionAsyncOverride: RDSClientProtocol.DownloadDBLogFilePortionAsyncType?
    let downloadDBLogFilePortionSyncOverride: RDSClientProtocol.DownloadDBLogFilePortionSyncType?
    let failoverDBClusterAsyncOverride: RDSClientProtocol.FailoverDBClusterAsyncType?
    let failoverDBClusterSyncOverride: RDSClientProtocol.FailoverDBClusterSyncType?
    let importInstallationMediaAsyncOverride: RDSClientProtocol.ImportInstallationMediaAsyncType?
    let importInstallationMediaSyncOverride: RDSClientProtocol.ImportInstallationMediaSyncType?
    let listTagsForResourceAsyncOverride: RDSClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: RDSClientProtocol.ListTagsForResourceSyncType?
    let modifyCertificatesAsyncOverride: RDSClientProtocol.ModifyCertificatesAsyncType?
    let modifyCertificatesSyncOverride: RDSClientProtocol.ModifyCertificatesSyncType?
    let modifyCurrentDBClusterCapacityAsyncOverride: RDSClientProtocol.ModifyCurrentDBClusterCapacityAsyncType?
    let modifyCurrentDBClusterCapacitySyncOverride: RDSClientProtocol.ModifyCurrentDBClusterCapacitySyncType?
    let modifyDBClusterAsyncOverride: RDSClientProtocol.ModifyDBClusterAsyncType?
    let modifyDBClusterSyncOverride: RDSClientProtocol.ModifyDBClusterSyncType?
    let modifyDBClusterEndpointAsyncOverride: RDSClientProtocol.ModifyDBClusterEndpointAsyncType?
    let modifyDBClusterEndpointSyncOverride: RDSClientProtocol.ModifyDBClusterEndpointSyncType?
    let modifyDBClusterParameterGroupAsyncOverride: RDSClientProtocol.ModifyDBClusterParameterGroupAsyncType?
    let modifyDBClusterParameterGroupSyncOverride: RDSClientProtocol.ModifyDBClusterParameterGroupSyncType?
    let modifyDBClusterSnapshotAttributeAsyncOverride: RDSClientProtocol.ModifyDBClusterSnapshotAttributeAsyncType?
    let modifyDBClusterSnapshotAttributeSyncOverride: RDSClientProtocol.ModifyDBClusterSnapshotAttributeSyncType?
    let modifyDBInstanceAsyncOverride: RDSClientProtocol.ModifyDBInstanceAsyncType?
    let modifyDBInstanceSyncOverride: RDSClientProtocol.ModifyDBInstanceSyncType?
    let modifyDBParameterGroupAsyncOverride: RDSClientProtocol.ModifyDBParameterGroupAsyncType?
    let modifyDBParameterGroupSyncOverride: RDSClientProtocol.ModifyDBParameterGroupSyncType?
    let modifyDBProxyAsyncOverride: RDSClientProtocol.ModifyDBProxyAsyncType?
    let modifyDBProxySyncOverride: RDSClientProtocol.ModifyDBProxySyncType?
    let modifyDBProxyTargetGroupAsyncOverride: RDSClientProtocol.ModifyDBProxyTargetGroupAsyncType?
    let modifyDBProxyTargetGroupSyncOverride: RDSClientProtocol.ModifyDBProxyTargetGroupSyncType?
    let modifyDBSnapshotAsyncOverride: RDSClientProtocol.ModifyDBSnapshotAsyncType?
    let modifyDBSnapshotSyncOverride: RDSClientProtocol.ModifyDBSnapshotSyncType?
    let modifyDBSnapshotAttributeAsyncOverride: RDSClientProtocol.ModifyDBSnapshotAttributeAsyncType?
    let modifyDBSnapshotAttributeSyncOverride: RDSClientProtocol.ModifyDBSnapshotAttributeSyncType?
    let modifyDBSubnetGroupAsyncOverride: RDSClientProtocol.ModifyDBSubnetGroupAsyncType?
    let modifyDBSubnetGroupSyncOverride: RDSClientProtocol.ModifyDBSubnetGroupSyncType?
    let modifyEventSubscriptionAsyncOverride: RDSClientProtocol.ModifyEventSubscriptionAsyncType?
    let modifyEventSubscriptionSyncOverride: RDSClientProtocol.ModifyEventSubscriptionSyncType?
    let modifyGlobalClusterAsyncOverride: RDSClientProtocol.ModifyGlobalClusterAsyncType?
    let modifyGlobalClusterSyncOverride: RDSClientProtocol.ModifyGlobalClusterSyncType?
    let modifyOptionGroupAsyncOverride: RDSClientProtocol.ModifyOptionGroupAsyncType?
    let modifyOptionGroupSyncOverride: RDSClientProtocol.ModifyOptionGroupSyncType?
    let promoteReadReplicaAsyncOverride: RDSClientProtocol.PromoteReadReplicaAsyncType?
    let promoteReadReplicaSyncOverride: RDSClientProtocol.PromoteReadReplicaSyncType?
    let promoteReadReplicaDBClusterAsyncOverride: RDSClientProtocol.PromoteReadReplicaDBClusterAsyncType?
    let promoteReadReplicaDBClusterSyncOverride: RDSClientProtocol.PromoteReadReplicaDBClusterSyncType?
    let purchaseReservedDBInstancesOfferingAsyncOverride: RDSClientProtocol.PurchaseReservedDBInstancesOfferingAsyncType?
    let purchaseReservedDBInstancesOfferingSyncOverride: RDSClientProtocol.PurchaseReservedDBInstancesOfferingSyncType?
    let rebootDBInstanceAsyncOverride: RDSClientProtocol.RebootDBInstanceAsyncType?
    let rebootDBInstanceSyncOverride: RDSClientProtocol.RebootDBInstanceSyncType?
    let registerDBProxyTargetsAsyncOverride: RDSClientProtocol.RegisterDBProxyTargetsAsyncType?
    let registerDBProxyTargetsSyncOverride: RDSClientProtocol.RegisterDBProxyTargetsSyncType?
    let removeFromGlobalClusterAsyncOverride: RDSClientProtocol.RemoveFromGlobalClusterAsyncType?
    let removeFromGlobalClusterSyncOverride: RDSClientProtocol.RemoveFromGlobalClusterSyncType?
    let removeRoleFromDBClusterAsyncOverride: RDSClientProtocol.RemoveRoleFromDBClusterAsyncType?
    let removeRoleFromDBClusterSyncOverride: RDSClientProtocol.RemoveRoleFromDBClusterSyncType?
    let removeRoleFromDBInstanceAsyncOverride: RDSClientProtocol.RemoveRoleFromDBInstanceAsyncType?
    let removeRoleFromDBInstanceSyncOverride: RDSClientProtocol.RemoveRoleFromDBInstanceSyncType?
    let removeSourceIdentifierFromSubscriptionAsyncOverride: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionAsyncType?
    let removeSourceIdentifierFromSubscriptionSyncOverride: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionSyncType?
    let removeTagsFromResourceAsyncOverride: RDSClientProtocol.RemoveTagsFromResourceAsyncType?
    let removeTagsFromResourceSyncOverride: RDSClientProtocol.RemoveTagsFromResourceSyncType?
    let resetDBClusterParameterGroupAsyncOverride: RDSClientProtocol.ResetDBClusterParameterGroupAsyncType?
    let resetDBClusterParameterGroupSyncOverride: RDSClientProtocol.ResetDBClusterParameterGroupSyncType?
    let resetDBParameterGroupAsyncOverride: RDSClientProtocol.ResetDBParameterGroupAsyncType?
    let resetDBParameterGroupSyncOverride: RDSClientProtocol.ResetDBParameterGroupSyncType?
    let restoreDBClusterFromS3AsyncOverride: RDSClientProtocol.RestoreDBClusterFromS3AsyncType?
    let restoreDBClusterFromS3SyncOverride: RDSClientProtocol.RestoreDBClusterFromS3SyncType?
    let restoreDBClusterFromSnapshotAsyncOverride: RDSClientProtocol.RestoreDBClusterFromSnapshotAsyncType?
    let restoreDBClusterFromSnapshotSyncOverride: RDSClientProtocol.RestoreDBClusterFromSnapshotSyncType?
    let restoreDBClusterToPointInTimeAsyncOverride: RDSClientProtocol.RestoreDBClusterToPointInTimeAsyncType?
    let restoreDBClusterToPointInTimeSyncOverride: RDSClientProtocol.RestoreDBClusterToPointInTimeSyncType?
    let restoreDBInstanceFromDBSnapshotAsyncOverride: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotAsyncType?
    let restoreDBInstanceFromDBSnapshotSyncOverride: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotSyncType?
    let restoreDBInstanceFromS3AsyncOverride: RDSClientProtocol.RestoreDBInstanceFromS3AsyncType?
    let restoreDBInstanceFromS3SyncOverride: RDSClientProtocol.RestoreDBInstanceFromS3SyncType?
    let restoreDBInstanceToPointInTimeAsyncOverride: RDSClientProtocol.RestoreDBInstanceToPointInTimeAsyncType?
    let restoreDBInstanceToPointInTimeSyncOverride: RDSClientProtocol.RestoreDBInstanceToPointInTimeSyncType?
    let revokeDBSecurityGroupIngressAsyncOverride: RDSClientProtocol.RevokeDBSecurityGroupIngressAsyncType?
    let revokeDBSecurityGroupIngressSyncOverride: RDSClientProtocol.RevokeDBSecurityGroupIngressSyncType?
    let startActivityStreamAsyncOverride: RDSClientProtocol.StartActivityStreamAsyncType?
    let startActivityStreamSyncOverride: RDSClientProtocol.StartActivityStreamSyncType?
    let startDBClusterAsyncOverride: RDSClientProtocol.StartDBClusterAsyncType?
    let startDBClusterSyncOverride: RDSClientProtocol.StartDBClusterSyncType?
    let startDBInstanceAsyncOverride: RDSClientProtocol.StartDBInstanceAsyncType?
    let startDBInstanceSyncOverride: RDSClientProtocol.StartDBInstanceSyncType?
    let startExportTaskAsyncOverride: RDSClientProtocol.StartExportTaskAsyncType?
    let startExportTaskSyncOverride: RDSClientProtocol.StartExportTaskSyncType?
    let stopActivityStreamAsyncOverride: RDSClientProtocol.StopActivityStreamAsyncType?
    let stopActivityStreamSyncOverride: RDSClientProtocol.StopActivityStreamSyncType?
    let stopDBClusterAsyncOverride: RDSClientProtocol.StopDBClusterAsyncType?
    let stopDBClusterSyncOverride: RDSClientProtocol.StopDBClusterSyncType?
    let stopDBInstanceAsyncOverride: RDSClientProtocol.StopDBInstanceAsyncType?
    let stopDBInstanceSyncOverride: RDSClientProtocol.StopDBInstanceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            addRoleToDBClusterAsync: RDSClientProtocol.AddRoleToDBClusterAsyncType? = nil,
            addRoleToDBClusterSync: RDSClientProtocol.AddRoleToDBClusterSyncType? = nil,
            addRoleToDBInstanceAsync: RDSClientProtocol.AddRoleToDBInstanceAsyncType? = nil,
            addRoleToDBInstanceSync: RDSClientProtocol.AddRoleToDBInstanceSyncType? = nil,
            addSourceIdentifierToSubscriptionAsync: RDSClientProtocol.AddSourceIdentifierToSubscriptionAsyncType? = nil,
            addSourceIdentifierToSubscriptionSync: RDSClientProtocol.AddSourceIdentifierToSubscriptionSyncType? = nil,
            addTagsToResourceAsync: RDSClientProtocol.AddTagsToResourceAsyncType? = nil,
            addTagsToResourceSync: RDSClientProtocol.AddTagsToResourceSyncType? = nil,
            applyPendingMaintenanceActionAsync: RDSClientProtocol.ApplyPendingMaintenanceActionAsyncType? = nil,
            applyPendingMaintenanceActionSync: RDSClientProtocol.ApplyPendingMaintenanceActionSyncType? = nil,
            authorizeDBSecurityGroupIngressAsync: RDSClientProtocol.AuthorizeDBSecurityGroupIngressAsyncType? = nil,
            authorizeDBSecurityGroupIngressSync: RDSClientProtocol.AuthorizeDBSecurityGroupIngressSyncType? = nil,
            backtrackDBClusterAsync: RDSClientProtocol.BacktrackDBClusterAsyncType? = nil,
            backtrackDBClusterSync: RDSClientProtocol.BacktrackDBClusterSyncType? = nil,
            cancelExportTaskAsync: RDSClientProtocol.CancelExportTaskAsyncType? = nil,
            cancelExportTaskSync: RDSClientProtocol.CancelExportTaskSyncType? = nil,
            copyDBClusterParameterGroupAsync: RDSClientProtocol.CopyDBClusterParameterGroupAsyncType? = nil,
            copyDBClusterParameterGroupSync: RDSClientProtocol.CopyDBClusterParameterGroupSyncType? = nil,
            copyDBClusterSnapshotAsync: RDSClientProtocol.CopyDBClusterSnapshotAsyncType? = nil,
            copyDBClusterSnapshotSync: RDSClientProtocol.CopyDBClusterSnapshotSyncType? = nil,
            copyDBParameterGroupAsync: RDSClientProtocol.CopyDBParameterGroupAsyncType? = nil,
            copyDBParameterGroupSync: RDSClientProtocol.CopyDBParameterGroupSyncType? = nil,
            copyDBSnapshotAsync: RDSClientProtocol.CopyDBSnapshotAsyncType? = nil,
            copyDBSnapshotSync: RDSClientProtocol.CopyDBSnapshotSyncType? = nil,
            copyOptionGroupAsync: RDSClientProtocol.CopyOptionGroupAsyncType? = nil,
            copyOptionGroupSync: RDSClientProtocol.CopyOptionGroupSyncType? = nil,
            createCustomAvailabilityZoneAsync: RDSClientProtocol.CreateCustomAvailabilityZoneAsyncType? = nil,
            createCustomAvailabilityZoneSync: RDSClientProtocol.CreateCustomAvailabilityZoneSyncType? = nil,
            createDBClusterAsync: RDSClientProtocol.CreateDBClusterAsyncType? = nil,
            createDBClusterSync: RDSClientProtocol.CreateDBClusterSyncType? = nil,
            createDBClusterEndpointAsync: RDSClientProtocol.CreateDBClusterEndpointAsyncType? = nil,
            createDBClusterEndpointSync: RDSClientProtocol.CreateDBClusterEndpointSyncType? = nil,
            createDBClusterParameterGroupAsync: RDSClientProtocol.CreateDBClusterParameterGroupAsyncType? = nil,
            createDBClusterParameterGroupSync: RDSClientProtocol.CreateDBClusterParameterGroupSyncType? = nil,
            createDBClusterSnapshotAsync: RDSClientProtocol.CreateDBClusterSnapshotAsyncType? = nil,
            createDBClusterSnapshotSync: RDSClientProtocol.CreateDBClusterSnapshotSyncType? = nil,
            createDBInstanceAsync: RDSClientProtocol.CreateDBInstanceAsyncType? = nil,
            createDBInstanceSync: RDSClientProtocol.CreateDBInstanceSyncType? = nil,
            createDBInstanceReadReplicaAsync: RDSClientProtocol.CreateDBInstanceReadReplicaAsyncType? = nil,
            createDBInstanceReadReplicaSync: RDSClientProtocol.CreateDBInstanceReadReplicaSyncType? = nil,
            createDBParameterGroupAsync: RDSClientProtocol.CreateDBParameterGroupAsyncType? = nil,
            createDBParameterGroupSync: RDSClientProtocol.CreateDBParameterGroupSyncType? = nil,
            createDBProxyAsync: RDSClientProtocol.CreateDBProxyAsyncType? = nil,
            createDBProxySync: RDSClientProtocol.CreateDBProxySyncType? = nil,
            createDBSecurityGroupAsync: RDSClientProtocol.CreateDBSecurityGroupAsyncType? = nil,
            createDBSecurityGroupSync: RDSClientProtocol.CreateDBSecurityGroupSyncType? = nil,
            createDBSnapshotAsync: RDSClientProtocol.CreateDBSnapshotAsyncType? = nil,
            createDBSnapshotSync: RDSClientProtocol.CreateDBSnapshotSyncType? = nil,
            createDBSubnetGroupAsync: RDSClientProtocol.CreateDBSubnetGroupAsyncType? = nil,
            createDBSubnetGroupSync: RDSClientProtocol.CreateDBSubnetGroupSyncType? = nil,
            createEventSubscriptionAsync: RDSClientProtocol.CreateEventSubscriptionAsyncType? = nil,
            createEventSubscriptionSync: RDSClientProtocol.CreateEventSubscriptionSyncType? = nil,
            createGlobalClusterAsync: RDSClientProtocol.CreateGlobalClusterAsyncType? = nil,
            createGlobalClusterSync: RDSClientProtocol.CreateGlobalClusterSyncType? = nil,
            createOptionGroupAsync: RDSClientProtocol.CreateOptionGroupAsyncType? = nil,
            createOptionGroupSync: RDSClientProtocol.CreateOptionGroupSyncType? = nil,
            deleteCustomAvailabilityZoneAsync: RDSClientProtocol.DeleteCustomAvailabilityZoneAsyncType? = nil,
            deleteCustomAvailabilityZoneSync: RDSClientProtocol.DeleteCustomAvailabilityZoneSyncType? = nil,
            deleteDBClusterAsync: RDSClientProtocol.DeleteDBClusterAsyncType? = nil,
            deleteDBClusterSync: RDSClientProtocol.DeleteDBClusterSyncType? = nil,
            deleteDBClusterEndpointAsync: RDSClientProtocol.DeleteDBClusterEndpointAsyncType? = nil,
            deleteDBClusterEndpointSync: RDSClientProtocol.DeleteDBClusterEndpointSyncType? = nil,
            deleteDBClusterParameterGroupAsync: RDSClientProtocol.DeleteDBClusterParameterGroupAsyncType? = nil,
            deleteDBClusterParameterGroupSync: RDSClientProtocol.DeleteDBClusterParameterGroupSyncType? = nil,
            deleteDBClusterSnapshotAsync: RDSClientProtocol.DeleteDBClusterSnapshotAsyncType? = nil,
            deleteDBClusterSnapshotSync: RDSClientProtocol.DeleteDBClusterSnapshotSyncType? = nil,
            deleteDBInstanceAsync: RDSClientProtocol.DeleteDBInstanceAsyncType? = nil,
            deleteDBInstanceSync: RDSClientProtocol.DeleteDBInstanceSyncType? = nil,
            deleteDBInstanceAutomatedBackupAsync: RDSClientProtocol.DeleteDBInstanceAutomatedBackupAsyncType? = nil,
            deleteDBInstanceAutomatedBackupSync: RDSClientProtocol.DeleteDBInstanceAutomatedBackupSyncType? = nil,
            deleteDBParameterGroupAsync: RDSClientProtocol.DeleteDBParameterGroupAsyncType? = nil,
            deleteDBParameterGroupSync: RDSClientProtocol.DeleteDBParameterGroupSyncType? = nil,
            deleteDBProxyAsync: RDSClientProtocol.DeleteDBProxyAsyncType? = nil,
            deleteDBProxySync: RDSClientProtocol.DeleteDBProxySyncType? = nil,
            deleteDBSecurityGroupAsync: RDSClientProtocol.DeleteDBSecurityGroupAsyncType? = nil,
            deleteDBSecurityGroupSync: RDSClientProtocol.DeleteDBSecurityGroupSyncType? = nil,
            deleteDBSnapshotAsync: RDSClientProtocol.DeleteDBSnapshotAsyncType? = nil,
            deleteDBSnapshotSync: RDSClientProtocol.DeleteDBSnapshotSyncType? = nil,
            deleteDBSubnetGroupAsync: RDSClientProtocol.DeleteDBSubnetGroupAsyncType? = nil,
            deleteDBSubnetGroupSync: RDSClientProtocol.DeleteDBSubnetGroupSyncType? = nil,
            deleteEventSubscriptionAsync: RDSClientProtocol.DeleteEventSubscriptionAsyncType? = nil,
            deleteEventSubscriptionSync: RDSClientProtocol.DeleteEventSubscriptionSyncType? = nil,
            deleteGlobalClusterAsync: RDSClientProtocol.DeleteGlobalClusterAsyncType? = nil,
            deleteGlobalClusterSync: RDSClientProtocol.DeleteGlobalClusterSyncType? = nil,
            deleteInstallationMediaAsync: RDSClientProtocol.DeleteInstallationMediaAsyncType? = nil,
            deleteInstallationMediaSync: RDSClientProtocol.DeleteInstallationMediaSyncType? = nil,
            deleteOptionGroupAsync: RDSClientProtocol.DeleteOptionGroupAsyncType? = nil,
            deleteOptionGroupSync: RDSClientProtocol.DeleteOptionGroupSyncType? = nil,
            deregisterDBProxyTargetsAsync: RDSClientProtocol.DeregisterDBProxyTargetsAsyncType? = nil,
            deregisterDBProxyTargetsSync: RDSClientProtocol.DeregisterDBProxyTargetsSyncType? = nil,
            describeAccountAttributesAsync: RDSClientProtocol.DescribeAccountAttributesAsyncType? = nil,
            describeAccountAttributesSync: RDSClientProtocol.DescribeAccountAttributesSyncType? = nil,
            describeCertificatesAsync: RDSClientProtocol.DescribeCertificatesAsyncType? = nil,
            describeCertificatesSync: RDSClientProtocol.DescribeCertificatesSyncType? = nil,
            describeCustomAvailabilityZonesAsync: RDSClientProtocol.DescribeCustomAvailabilityZonesAsyncType? = nil,
            describeCustomAvailabilityZonesSync: RDSClientProtocol.DescribeCustomAvailabilityZonesSyncType? = nil,
            describeDBClusterBacktracksAsync: RDSClientProtocol.DescribeDBClusterBacktracksAsyncType? = nil,
            describeDBClusterBacktracksSync: RDSClientProtocol.DescribeDBClusterBacktracksSyncType? = nil,
            describeDBClusterEndpointsAsync: RDSClientProtocol.DescribeDBClusterEndpointsAsyncType? = nil,
            describeDBClusterEndpointsSync: RDSClientProtocol.DescribeDBClusterEndpointsSyncType? = nil,
            describeDBClusterParameterGroupsAsync: RDSClientProtocol.DescribeDBClusterParameterGroupsAsyncType? = nil,
            describeDBClusterParameterGroupsSync: RDSClientProtocol.DescribeDBClusterParameterGroupsSyncType? = nil,
            describeDBClusterParametersAsync: RDSClientProtocol.DescribeDBClusterParametersAsyncType? = nil,
            describeDBClusterParametersSync: RDSClientProtocol.DescribeDBClusterParametersSyncType? = nil,
            describeDBClusterSnapshotAttributesAsync: RDSClientProtocol.DescribeDBClusterSnapshotAttributesAsyncType? = nil,
            describeDBClusterSnapshotAttributesSync: RDSClientProtocol.DescribeDBClusterSnapshotAttributesSyncType? = nil,
            describeDBClusterSnapshotsAsync: RDSClientProtocol.DescribeDBClusterSnapshotsAsyncType? = nil,
            describeDBClusterSnapshotsSync: RDSClientProtocol.DescribeDBClusterSnapshotsSyncType? = nil,
            describeDBClustersAsync: RDSClientProtocol.DescribeDBClustersAsyncType? = nil,
            describeDBClustersSync: RDSClientProtocol.DescribeDBClustersSyncType? = nil,
            describeDBEngineVersionsAsync: RDSClientProtocol.DescribeDBEngineVersionsAsyncType? = nil,
            describeDBEngineVersionsSync: RDSClientProtocol.DescribeDBEngineVersionsSyncType? = nil,
            describeDBInstanceAutomatedBackupsAsync: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsAsyncType? = nil,
            describeDBInstanceAutomatedBackupsSync: RDSClientProtocol.DescribeDBInstanceAutomatedBackupsSyncType? = nil,
            describeDBInstancesAsync: RDSClientProtocol.DescribeDBInstancesAsyncType? = nil,
            describeDBInstancesSync: RDSClientProtocol.DescribeDBInstancesSyncType? = nil,
            describeDBLogFilesAsync: RDSClientProtocol.DescribeDBLogFilesAsyncType? = nil,
            describeDBLogFilesSync: RDSClientProtocol.DescribeDBLogFilesSyncType? = nil,
            describeDBParameterGroupsAsync: RDSClientProtocol.DescribeDBParameterGroupsAsyncType? = nil,
            describeDBParameterGroupsSync: RDSClientProtocol.DescribeDBParameterGroupsSyncType? = nil,
            describeDBParametersAsync: RDSClientProtocol.DescribeDBParametersAsyncType? = nil,
            describeDBParametersSync: RDSClientProtocol.DescribeDBParametersSyncType? = nil,
            describeDBProxiesAsync: RDSClientProtocol.DescribeDBProxiesAsyncType? = nil,
            describeDBProxiesSync: RDSClientProtocol.DescribeDBProxiesSyncType? = nil,
            describeDBProxyTargetGroupsAsync: RDSClientProtocol.DescribeDBProxyTargetGroupsAsyncType? = nil,
            describeDBProxyTargetGroupsSync: RDSClientProtocol.DescribeDBProxyTargetGroupsSyncType? = nil,
            describeDBProxyTargetsAsync: RDSClientProtocol.DescribeDBProxyTargetsAsyncType? = nil,
            describeDBProxyTargetsSync: RDSClientProtocol.DescribeDBProxyTargetsSyncType? = nil,
            describeDBSecurityGroupsAsync: RDSClientProtocol.DescribeDBSecurityGroupsAsyncType? = nil,
            describeDBSecurityGroupsSync: RDSClientProtocol.DescribeDBSecurityGroupsSyncType? = nil,
            describeDBSnapshotAttributesAsync: RDSClientProtocol.DescribeDBSnapshotAttributesAsyncType? = nil,
            describeDBSnapshotAttributesSync: RDSClientProtocol.DescribeDBSnapshotAttributesSyncType? = nil,
            describeDBSnapshotsAsync: RDSClientProtocol.DescribeDBSnapshotsAsyncType? = nil,
            describeDBSnapshotsSync: RDSClientProtocol.DescribeDBSnapshotsSyncType? = nil,
            describeDBSubnetGroupsAsync: RDSClientProtocol.DescribeDBSubnetGroupsAsyncType? = nil,
            describeDBSubnetGroupsSync: RDSClientProtocol.DescribeDBSubnetGroupsSyncType? = nil,
            describeEngineDefaultClusterParametersAsync: RDSClientProtocol.DescribeEngineDefaultClusterParametersAsyncType? = nil,
            describeEngineDefaultClusterParametersSync: RDSClientProtocol.DescribeEngineDefaultClusterParametersSyncType? = nil,
            describeEngineDefaultParametersAsync: RDSClientProtocol.DescribeEngineDefaultParametersAsyncType? = nil,
            describeEngineDefaultParametersSync: RDSClientProtocol.DescribeEngineDefaultParametersSyncType? = nil,
            describeEventCategoriesAsync: RDSClientProtocol.DescribeEventCategoriesAsyncType? = nil,
            describeEventCategoriesSync: RDSClientProtocol.DescribeEventCategoriesSyncType? = nil,
            describeEventSubscriptionsAsync: RDSClientProtocol.DescribeEventSubscriptionsAsyncType? = nil,
            describeEventSubscriptionsSync: RDSClientProtocol.DescribeEventSubscriptionsSyncType? = nil,
            describeEventsAsync: RDSClientProtocol.DescribeEventsAsyncType? = nil,
            describeEventsSync: RDSClientProtocol.DescribeEventsSyncType? = nil,
            describeExportTasksAsync: RDSClientProtocol.DescribeExportTasksAsyncType? = nil,
            describeExportTasksSync: RDSClientProtocol.DescribeExportTasksSyncType? = nil,
            describeGlobalClustersAsync: RDSClientProtocol.DescribeGlobalClustersAsyncType? = nil,
            describeGlobalClustersSync: RDSClientProtocol.DescribeGlobalClustersSyncType? = nil,
            describeInstallationMediaAsync: RDSClientProtocol.DescribeInstallationMediaAsyncType? = nil,
            describeInstallationMediaSync: RDSClientProtocol.DescribeInstallationMediaSyncType? = nil,
            describeOptionGroupOptionsAsync: RDSClientProtocol.DescribeOptionGroupOptionsAsyncType? = nil,
            describeOptionGroupOptionsSync: RDSClientProtocol.DescribeOptionGroupOptionsSyncType? = nil,
            describeOptionGroupsAsync: RDSClientProtocol.DescribeOptionGroupsAsyncType? = nil,
            describeOptionGroupsSync: RDSClientProtocol.DescribeOptionGroupsSyncType? = nil,
            describeOrderableDBInstanceOptionsAsync: RDSClientProtocol.DescribeOrderableDBInstanceOptionsAsyncType? = nil,
            describeOrderableDBInstanceOptionsSync: RDSClientProtocol.DescribeOrderableDBInstanceOptionsSyncType? = nil,
            describePendingMaintenanceActionsAsync: RDSClientProtocol.DescribePendingMaintenanceActionsAsyncType? = nil,
            describePendingMaintenanceActionsSync: RDSClientProtocol.DescribePendingMaintenanceActionsSyncType? = nil,
            describeReservedDBInstancesAsync: RDSClientProtocol.DescribeReservedDBInstancesAsyncType? = nil,
            describeReservedDBInstancesSync: RDSClientProtocol.DescribeReservedDBInstancesSyncType? = nil,
            describeReservedDBInstancesOfferingsAsync: RDSClientProtocol.DescribeReservedDBInstancesOfferingsAsyncType? = nil,
            describeReservedDBInstancesOfferingsSync: RDSClientProtocol.DescribeReservedDBInstancesOfferingsSyncType? = nil,
            describeSourceRegionsAsync: RDSClientProtocol.DescribeSourceRegionsAsyncType? = nil,
            describeSourceRegionsSync: RDSClientProtocol.DescribeSourceRegionsSyncType? = nil,
            describeValidDBInstanceModificationsAsync: RDSClientProtocol.DescribeValidDBInstanceModificationsAsyncType? = nil,
            describeValidDBInstanceModificationsSync: RDSClientProtocol.DescribeValidDBInstanceModificationsSyncType? = nil,
            downloadDBLogFilePortionAsync: RDSClientProtocol.DownloadDBLogFilePortionAsyncType? = nil,
            downloadDBLogFilePortionSync: RDSClientProtocol.DownloadDBLogFilePortionSyncType? = nil,
            failoverDBClusterAsync: RDSClientProtocol.FailoverDBClusterAsyncType? = nil,
            failoverDBClusterSync: RDSClientProtocol.FailoverDBClusterSyncType? = nil,
            importInstallationMediaAsync: RDSClientProtocol.ImportInstallationMediaAsyncType? = nil,
            importInstallationMediaSync: RDSClientProtocol.ImportInstallationMediaSyncType? = nil,
            listTagsForResourceAsync: RDSClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: RDSClientProtocol.ListTagsForResourceSyncType? = nil,
            modifyCertificatesAsync: RDSClientProtocol.ModifyCertificatesAsyncType? = nil,
            modifyCertificatesSync: RDSClientProtocol.ModifyCertificatesSyncType? = nil,
            modifyCurrentDBClusterCapacityAsync: RDSClientProtocol.ModifyCurrentDBClusterCapacityAsyncType? = nil,
            modifyCurrentDBClusterCapacitySync: RDSClientProtocol.ModifyCurrentDBClusterCapacitySyncType? = nil,
            modifyDBClusterAsync: RDSClientProtocol.ModifyDBClusterAsyncType? = nil,
            modifyDBClusterSync: RDSClientProtocol.ModifyDBClusterSyncType? = nil,
            modifyDBClusterEndpointAsync: RDSClientProtocol.ModifyDBClusterEndpointAsyncType? = nil,
            modifyDBClusterEndpointSync: RDSClientProtocol.ModifyDBClusterEndpointSyncType? = nil,
            modifyDBClusterParameterGroupAsync: RDSClientProtocol.ModifyDBClusterParameterGroupAsyncType? = nil,
            modifyDBClusterParameterGroupSync: RDSClientProtocol.ModifyDBClusterParameterGroupSyncType? = nil,
            modifyDBClusterSnapshotAttributeAsync: RDSClientProtocol.ModifyDBClusterSnapshotAttributeAsyncType? = nil,
            modifyDBClusterSnapshotAttributeSync: RDSClientProtocol.ModifyDBClusterSnapshotAttributeSyncType? = nil,
            modifyDBInstanceAsync: RDSClientProtocol.ModifyDBInstanceAsyncType? = nil,
            modifyDBInstanceSync: RDSClientProtocol.ModifyDBInstanceSyncType? = nil,
            modifyDBParameterGroupAsync: RDSClientProtocol.ModifyDBParameterGroupAsyncType? = nil,
            modifyDBParameterGroupSync: RDSClientProtocol.ModifyDBParameterGroupSyncType? = nil,
            modifyDBProxyAsync: RDSClientProtocol.ModifyDBProxyAsyncType? = nil,
            modifyDBProxySync: RDSClientProtocol.ModifyDBProxySyncType? = nil,
            modifyDBProxyTargetGroupAsync: RDSClientProtocol.ModifyDBProxyTargetGroupAsyncType? = nil,
            modifyDBProxyTargetGroupSync: RDSClientProtocol.ModifyDBProxyTargetGroupSyncType? = nil,
            modifyDBSnapshotAsync: RDSClientProtocol.ModifyDBSnapshotAsyncType? = nil,
            modifyDBSnapshotSync: RDSClientProtocol.ModifyDBSnapshotSyncType? = nil,
            modifyDBSnapshotAttributeAsync: RDSClientProtocol.ModifyDBSnapshotAttributeAsyncType? = nil,
            modifyDBSnapshotAttributeSync: RDSClientProtocol.ModifyDBSnapshotAttributeSyncType? = nil,
            modifyDBSubnetGroupAsync: RDSClientProtocol.ModifyDBSubnetGroupAsyncType? = nil,
            modifyDBSubnetGroupSync: RDSClientProtocol.ModifyDBSubnetGroupSyncType? = nil,
            modifyEventSubscriptionAsync: RDSClientProtocol.ModifyEventSubscriptionAsyncType? = nil,
            modifyEventSubscriptionSync: RDSClientProtocol.ModifyEventSubscriptionSyncType? = nil,
            modifyGlobalClusterAsync: RDSClientProtocol.ModifyGlobalClusterAsyncType? = nil,
            modifyGlobalClusterSync: RDSClientProtocol.ModifyGlobalClusterSyncType? = nil,
            modifyOptionGroupAsync: RDSClientProtocol.ModifyOptionGroupAsyncType? = nil,
            modifyOptionGroupSync: RDSClientProtocol.ModifyOptionGroupSyncType? = nil,
            promoteReadReplicaAsync: RDSClientProtocol.PromoteReadReplicaAsyncType? = nil,
            promoteReadReplicaSync: RDSClientProtocol.PromoteReadReplicaSyncType? = nil,
            promoteReadReplicaDBClusterAsync: RDSClientProtocol.PromoteReadReplicaDBClusterAsyncType? = nil,
            promoteReadReplicaDBClusterSync: RDSClientProtocol.PromoteReadReplicaDBClusterSyncType? = nil,
            purchaseReservedDBInstancesOfferingAsync: RDSClientProtocol.PurchaseReservedDBInstancesOfferingAsyncType? = nil,
            purchaseReservedDBInstancesOfferingSync: RDSClientProtocol.PurchaseReservedDBInstancesOfferingSyncType? = nil,
            rebootDBInstanceAsync: RDSClientProtocol.RebootDBInstanceAsyncType? = nil,
            rebootDBInstanceSync: RDSClientProtocol.RebootDBInstanceSyncType? = nil,
            registerDBProxyTargetsAsync: RDSClientProtocol.RegisterDBProxyTargetsAsyncType? = nil,
            registerDBProxyTargetsSync: RDSClientProtocol.RegisterDBProxyTargetsSyncType? = nil,
            removeFromGlobalClusterAsync: RDSClientProtocol.RemoveFromGlobalClusterAsyncType? = nil,
            removeFromGlobalClusterSync: RDSClientProtocol.RemoveFromGlobalClusterSyncType? = nil,
            removeRoleFromDBClusterAsync: RDSClientProtocol.RemoveRoleFromDBClusterAsyncType? = nil,
            removeRoleFromDBClusterSync: RDSClientProtocol.RemoveRoleFromDBClusterSyncType? = nil,
            removeRoleFromDBInstanceAsync: RDSClientProtocol.RemoveRoleFromDBInstanceAsyncType? = nil,
            removeRoleFromDBInstanceSync: RDSClientProtocol.RemoveRoleFromDBInstanceSyncType? = nil,
            removeSourceIdentifierFromSubscriptionAsync: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionAsyncType? = nil,
            removeSourceIdentifierFromSubscriptionSync: RDSClientProtocol.RemoveSourceIdentifierFromSubscriptionSyncType? = nil,
            removeTagsFromResourceAsync: RDSClientProtocol.RemoveTagsFromResourceAsyncType? = nil,
            removeTagsFromResourceSync: RDSClientProtocol.RemoveTagsFromResourceSyncType? = nil,
            resetDBClusterParameterGroupAsync: RDSClientProtocol.ResetDBClusterParameterGroupAsyncType? = nil,
            resetDBClusterParameterGroupSync: RDSClientProtocol.ResetDBClusterParameterGroupSyncType? = nil,
            resetDBParameterGroupAsync: RDSClientProtocol.ResetDBParameterGroupAsyncType? = nil,
            resetDBParameterGroupSync: RDSClientProtocol.ResetDBParameterGroupSyncType? = nil,
            restoreDBClusterFromS3Async: RDSClientProtocol.RestoreDBClusterFromS3AsyncType? = nil,
            restoreDBClusterFromS3Sync: RDSClientProtocol.RestoreDBClusterFromS3SyncType? = nil,
            restoreDBClusterFromSnapshotAsync: RDSClientProtocol.RestoreDBClusterFromSnapshotAsyncType? = nil,
            restoreDBClusterFromSnapshotSync: RDSClientProtocol.RestoreDBClusterFromSnapshotSyncType? = nil,
            restoreDBClusterToPointInTimeAsync: RDSClientProtocol.RestoreDBClusterToPointInTimeAsyncType? = nil,
            restoreDBClusterToPointInTimeSync: RDSClientProtocol.RestoreDBClusterToPointInTimeSyncType? = nil,
            restoreDBInstanceFromDBSnapshotAsync: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotAsyncType? = nil,
            restoreDBInstanceFromDBSnapshotSync: RDSClientProtocol.RestoreDBInstanceFromDBSnapshotSyncType? = nil,
            restoreDBInstanceFromS3Async: RDSClientProtocol.RestoreDBInstanceFromS3AsyncType? = nil,
            restoreDBInstanceFromS3Sync: RDSClientProtocol.RestoreDBInstanceFromS3SyncType? = nil,
            restoreDBInstanceToPointInTimeAsync: RDSClientProtocol.RestoreDBInstanceToPointInTimeAsyncType? = nil,
            restoreDBInstanceToPointInTimeSync: RDSClientProtocol.RestoreDBInstanceToPointInTimeSyncType? = nil,
            revokeDBSecurityGroupIngressAsync: RDSClientProtocol.RevokeDBSecurityGroupIngressAsyncType? = nil,
            revokeDBSecurityGroupIngressSync: RDSClientProtocol.RevokeDBSecurityGroupIngressSyncType? = nil,
            startActivityStreamAsync: RDSClientProtocol.StartActivityStreamAsyncType? = nil,
            startActivityStreamSync: RDSClientProtocol.StartActivityStreamSyncType? = nil,
            startDBClusterAsync: RDSClientProtocol.StartDBClusterAsyncType? = nil,
            startDBClusterSync: RDSClientProtocol.StartDBClusterSyncType? = nil,
            startDBInstanceAsync: RDSClientProtocol.StartDBInstanceAsyncType? = nil,
            startDBInstanceSync: RDSClientProtocol.StartDBInstanceSyncType? = nil,
            startExportTaskAsync: RDSClientProtocol.StartExportTaskAsyncType? = nil,
            startExportTaskSync: RDSClientProtocol.StartExportTaskSyncType? = nil,
            stopActivityStreamAsync: RDSClientProtocol.StopActivityStreamAsyncType? = nil,
            stopActivityStreamSync: RDSClientProtocol.StopActivityStreamSyncType? = nil,
            stopDBClusterAsync: RDSClientProtocol.StopDBClusterAsyncType? = nil,
            stopDBClusterSync: RDSClientProtocol.StopDBClusterSyncType? = nil,
            stopDBInstanceAsync: RDSClientProtocol.StopDBInstanceAsyncType? = nil,
            stopDBInstanceSync: RDSClientProtocol.StopDBInstanceSyncType? = nil) {
        self.error = error
        self.addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsync
        self.addRoleToDBClusterSyncOverride = addRoleToDBClusterSync
        self.addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsync
        self.addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSync
        self.addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsync
        self.addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSync
        self.addTagsToResourceAsyncOverride = addTagsToResourceAsync
        self.addTagsToResourceSyncOverride = addTagsToResourceSync
        self.applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsync
        self.applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSync
        self.authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsync
        self.authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSync
        self.backtrackDBClusterAsyncOverride = backtrackDBClusterAsync
        self.backtrackDBClusterSyncOverride = backtrackDBClusterSync
        self.cancelExportTaskAsyncOverride = cancelExportTaskAsync
        self.cancelExportTaskSyncOverride = cancelExportTaskSync
        self.copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsync
        self.copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSync
        self.copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsync
        self.copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSync
        self.copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsync
        self.copyDBParameterGroupSyncOverride = copyDBParameterGroupSync
        self.copyDBSnapshotAsyncOverride = copyDBSnapshotAsync
        self.copyDBSnapshotSyncOverride = copyDBSnapshotSync
        self.copyOptionGroupAsyncOverride = copyOptionGroupAsync
        self.copyOptionGroupSyncOverride = copyOptionGroupSync
        self.createCustomAvailabilityZoneAsyncOverride = createCustomAvailabilityZoneAsync
        self.createCustomAvailabilityZoneSyncOverride = createCustomAvailabilityZoneSync
        self.createDBClusterAsyncOverride = createDBClusterAsync
        self.createDBClusterSyncOverride = createDBClusterSync
        self.createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsync
        self.createDBClusterEndpointSyncOverride = createDBClusterEndpointSync
        self.createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsync
        self.createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSync
        self.createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsync
        self.createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSync
        self.createDBInstanceAsyncOverride = createDBInstanceAsync
        self.createDBInstanceSyncOverride = createDBInstanceSync
        self.createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsync
        self.createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSync
        self.createDBParameterGroupAsyncOverride = createDBParameterGroupAsync
        self.createDBParameterGroupSyncOverride = createDBParameterGroupSync
        self.createDBProxyAsyncOverride = createDBProxyAsync
        self.createDBProxySyncOverride = createDBProxySync
        self.createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsync
        self.createDBSecurityGroupSyncOverride = createDBSecurityGroupSync
        self.createDBSnapshotAsyncOverride = createDBSnapshotAsync
        self.createDBSnapshotSyncOverride = createDBSnapshotSync
        self.createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsync
        self.createDBSubnetGroupSyncOverride = createDBSubnetGroupSync
        self.createEventSubscriptionAsyncOverride = createEventSubscriptionAsync
        self.createEventSubscriptionSyncOverride = createEventSubscriptionSync
        self.createGlobalClusterAsyncOverride = createGlobalClusterAsync
        self.createGlobalClusterSyncOverride = createGlobalClusterSync
        self.createOptionGroupAsyncOverride = createOptionGroupAsync
        self.createOptionGroupSyncOverride = createOptionGroupSync
        self.deleteCustomAvailabilityZoneAsyncOverride = deleteCustomAvailabilityZoneAsync
        self.deleteCustomAvailabilityZoneSyncOverride = deleteCustomAvailabilityZoneSync
        self.deleteDBClusterAsyncOverride = deleteDBClusterAsync
        self.deleteDBClusterSyncOverride = deleteDBClusterSync
        self.deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsync
        self.deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSync
        self.deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsync
        self.deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSync
        self.deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsync
        self.deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSync
        self.deleteDBInstanceAsyncOverride = deleteDBInstanceAsync
        self.deleteDBInstanceSyncOverride = deleteDBInstanceSync
        self.deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsync
        self.deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSync
        self.deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsync
        self.deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSync
        self.deleteDBProxyAsyncOverride = deleteDBProxyAsync
        self.deleteDBProxySyncOverride = deleteDBProxySync
        self.deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsync
        self.deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSync
        self.deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsync
        self.deleteDBSnapshotSyncOverride = deleteDBSnapshotSync
        self.deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsync
        self.deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSync
        self.deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsync
        self.deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSync
        self.deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsync
        self.deleteGlobalClusterSyncOverride = deleteGlobalClusterSync
        self.deleteInstallationMediaAsyncOverride = deleteInstallationMediaAsync
        self.deleteInstallationMediaSyncOverride = deleteInstallationMediaSync
        self.deleteOptionGroupAsyncOverride = deleteOptionGroupAsync
        self.deleteOptionGroupSyncOverride = deleteOptionGroupSync
        self.deregisterDBProxyTargetsAsyncOverride = deregisterDBProxyTargetsAsync
        self.deregisterDBProxyTargetsSyncOverride = deregisterDBProxyTargetsSync
        self.describeAccountAttributesAsyncOverride = describeAccountAttributesAsync
        self.describeAccountAttributesSyncOverride = describeAccountAttributesSync
        self.describeCertificatesAsyncOverride = describeCertificatesAsync
        self.describeCertificatesSyncOverride = describeCertificatesSync
        self.describeCustomAvailabilityZonesAsyncOverride = describeCustomAvailabilityZonesAsync
        self.describeCustomAvailabilityZonesSyncOverride = describeCustomAvailabilityZonesSync
        self.describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsync
        self.describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSync
        self.describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsync
        self.describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSync
        self.describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsync
        self.describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSync
        self.describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsync
        self.describeDBClusterParametersSyncOverride = describeDBClusterParametersSync
        self.describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsync
        self.describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSync
        self.describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsync
        self.describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSync
        self.describeDBClustersAsyncOverride = describeDBClustersAsync
        self.describeDBClustersSyncOverride = describeDBClustersSync
        self.describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsync
        self.describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSync
        self.describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsync
        self.describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSync
        self.describeDBInstancesAsyncOverride = describeDBInstancesAsync
        self.describeDBInstancesSyncOverride = describeDBInstancesSync
        self.describeDBLogFilesAsyncOverride = describeDBLogFilesAsync
        self.describeDBLogFilesSyncOverride = describeDBLogFilesSync
        self.describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsync
        self.describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSync
        self.describeDBParametersAsyncOverride = describeDBParametersAsync
        self.describeDBParametersSyncOverride = describeDBParametersSync
        self.describeDBProxiesAsyncOverride = describeDBProxiesAsync
        self.describeDBProxiesSyncOverride = describeDBProxiesSync
        self.describeDBProxyTargetGroupsAsyncOverride = describeDBProxyTargetGroupsAsync
        self.describeDBProxyTargetGroupsSyncOverride = describeDBProxyTargetGroupsSync
        self.describeDBProxyTargetsAsyncOverride = describeDBProxyTargetsAsync
        self.describeDBProxyTargetsSyncOverride = describeDBProxyTargetsSync
        self.describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsync
        self.describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSync
        self.describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsync
        self.describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSync
        self.describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsync
        self.describeDBSnapshotsSyncOverride = describeDBSnapshotsSync
        self.describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsync
        self.describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSync
        self.describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsync
        self.describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSync
        self.describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsync
        self.describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSync
        self.describeEventCategoriesAsyncOverride = describeEventCategoriesAsync
        self.describeEventCategoriesSyncOverride = describeEventCategoriesSync
        self.describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsync
        self.describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSync
        self.describeEventsAsyncOverride = describeEventsAsync
        self.describeEventsSyncOverride = describeEventsSync
        self.describeExportTasksAsyncOverride = describeExportTasksAsync
        self.describeExportTasksSyncOverride = describeExportTasksSync
        self.describeGlobalClustersAsyncOverride = describeGlobalClustersAsync
        self.describeGlobalClustersSyncOverride = describeGlobalClustersSync
        self.describeInstallationMediaAsyncOverride = describeInstallationMediaAsync
        self.describeInstallationMediaSyncOverride = describeInstallationMediaSync
        self.describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsync
        self.describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSync
        self.describeOptionGroupsAsyncOverride = describeOptionGroupsAsync
        self.describeOptionGroupsSyncOverride = describeOptionGroupsSync
        self.describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsync
        self.describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSync
        self.describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsync
        self.describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSync
        self.describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsync
        self.describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSync
        self.describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsync
        self.describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSync
        self.describeSourceRegionsAsyncOverride = describeSourceRegionsAsync
        self.describeSourceRegionsSyncOverride = describeSourceRegionsSync
        self.describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsync
        self.describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSync
        self.downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsync
        self.downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSync
        self.failoverDBClusterAsyncOverride = failoverDBClusterAsync
        self.failoverDBClusterSyncOverride = failoverDBClusterSync
        self.importInstallationMediaAsyncOverride = importInstallationMediaAsync
        self.importInstallationMediaSyncOverride = importInstallationMediaSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.modifyCertificatesAsyncOverride = modifyCertificatesAsync
        self.modifyCertificatesSyncOverride = modifyCertificatesSync
        self.modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsync
        self.modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySync
        self.modifyDBClusterAsyncOverride = modifyDBClusterAsync
        self.modifyDBClusterSyncOverride = modifyDBClusterSync
        self.modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsync
        self.modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSync
        self.modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsync
        self.modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSync
        self.modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsync
        self.modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSync
        self.modifyDBInstanceAsyncOverride = modifyDBInstanceAsync
        self.modifyDBInstanceSyncOverride = modifyDBInstanceSync
        self.modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsync
        self.modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSync
        self.modifyDBProxyAsyncOverride = modifyDBProxyAsync
        self.modifyDBProxySyncOverride = modifyDBProxySync
        self.modifyDBProxyTargetGroupAsyncOverride = modifyDBProxyTargetGroupAsync
        self.modifyDBProxyTargetGroupSyncOverride = modifyDBProxyTargetGroupSync
        self.modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsync
        self.modifyDBSnapshotSyncOverride = modifyDBSnapshotSync
        self.modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsync
        self.modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSync
        self.modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsync
        self.modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSync
        self.modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsync
        self.modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSync
        self.modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsync
        self.modifyGlobalClusterSyncOverride = modifyGlobalClusterSync
        self.modifyOptionGroupAsyncOverride = modifyOptionGroupAsync
        self.modifyOptionGroupSyncOverride = modifyOptionGroupSync
        self.promoteReadReplicaAsyncOverride = promoteReadReplicaAsync
        self.promoteReadReplicaSyncOverride = promoteReadReplicaSync
        self.promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsync
        self.promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSync
        self.purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsync
        self.purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSync
        self.rebootDBInstanceAsyncOverride = rebootDBInstanceAsync
        self.rebootDBInstanceSyncOverride = rebootDBInstanceSync
        self.registerDBProxyTargetsAsyncOverride = registerDBProxyTargetsAsync
        self.registerDBProxyTargetsSyncOverride = registerDBProxyTargetsSync
        self.removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsync
        self.removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSync
        self.removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsync
        self.removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSync
        self.removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsync
        self.removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSync
        self.removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsync
        self.removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSync
        self.removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsync
        self.removeTagsFromResourceSyncOverride = removeTagsFromResourceSync
        self.resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsync
        self.resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSync
        self.resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsync
        self.resetDBParameterGroupSyncOverride = resetDBParameterGroupSync
        self.restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3Async
        self.restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3Sync
        self.restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsync
        self.restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSync
        self.restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsync
        self.restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSync
        self.restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsync
        self.restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSync
        self.restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3Async
        self.restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3Sync
        self.restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsync
        self.restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSync
        self.revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsync
        self.revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSync
        self.startActivityStreamAsyncOverride = startActivityStreamAsync
        self.startActivityStreamSyncOverride = startActivityStreamSync
        self.startDBClusterAsyncOverride = startDBClusterAsync
        self.startDBClusterSyncOverride = startDBClusterSync
        self.startDBInstanceAsyncOverride = startDBInstanceAsync
        self.startDBInstanceSyncOverride = startDBInstanceSync
        self.startExportTaskAsyncOverride = startExportTaskAsync
        self.startExportTaskSyncOverride = startExportTaskSync
        self.stopActivityStreamAsyncOverride = stopActivityStreamAsync
        self.stopActivityStreamSyncOverride = stopActivityStreamSync
        self.stopDBClusterAsyncOverride = stopDBClusterAsync
        self.stopDBClusterSyncOverride = stopDBClusterSync
        self.stopDBInstanceAsyncOverride = stopDBInstanceAsync
        self.stopDBInstanceSyncOverride = stopDBInstanceSync
    }

    /**
     Invokes the AddRoleToDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterAsync(
            input: RDSModel.AddRoleToDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBClusterAsyncOverride = addRoleToDBClusterAsyncOverride {
            return try addRoleToDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBClusterSync(
            input: RDSModel.AddRoleToDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addRoleToDBClusterSyncOverride = addRoleToDBClusterSyncOverride {
            return try addRoleToDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the AddRoleToDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceAsync(
            input: RDSModel.AddRoleToDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addRoleToDBInstanceAsyncOverride = addRoleToDBInstanceAsyncOverride {
            return try addRoleToDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddRoleToDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstanceSync(
            input: RDSModel.AddRoleToDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addRoleToDBInstanceSyncOverride = addRoleToDBInstanceSyncOverride {
            return try addRoleToDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
         - completion: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object or an error will be passed to this 
           callback when the operation is complete. The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionAsync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription, HTTPClientError>) -> ()) throws {
        if let addSourceIdentifierToSubscriptionAsyncOverride = addSourceIdentifierToSubscriptionAsyncOverride {
            return try addSourceIdentifierToSubscriptionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: The AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscriptionSync(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription {
        if let addSourceIdentifierToSubscriptionSyncOverride = addSourceIdentifierToSubscriptionSyncOverride {
            return try addSourceIdentifierToSubscriptionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the AddTagsToResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceAsync(
            input: RDSModel.AddTagsToResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addTagsToResourceAsyncOverride = addTagsToResourceAsyncOverride {
            return try addTagsToResourceAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the AddTagsToResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResourceSync(
            input: RDSModel.AddTagsToResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addTagsToResourceSyncOverride = addTagsToResourceSyncOverride {
            return try addTagsToResourceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
         - completion: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object or an error will be passed to this 
           callback when the operation is complete. The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction
           object will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionAsync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction, HTTPClientError>) -> ()) throws {
        if let applyPendingMaintenanceActionAsyncOverride = applyPendingMaintenanceActionAsyncOverride {
            return try applyPendingMaintenanceActionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: The ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceActionSync(
            input: RDSModel.ApplyPendingMaintenanceActionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction {
        if let applyPendingMaintenanceActionSyncOverride = applyPendingMaintenanceActionSyncOverride {
            return try applyPendingMaintenanceActionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressAsync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let authorizeDBSecurityGroupIngressAsyncOverride = authorizeDBSecurityGroupIngressAsyncOverride {
            return try authorizeDBSecurityGroupIngressAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngressSync(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress {
        if let authorizeDBSecurityGroupIngressSyncOverride = authorizeDBSecurityGroupIngressSyncOverride {
            return try authorizeDBSecurityGroupIngressSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the BacktrackDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
         - completion: The DBClusterBacktrackForBacktrackDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackForBacktrackDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterAsync(
            input: RDSModel.BacktrackDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackForBacktrackDBCluster, HTTPClientError>) -> ()) throws {
        if let backtrackDBClusterAsyncOverride = backtrackDBClusterAsyncOverride {
            return try backtrackDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the BacktrackDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBClusterSync(
            input: RDSModel.BacktrackDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackForBacktrackDBCluster {
        if let backtrackDBClusterSyncOverride = backtrackDBClusterSyncOverride {
            return try backtrackDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForCancelExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForCancelExportTask
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTaskAsync(
            input: RDSModel.CancelExportTaskMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ExportTaskForCancelExportTask, HTTPClientError>) -> ()) throws {
        if let cancelExportTaskAsyncOverride = cancelExportTaskAsyncOverride {
            return try cancelExportTaskAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTaskSync(
            input: RDSModel.CancelExportTaskMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ExportTaskForCancelExportTask {
        if let cancelExportTaskSyncOverride = cancelExportTaskSyncOverride {
            return try cancelExportTaskSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupAsync(
            input: RDSModel.CopyDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBClusterParameterGroupAsyncOverride = copyDBClusterParameterGroupAsyncOverride {
            return try copyDBClusterParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroupSync(
            input: RDSModel.CopyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup {
        if let copyDBClusterParameterGroupSyncOverride = copyDBClusterParameterGroupSyncOverride {
            return try copyDBClusterParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotAsync(
            input: RDSModel.CopyDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBClusterSnapshotAsyncOverride = copyDBClusterSnapshotAsyncOverride {
            return try copyDBClusterSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshotSync(
            input: RDSModel.CopyDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot {
        if let copyDBClusterSnapshotSyncOverride = copyDBClusterSnapshotSyncOverride {
            return try copyDBClusterSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CopyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
         - completion: The CopyDBParameterGroupResultForCopyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyDBParameterGroupResultForCopyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupAsync(
            input: RDSModel.CopyDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let copyDBParameterGroupAsyncOverride = copyDBParameterGroupAsyncOverride {
            return try copyDBParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: The CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroupSync(
            input: RDSModel.CopyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup {
        if let copyDBParameterGroupSyncOverride = copyDBParameterGroupSyncOverride {
            return try copyDBParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CopyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
         - completion: The CopyDBSnapshotResultForCopyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CopyDBSnapshotResultForCopyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotAsync(
            input: RDSModel.CopyDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let copyDBSnapshotAsyncOverride = copyDBSnapshotAsyncOverride {
            return try copyDBSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: The CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshotSync(
            input: RDSModel.CopyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyDBSnapshotResultForCopyDBSnapshot {
        if let copyDBSnapshotSyncOverride = copyDBSnapshotSyncOverride {
            return try copyDBSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CopyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
         - completion: The CopyOptionGroupResultForCopyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CopyOptionGroupResultForCopyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupAsync(
            input: RDSModel.CopyOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CopyOptionGroupResultForCopyOptionGroup, HTTPClientError>) -> ()) throws {
        if let copyOptionGroupAsyncOverride = copyOptionGroupAsyncOverride {
            return try copyOptionGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: The CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroupSync(
            input: RDSModel.CopyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CopyOptionGroupResultForCopyOptionGroup {
        if let copyOptionGroupSyncOverride = copyOptionGroupSyncOverride {
            return try copyOptionGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomAvailabilityZoneAsync(
            input: RDSModel.CreateCustomAvailabilityZoneMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone, HTTPClientError>) -> ()) throws {
        if let createCustomAvailabilityZoneAsyncOverride = createCustomAvailabilityZoneAsyncOverride {
            return try createCustomAvailabilityZoneAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomAvailabilityZoneSync(
            input: RDSModel.CreateCustomAvailabilityZoneMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone {
        if let createCustomAvailabilityZoneSyncOverride = createCustomAvailabilityZoneSyncOverride {
            return try createCustomAvailabilityZoneSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
         - completion: The CreateDBClusterResultForCreateDBCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterResultForCreateDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterAsync(
            input: RDSModel.CreateDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterResultForCreateDBCluster, HTTPClientError>) -> ()) throws {
        if let createDBClusterAsyncOverride = createDBClusterAsyncOverride {
            return try createDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: The CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBClusterSync(
            input: RDSModel.CreateDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterResultForCreateDBCluster {
        if let createDBClusterSyncOverride = createDBClusterSyncOverride {
            return try createDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForCreateDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForCreateDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointAsync(
            input: RDSModel.CreateDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let createDBClusterEndpointAsyncOverride = createDBClusterEndpointAsyncOverride {
            return try createDBClusterEndpointAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpointSync(
            input: RDSModel.CreateDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForCreateDBClusterEndpoint {
        if let createDBClusterEndpointSyncOverride = createDBClusterEndpointSyncOverride {
            return try createDBClusterEndpointSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupAsync(
            input: RDSModel.CreateDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBClusterParameterGroupAsyncOverride = createDBClusterParameterGroupAsyncOverride {
            return try createDBClusterParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroupSync(
            input: RDSModel.CreateDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup {
        if let createDBClusterParameterGroupSyncOverride = createDBClusterParameterGroupSyncOverride {
            return try createDBClusterParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
         - completion: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotAsync(
            input: RDSModel.CreateDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBClusterSnapshotAsyncOverride = createDBClusterSnapshotAsyncOverride {
            return try createDBClusterSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshotSync(
            input: RDSModel.CreateDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot {
        if let createDBClusterSnapshotSyncOverride = createDBClusterSnapshotSyncOverride {
            return try createDBClusterSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
         - completion: The CreateDBInstanceResultForCreateDBInstance object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceResultForCreateDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceAsync(
            input: RDSModel.CreateDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceResultForCreateDBInstance, HTTPClientError>) -> ()) throws {
        if let createDBInstanceAsyncOverride = createDBInstanceAsyncOverride {
            return try createDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: The CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceSync(
            input: RDSModel.CreateDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceResultForCreateDBInstance {
        if let createDBInstanceSyncOverride = createDBInstanceSyncOverride {
            return try createDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
         - completion: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object or an error will be passed to this 
           callback when the operation is complete. The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaAsync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica, HTTPClientError>) -> ()) throws {
        if let createDBInstanceReadReplicaAsyncOverride = createDBInstanceReadReplicaAsyncOverride {
            return try createDBInstanceReadReplicaAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: The CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplicaSync(
            input: RDSModel.CreateDBInstanceReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica {
        if let createDBInstanceReadReplicaSyncOverride = createDBInstanceReadReplicaSyncOverride {
            return try createDBInstanceReadReplicaSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
         - completion: The CreateDBParameterGroupResultForCreateDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBParameterGroupResultForCreateDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupAsync(
            input: RDSModel.CreateDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let createDBParameterGroupAsyncOverride = createDBParameterGroupAsyncOverride {
            return try createDBParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: The CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroupSync(
            input: RDSModel.CreateDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup {
        if let createDBParameterGroupSyncOverride = createDBParameterGroupSyncOverride {
            return try createDBParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
         - completion: The CreateDBProxyResponseForCreateDBProxy object or an error will be passed to this 
           callback when the operation is complete. The CreateDBProxyResponseForCreateDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxyAsync(
            input: RDSModel.CreateDBProxyRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBProxyResponseForCreateDBProxy, HTTPClientError>) -> ()) throws {
        if let createDBProxyAsyncOverride = createDBProxyAsyncOverride {
            return try createDBProxyAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: The CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxySync(
            input: RDSModel.CreateDBProxyRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBProxyResponseForCreateDBProxy {
        if let createDBProxySyncOverride = createDBProxySyncOverride {
            return try createDBProxySyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
         - completion: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSecurityGroupResultForCreateDBSecurityGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupAsync(
            input: RDSModel.CreateDBSecurityGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup, HTTPClientError>) -> ()) throws {
        if let createDBSecurityGroupAsyncOverride = createDBSecurityGroupAsyncOverride {
            return try createDBSecurityGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: The CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroupSync(
            input: RDSModel.CreateDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup {
        if let createDBSecurityGroupSyncOverride = createDBSecurityGroupSyncOverride {
            return try createDBSecurityGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
         - completion: The CreateDBSnapshotResultForCreateDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSnapshotResultForCreateDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotAsync(
            input: RDSModel.CreateDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot, HTTPClientError>) -> ()) throws {
        if let createDBSnapshotAsyncOverride = createDBSnapshotAsyncOverride {
            return try createDBSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: The CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshotSync(
            input: RDSModel.CreateDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSnapshotResultForCreateDBSnapshot {
        if let createDBSnapshotSyncOverride = createDBSnapshotSyncOverride {
            return try createDBSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
         - completion: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateDBSubnetGroupResultForCreateDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupAsync(
            input: RDSModel.CreateDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let createDBSubnetGroupAsyncOverride = createDBSubnetGroupAsyncOverride {
            return try createDBSubnetGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: The CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroupSync(
            input: RDSModel.CreateDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup {
        if let createDBSubnetGroupSyncOverride = createDBSubnetGroupSyncOverride {
            return try createDBSubnetGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
         - completion: The CreateEventSubscriptionResultForCreateEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The CreateEventSubscriptionResultForCreateEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionAsync(
            input: RDSModel.CreateEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription, HTTPClientError>) -> ()) throws {
        if let createEventSubscriptionAsyncOverride = createEventSubscriptionAsyncOverride {
            return try createEventSubscriptionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: The CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscriptionSync(
            input: RDSModel.CreateEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateEventSubscriptionResultForCreateEventSubscription {
        if let createEventSubscriptionSyncOverride = createEventSubscriptionSyncOverride {
            return try createEventSubscriptionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
         - completion: The CreateGlobalClusterResultForCreateGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalClusterResultForCreateGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterAsync(
            input: RDSModel.CreateGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster, HTTPClientError>) -> ()) throws {
        if let createGlobalClusterAsyncOverride = createGlobalClusterAsyncOverride {
            return try createGlobalClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: The CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalClusterSync(
            input: RDSModel.CreateGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateGlobalClusterResultForCreateGlobalCluster {
        if let createGlobalClusterSyncOverride = createGlobalClusterSyncOverride {
            return try createGlobalClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CreateOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
         - completion: The CreateOptionGroupResultForCreateOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The CreateOptionGroupResultForCreateOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupAsync(
            input: RDSModel.CreateOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CreateOptionGroupResultForCreateOptionGroup, HTTPClientError>) -> ()) throws {
        if let createOptionGroupAsyncOverride = createOptionGroupAsyncOverride {
            return try createOptionGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: The CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroupSync(
            input: RDSModel.CreateOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CreateOptionGroupResultForCreateOptionGroup {
        if let createOptionGroupSyncOverride = createOptionGroupSyncOverride {
            return try createOptionGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteCustomAvailabilityZone operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
         - completion: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object or an error will be passed to this 
           callback when the operation is complete. The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    public func deleteCustomAvailabilityZoneAsync(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone, HTTPClientError>) -> ()) throws {
        if let deleteCustomAvailabilityZoneAsyncOverride = deleteCustomAvailabilityZoneAsyncOverride {
            return try deleteCustomAvailabilityZoneAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteCustomAvailabilityZone operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: The DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    public func deleteCustomAvailabilityZoneSync(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone {
        if let deleteCustomAvailabilityZoneSyncOverride = deleteCustomAvailabilityZoneSyncOverride {
            return try deleteCustomAvailabilityZoneSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
         - completion: The DeleteDBClusterResultForDeleteDBCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterResultForDeleteDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterAsync(
            input: RDSModel.DeleteDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterResultForDeleteDBCluster, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterAsyncOverride = deleteDBClusterAsyncOverride {
            return try deleteDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: The DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBClusterSync(
            input: RDSModel.DeleteDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterResultForDeleteDBCluster {
        if let deleteDBClusterSyncOverride = deleteDBClusterSyncOverride {
            return try deleteDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForDeleteDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForDeleteDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointAsync(
            input: RDSModel.DeleteDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterEndpointAsyncOverride = deleteDBClusterEndpointAsyncOverride {
            return try deleteDBClusterEndpointAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpointSync(
            input: RDSModel.DeleteDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint {
        if let deleteDBClusterEndpointSyncOverride = deleteDBClusterEndpointSyncOverride {
            return try deleteDBClusterEndpointSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupAsync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBClusterParameterGroupAsyncOverride = deleteDBClusterParameterGroupAsyncOverride {
            return try deleteDBClusterParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroupSync(
            input: RDSModel.DeleteDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBClusterParameterGroupSyncOverride = deleteDBClusterParameterGroupSyncOverride {
            return try deleteDBClusterParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotAsync(
            input: RDSModel.DeleteDBClusterSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBClusterSnapshotAsyncOverride = deleteDBClusterSnapshotAsyncOverride {
            return try deleteDBClusterSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshotSync(
            input: RDSModel.DeleteDBClusterSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot {
        if let deleteDBClusterSnapshotSyncOverride = deleteDBClusterSnapshotSyncOverride {
            return try deleteDBClusterSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
         - completion: The DeleteDBInstanceResultForDeleteDBInstance object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceResultForDeleteDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceAsync(
            input: RDSModel.DeleteDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceResultForDeleteDBInstance, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAsyncOverride = deleteDBInstanceAsyncOverride {
            return try deleteDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstanceSync(
            input: RDSModel.DeleteDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceResultForDeleteDBInstance {
        if let deleteDBInstanceSyncOverride = deleteDBInstanceSyncOverride {
            return try deleteDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
         - completion: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupAsync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup, HTTPClientError>) -> ()) throws {
        if let deleteDBInstanceAutomatedBackupAsyncOverride = deleteDBInstanceAutomatedBackupAsyncOverride {
            return try deleteDBInstanceAutomatedBackupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: The DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackupSync(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup {
        if let deleteDBInstanceAutomatedBackupSyncOverride = deleteDBInstanceAutomatedBackupSyncOverride {
            return try deleteDBInstanceAutomatedBackupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupAsync(
            input: RDSModel.DeleteDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBParameterGroupAsyncOverride = deleteDBParameterGroupAsyncOverride {
            return try deleteDBParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroupSync(
            input: RDSModel.DeleteDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBParameterGroupSyncOverride = deleteDBParameterGroupSyncOverride {
            return try deleteDBParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
         - completion: The DeleteDBProxyResponseForDeleteDBProxy object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBProxyResponseForDeleteDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxyAsync(
            input: RDSModel.DeleteDBProxyRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBProxyResponseForDeleteDBProxy, HTTPClientError>) -> ()) throws {
        if let deleteDBProxyAsyncOverride = deleteDBProxyAsyncOverride {
            return try deleteDBProxyAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: The DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxySync(
            input: RDSModel.DeleteDBProxyRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBProxyResponseForDeleteDBProxy {
        if let deleteDBProxySyncOverride = deleteDBProxySyncOverride {
            return try deleteDBProxySyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupAsync(
            input: RDSModel.DeleteDBSecurityGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSecurityGroupAsyncOverride = deleteDBSecurityGroupAsyncOverride {
            return try deleteDBSecurityGroupAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
     - Throws: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroupSync(
            input: RDSModel.DeleteDBSecurityGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBSecurityGroupSyncOverride = deleteDBSecurityGroupSyncOverride {
            return try deleteDBSecurityGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
         - completion: The DeleteDBSnapshotResultForDeleteDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The DeleteDBSnapshotResultForDeleteDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotAsync(
            input: RDSModel.DeleteDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot, HTTPClientError>) -> ()) throws {
        if let deleteDBSnapshotAsyncOverride = deleteDBSnapshotAsyncOverride {
            return try deleteDBSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: The DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshotSync(
            input: RDSModel.DeleteDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot {
        if let deleteDBSnapshotSyncOverride = deleteDBSnapshotSyncOverride {
            return try deleteDBSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupAsync(
            input: RDSModel.DeleteDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteDBSubnetGroupAsyncOverride = deleteDBSubnetGroupAsyncOverride {
            return try deleteDBSubnetGroupAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
     - Throws: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroupSync(
            input: RDSModel.DeleteDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteDBSubnetGroupSyncOverride = deleteDBSubnetGroupSyncOverride {
            return try deleteDBSubnetGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
         - completion: The DeleteEventSubscriptionResultForDeleteEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The DeleteEventSubscriptionResultForDeleteEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionAsync(
            input: RDSModel.DeleteEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription, HTTPClientError>) -> ()) throws {
        if let deleteEventSubscriptionAsyncOverride = deleteEventSubscriptionAsyncOverride {
            return try deleteEventSubscriptionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: The DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscriptionSync(
            input: RDSModel.DeleteEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription {
        if let deleteEventSubscriptionSyncOverride = deleteEventSubscriptionSyncOverride {
            return try deleteEventSubscriptionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
         - completion: The DeleteGlobalClusterResultForDeleteGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The DeleteGlobalClusterResultForDeleteGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterAsync(
            input: RDSModel.DeleteGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster, HTTPClientError>) -> ()) throws {
        if let deleteGlobalClusterAsyncOverride = deleteGlobalClusterAsyncOverride {
            return try deleteGlobalClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: The DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalClusterSync(
            input: RDSModel.DeleteGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster {
        if let deleteGlobalClusterSyncOverride = deleteGlobalClusterSyncOverride {
            return try deleteGlobalClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForDeleteInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForDeleteInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func deleteInstallationMediaAsync(
            input: RDSModel.DeleteInstallationMediaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.InstallationMediaForDeleteInstallationMedia, HTTPClientError>) -> ()) throws {
        if let deleteInstallationMediaAsyncOverride = deleteInstallationMediaAsyncOverride {
            return try deleteInstallationMediaAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForDeleteInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    public func deleteInstallationMediaSync(
            input: RDSModel.DeleteInstallationMediaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.InstallationMediaForDeleteInstallationMedia {
        if let deleteInstallationMediaSyncOverride = deleteInstallationMediaSyncOverride {
            return try deleteInstallationMediaSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeleteOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupAsync(
            input: RDSModel.DeleteOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteOptionGroupAsyncOverride = deleteOptionGroupAsyncOverride {
            return try deleteOptionGroupAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroupSync(
            input: RDSModel.DeleteOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteOptionGroupSyncOverride = deleteOptionGroupSyncOverride {
            return try deleteOptionGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func deregisterDBProxyTargetsAsync(
            input: RDSModel.DeregisterDBProxyTargetsRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let deregisterDBProxyTargetsAsyncOverride = deregisterDBProxyTargetsAsyncOverride {
            return try deregisterDBProxyTargetsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func deregisterDBProxyTargetsSync(
            input: RDSModel.DeregisterDBProxyTargetsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets {
        if let deregisterDBProxyTargetsSyncOverride = deregisterDBProxyTargetsSyncOverride {
            return try deregisterDBProxyTargetsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
         - completion: The AccountAttributesMessageForDescribeAccountAttributes object or an error will be passed to this 
           callback when the operation is complete. The AccountAttributesMessageForDescribeAccountAttributes
           object will be validated before being returned to caller.
     */
    public func describeAccountAttributesAsync(
            input: RDSModel.DescribeAccountAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.AccountAttributesMessageForDescribeAccountAttributes, HTTPClientError>) -> ()) throws {
        if let describeAccountAttributesAsyncOverride = describeAccountAttributesAsyncOverride {
            return try describeAccountAttributesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: The AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync(
            input: RDSModel.DescribeAccountAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.AccountAttributesMessageForDescribeAccountAttributes {
        if let describeAccountAttributesSyncOverride = describeAccountAttributesSyncOverride {
            return try describeAccountAttributesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
         - completion: The CertificateMessageForDescribeCertificates object or an error will be passed to this 
           callback when the operation is complete. The CertificateMessageForDescribeCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func describeCertificatesAsync(
            input: RDSModel.DescribeCertificatesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CertificateMessageForDescribeCertificates, HTTPClientError>) -> ()) throws {
        if let describeCertificatesAsyncOverride = describeCertificatesAsyncOverride {
            return try describeCertificatesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: The CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func describeCertificatesSync(
            input: RDSModel.DescribeCertificatesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CertificateMessageForDescribeCertificates {
        if let describeCertificatesSyncOverride = describeCertificatesSyncOverride {
            return try describeCertificatesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeCustomAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
         - completion: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object or an error will be passed to this 
           callback when the operation is complete. The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound.
     */
    public func describeCustomAvailabilityZonesAsync(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones, HTTPClientError>) -> ()) throws {
        if let describeCustomAvailabilityZonesAsyncOverride = describeCustomAvailabilityZonesAsyncOverride {
            return try describeCustomAvailabilityZonesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCustomAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
     - Returns: The CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound.
     */
    public func describeCustomAvailabilityZonesSync(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones {
        if let describeCustomAvailabilityZonesSyncOverride = describeCustomAvailabilityZonesSyncOverride {
            return try describeCustomAvailabilityZonesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
         - completion: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object or an error will be passed to this 
           callback when the operation is complete. The DBClusterBacktrackMessageForDescribeDBClusterBacktracks
           object will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksAsync(
            input: RDSModel.DescribeDBClusterBacktracksMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks, HTTPClientError>) -> ()) throws {
        if let describeDBClusterBacktracksAsyncOverride = describeDBClusterBacktracksAsyncOverride {
            return try describeDBClusterBacktracksAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: The DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracksSync(
            input: RDSModel.DescribeDBClusterBacktracksMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks {
        if let describeDBClusterBacktracksSyncOverride = describeDBClusterBacktracksSyncOverride {
            return try describeDBClusterBacktracksSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
         - completion: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointMessageForDescribeDBClusterEndpoints
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsAsync(
            input: RDSModel.DescribeDBClusterEndpointsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints, HTTPClientError>) -> ()) throws {
        if let describeDBClusterEndpointsAsyncOverride = describeDBClusterEndpointsAsyncOverride {
            return try describeDBClusterEndpointsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: The DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClusterEndpointsSync(
            input: RDSModel.DescribeDBClusterEndpointsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints {
        if let describeDBClusterEndpointsSyncOverride = describeDBClusterEndpointsSyncOverride {
            return try describeDBClusterEndpointsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsAsync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParameterGroupsAsyncOverride = describeDBClusterParameterGroupsAsyncOverride {
            return try describeDBClusterParameterGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroupsSync(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups {
        if let describeDBClusterParameterGroupsSyncOverride = describeDBClusterParameterGroupsSyncOverride {
            return try describeDBClusterParameterGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupDetailsForDescribeDBClusterParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersAsync(
            input: RDSModel.DescribeDBClusterParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeDBClusterParametersAsyncOverride = describeDBClusterParametersAsyncOverride {
            return try describeDBClusterParametersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBClusterParametersSync(
            input: RDSModel.DescribeDBClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters {
        if let describeDBClusterParametersSyncOverride = describeDBClusterParametersSyncOverride {
            return try describeDBClusterParametersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesAsync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotAttributesAsyncOverride = describeDBClusterSnapshotAttributesAsyncOverride {
            return try describeDBClusterSnapshotAttributesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributesSync(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes {
        if let describeDBClusterSnapshotAttributesSyncOverride = describeDBClusterSnapshotAttributesSyncOverride {
            return try describeDBClusterSnapshotAttributesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
         - completion: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBClusterSnapshotMessageForDescribeDBClusterSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsAsync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBClusterSnapshotsAsyncOverride = describeDBClusterSnapshotsAsyncOverride {
            return try describeDBClusterSnapshotsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: The DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotsSync(
            input: RDSModel.DescribeDBClusterSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots {
        if let describeDBClusterSnapshotsSyncOverride = describeDBClusterSnapshotsSyncOverride {
            return try describeDBClusterSnapshotsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
         - completion: The DBClusterMessageForDescribeDBClusters object or an error will be passed to this 
           callback when the operation is complete. The DBClusterMessageForDescribeDBClusters
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClustersAsync(
            input: RDSModel.DescribeDBClustersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterMessageForDescribeDBClusters, HTTPClientError>) -> ()) throws {
        if let describeDBClustersAsyncOverride = describeDBClustersAsyncOverride {
            return try describeDBClustersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: The DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound.
     */
    public func describeDBClustersSync(
            input: RDSModel.DescribeDBClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterMessageForDescribeDBClusters {
        if let describeDBClustersSyncOverride = describeDBClustersSyncOverride {
            return try describeDBClustersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
         - completion: The DBEngineVersionMessageForDescribeDBEngineVersions object or an error will be passed to this 
           callback when the operation is complete. The DBEngineVersionMessageForDescribeDBEngineVersions
           object will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsAsync(
            input: RDSModel.DescribeDBEngineVersionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions, HTTPClientError>) -> ()) throws {
        if let describeDBEngineVersionsAsyncOverride = describeDBEngineVersionsAsyncOverride {
            return try describeDBEngineVersionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBEngineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: The DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersionsSync(
            input: RDSModel.DescribeDBEngineVersionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions {
        if let describeDBEngineVersionsSyncOverride = describeDBEngineVersionsSyncOverride {
            return try describeDBEngineVersionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
         - completion: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsAsync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups, HTTPClientError>) -> ()) throws {
        if let describeDBInstanceAutomatedBackupsAsyncOverride = describeDBInstanceAutomatedBackupsAsyncOverride {
            return try describeDBInstanceAutomatedBackupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: The DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackupsSync(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups {
        if let describeDBInstanceAutomatedBackupsSyncOverride = describeDBInstanceAutomatedBackupsSyncOverride {
            return try describeDBInstanceAutomatedBackupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
         - completion: The DBInstanceMessageForDescribeDBInstances object or an error will be passed to this 
           callback when the operation is complete. The DBInstanceMessageForDescribeDBInstances
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBInstancesAsync(
            input: RDSModel.DescribeDBInstancesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBInstanceMessageForDescribeDBInstances, HTTPClientError>) -> ()) throws {
        if let describeDBInstancesAsyncOverride = describeDBInstancesAsyncOverride {
            return try describeDBInstancesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: The DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBInstancesSync(
            input: RDSModel.DescribeDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBInstanceMessageForDescribeDBInstances {
        if let describeDBInstancesSyncOverride = describeDBInstancesSyncOverride {
            return try describeDBInstancesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBLogFiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
         - completion: The DescribeDBLogFilesResponseForDescribeDBLogFiles object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBLogFilesResponseForDescribeDBLogFiles
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBLogFilesAsync(
            input: RDSModel.DescribeDBLogFilesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles, HTTPClientError>) -> ()) throws {
        if let describeDBLogFilesAsyncOverride = describeDBLogFilesAsyncOverride {
            return try describeDBLogFilesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBLogFiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: The DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound.
     */
    public func describeDBLogFilesSync(
            input: RDSModel.DescribeDBLogFilesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles {
        if let describeDBLogFilesSyncOverride = describeDBLogFilesSyncOverride {
            return try describeDBLogFilesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
         - completion: The DBParameterGroupsMessageForDescribeDBParameterGroups object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupsMessageForDescribeDBParameterGroups
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsAsync(
            input: RDSModel.DescribeDBParameterGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups, HTTPClientError>) -> ()) throws {
        if let describeDBParameterGroupsAsyncOverride = describeDBParameterGroupsAsyncOverride {
            return try describeDBParameterGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBParameterGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: The DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroupsSync(
            input: RDSModel.DescribeDBParameterGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups {
        if let describeDBParameterGroupsSyncOverride = describeDBParameterGroupsSyncOverride {
            return try describeDBParameterGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
         - completion: The DBParameterGroupDetailsForDescribeDBParameters object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupDetailsForDescribeDBParameters
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParametersAsync(
            input: RDSModel.DescribeDBParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupDetailsForDescribeDBParameters, HTTPClientError>) -> ()) throws {
        if let describeDBParametersAsyncOverride = describeDBParametersAsyncOverride {
            return try describeDBParametersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: The DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound.
     */
    public func describeDBParametersSync(
            input: RDSModel.DescribeDBParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupDetailsForDescribeDBParameters {
        if let describeDBParametersSyncOverride = describeDBParametersSyncOverride {
            return try describeDBParametersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
         - completion: The DescribeDBProxiesResponseForDescribeDBProxies object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxiesResponseForDescribeDBProxies
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound.
     */
    public func describeDBProxiesAsync(
            input: RDSModel.DescribeDBProxiesRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies, HTTPClientError>) -> ()) throws {
        if let describeDBProxiesAsyncOverride = describeDBProxiesAsyncOverride {
            return try describeDBProxiesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxies operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: The DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound.
     */
    public func describeDBProxiesSync(
            input: RDSModel.DescribeDBProxiesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBProxiesResponseForDescribeDBProxies {
        if let describeDBProxiesSyncOverride = describeDBProxiesSyncOverride {
            return try describeDBProxiesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBProxyTargetGroupNotFound.
     */
    public func describeDBProxyTargetGroupsAsync(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups, HTTPClientError>) -> ()) throws {
        if let describeDBProxyTargetGroupsAsyncOverride = describeDBProxyTargetGroupsAsyncOverride {
            return try describeDBProxyTargetGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyTargetGroupNotFound.
     */
    public func describeDBProxyTargetGroupsSync(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups {
        if let describeDBProxyTargetGroupsSyncOverride = describeDBProxyTargetGroupsSyncOverride {
            return try describeDBProxyTargetGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
         - completion: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func describeDBProxyTargetsAsync(
            input: RDSModel.DescribeDBProxyTargetsRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let describeDBProxyTargetsAsyncOverride = describeDBProxyTargetsAsyncOverride {
            return try describeDBProxyTargetsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: The DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound.
     */
    public func describeDBProxyTargetsSync(
            input: RDSModel.DescribeDBProxyTargetsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets {
        if let describeDBProxyTargetsSyncOverride = describeDBProxyTargetsSyncOverride {
            return try describeDBProxyTargetsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
         - completion: The DBSecurityGroupMessageForDescribeDBSecurityGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSecurityGroupMessageForDescribeDBSecurityGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsAsync(
            input: RDSModel.DescribeDBSecurityGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSecurityGroupsAsyncOverride = describeDBSecurityGroupsAsyncOverride {
            return try describeDBSecurityGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: The DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroupsSync(
            input: RDSModel.DescribeDBSecurityGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups {
        if let describeDBSecurityGroupsSyncOverride = describeDBSecurityGroupsSyncOverride {
            return try describeDBSecurityGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
         - completion: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object or an error will be passed to this 
           callback when the operation is complete. The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesAsync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotAttributesAsyncOverride = describeDBSnapshotAttributesAsyncOverride {
            return try describeDBSnapshotAttributesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: The DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributesSync(
            input: RDSModel.DescribeDBSnapshotAttributesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes {
        if let describeDBSnapshotAttributesSyncOverride = describeDBSnapshotAttributesSyncOverride {
            return try describeDBSnapshotAttributesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
         - completion: The DBSnapshotMessageForDescribeDBSnapshots object or an error will be passed to this 
           callback when the operation is complete. The DBSnapshotMessageForDescribeDBSnapshots
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsAsync(
            input: RDSModel.DescribeDBSnapshotsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSnapshotMessageForDescribeDBSnapshots, HTTPClientError>) -> ()) throws {
        if let describeDBSnapshotsAsyncOverride = describeDBSnapshotsAsyncOverride {
            return try describeDBSnapshotsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: The DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func describeDBSnapshotsSync(
            input: RDSModel.DescribeDBSnapshotsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSnapshotMessageForDescribeDBSnapshots {
        if let describeDBSnapshotsSyncOverride = describeDBSnapshotsSyncOverride {
            return try describeDBSnapshotsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
         - completion: The DBSubnetGroupMessageForDescribeDBSubnetGroups object or an error will be passed to this 
           callback when the operation is complete. The DBSubnetGroupMessageForDescribeDBSubnetGroups
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsAsync(
            input: RDSModel.DescribeDBSubnetGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups, HTTPClientError>) -> ()) throws {
        if let describeDBSubnetGroupsAsyncOverride = describeDBSubnetGroupsAsyncOverride {
            return try describeDBSubnetGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDBSubnetGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: The DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroupsSync(
            input: RDSModel.DescribeDBSubnetGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups {
        if let describeDBSubnetGroupsSyncOverride = describeDBSubnetGroupsSyncOverride {
            return try describeDBSubnetGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersAsync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultClusterParametersAsyncOverride = describeEngineDefaultClusterParametersAsyncOverride {
            return try describeEngineDefaultClusterParametersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParametersSync(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters {
        if let describeEngineDefaultClusterParametersSyncOverride = describeEngineDefaultClusterParametersSyncOverride {
            return try describeEngineDefaultClusterParametersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
         - completion: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object or an error will be passed to this 
           callback when the operation is complete. The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters
           object will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersAsync(
            input: RDSModel.DescribeEngineDefaultParametersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters, HTTPClientError>) -> ()) throws {
        if let describeEngineDefaultParametersAsyncOverride = describeEngineDefaultParametersAsyncOverride {
            return try describeEngineDefaultParametersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: The DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParametersSync(
            input: RDSModel.DescribeEngineDefaultParametersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters {
        if let describeEngineDefaultParametersSyncOverride = describeEngineDefaultParametersSyncOverride {
            return try describeEngineDefaultParametersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeEventCategories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
         - completion: The EventCategoriesMessageForDescribeEventCategories object or an error will be passed to this 
           callback when the operation is complete. The EventCategoriesMessageForDescribeEventCategories
           object will be validated before being returned to caller.
     */
    public func describeEventCategoriesAsync(
            input: RDSModel.DescribeEventCategoriesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventCategoriesMessageForDescribeEventCategories, HTTPClientError>) -> ()) throws {
        if let describeEventCategoriesAsyncOverride = describeEventCategoriesAsyncOverride {
            return try describeEventCategoriesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEventCategories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: The EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategoriesSync(
            input: RDSModel.DescribeEventCategoriesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventCategoriesMessageForDescribeEventCategories {
        if let describeEventCategoriesSyncOverride = describeEventCategoriesSyncOverride {
            return try describeEventCategoriesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
         - completion: The EventSubscriptionsMessageForDescribeEventSubscriptions object or an error will be passed to this 
           callback when the operation is complete. The EventSubscriptionsMessageForDescribeEventSubscriptions
           object will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    public func describeEventSubscriptionsAsync(
            input: RDSModel.DescribeEventSubscriptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions, HTTPClientError>) -> ()) throws {
        if let describeEventSubscriptionsAsyncOverride = describeEventSubscriptionsAsyncOverride {
            return try describeEventSubscriptionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEventSubscriptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: The EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: subscriptionNotFound.
     */
    public func describeEventSubscriptionsSync(
            input: RDSModel.DescribeEventSubscriptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions {
        if let describeEventSubscriptionsSyncOverride = describeEventSubscriptionsSyncOverride {
            return try describeEventSubscriptionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
         - completion: The EventsMessageForDescribeEvents object or an error will be passed to this 
           callback when the operation is complete. The EventsMessageForDescribeEvents
           object will be validated before being returned to caller.
     */
    public func describeEventsAsync(
            input: RDSModel.DescribeEventsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.EventsMessageForDescribeEvents, HTTPClientError>) -> ()) throws {
        if let describeEventsAsyncOverride = describeEventsAsyncOverride {
            return try describeEventsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: The EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventsSync(
            input: RDSModel.DescribeEventsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.EventsMessageForDescribeEvents {
        if let describeEventsSyncOverride = describeEventsSyncOverride {
            return try describeEventsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
         - completion: The ExportTasksMessageForDescribeExportTasks object or an error will be passed to this 
           callback when the operation is complete. The ExportTasksMessageForDescribeExportTasks
           object will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound.
     */
    public func describeExportTasksAsync(
            input: RDSModel.DescribeExportTasksMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ExportTasksMessageForDescribeExportTasks, HTTPClientError>) -> ()) throws {
        if let describeExportTasksAsyncOverride = describeExportTasksAsyncOverride {
            return try describeExportTasksAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: The ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportTaskNotFound.
     */
    public func describeExportTasksSync(
            input: RDSModel.DescribeExportTasksMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ExportTasksMessageForDescribeExportTasks {
        if let describeExportTasksSyncOverride = describeExportTasksSyncOverride {
            return try describeExportTasksSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeGlobalClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
         - completion: The GlobalClustersMessageForDescribeGlobalClusters object or an error will be passed to this 
           callback when the operation is complete. The GlobalClustersMessageForDescribeGlobalClusters
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    public func describeGlobalClustersAsync(
            input: RDSModel.DescribeGlobalClustersMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.GlobalClustersMessageForDescribeGlobalClusters, HTTPClientError>) -> ()) throws {
        if let describeGlobalClustersAsyncOverride = describeGlobalClustersAsyncOverride {
            return try describeGlobalClustersAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeGlobalClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: The GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound.
     */
    public func describeGlobalClustersSync(
            input: RDSModel.DescribeGlobalClustersMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.GlobalClustersMessageForDescribeGlobalClusters {
        if let describeGlobalClustersSyncOverride = describeGlobalClustersSyncOverride {
            return try describeGlobalClustersSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaMessageForDescribeInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaMessageForDescribeInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func describeInstallationMediaAsync(
            input: RDSModel.DescribeInstallationMediaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.InstallationMediaMessageForDescribeInstallationMedia, HTTPClientError>) -> ()) throws {
        if let describeInstallationMediaAsyncOverride = describeInstallationMediaAsyncOverride {
            return try describeInstallationMediaAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaMessageForDescribeInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: installationMediaNotFound.
     */
    public func describeInstallationMediaSync(
            input: RDSModel.DescribeInstallationMediaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.InstallationMediaMessageForDescribeInstallationMedia {
        if let describeInstallationMediaSyncOverride = describeInstallationMediaSyncOverride {
            return try describeInstallationMediaSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
         - completion: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupOptionsMessageForDescribeOptionGroupOptions
           object will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsAsync(
            input: RDSModel.DescribeOptionGroupOptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupOptionsAsyncOverride = describeOptionGroupOptionsAsyncOverride {
            return try describeOptionGroupOptionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOptionGroupOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: The OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptionsSync(
            input: RDSModel.DescribeOptionGroupOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions {
        if let describeOptionGroupOptionsSyncOverride = describeOptionGroupOptionsSyncOverride {
            return try describeOptionGroupOptionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeOptionGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
         - completion: The OptionGroupsForDescribeOptionGroups object or an error will be passed to this 
           callback when the operation is complete. The OptionGroupsForDescribeOptionGroups
           object will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    public func describeOptionGroupsAsync(
            input: RDSModel.DescribeOptionGroupsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OptionGroupsForDescribeOptionGroups, HTTPClientError>) -> ()) throws {
        if let describeOptionGroupsAsyncOverride = describeOptionGroupsAsyncOverride {
            return try describeOptionGroupsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOptionGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: The OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: optionGroupNotFound.
     */
    public func describeOptionGroupsSync(
            input: RDSModel.DescribeOptionGroupsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OptionGroupsForDescribeOptionGroups {
        if let describeOptionGroupsSyncOverride = describeOptionGroupsSyncOverride {
            return try describeOptionGroupsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
         - completion: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object or an error will be passed to this 
           callback when the operation is complete. The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions
           object will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsAsync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions, HTTPClientError>) -> ()) throws {
        if let describeOrderableDBInstanceOptionsAsyncOverride = describeOrderableDBInstanceOptionsAsyncOverride {
            return try describeOrderableDBInstanceOptionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: The OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptionsSync(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions {
        if let describeOrderableDBInstanceOptionsSyncOverride = describeOrderableDBInstanceOptionsSyncOverride {
            return try describeOrderableDBInstanceOptionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
         - completion: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object or an error will be passed to this 
           callback when the operation is complete. The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    public func describePendingMaintenanceActionsAsync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions, HTTPClientError>) -> ()) throws {
        if let describePendingMaintenanceActionsAsyncOverride = describePendingMaintenanceActionsAsyncOverride {
            return try describePendingMaintenanceActionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: The PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound.
     */
    public func describePendingMaintenanceActionsSync(
            input: RDSModel.DescribePendingMaintenanceActionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions {
        if let describePendingMaintenanceActionsSyncOverride = describePendingMaintenanceActionsSyncOverride {
            return try describePendingMaintenanceActionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
         - completion: The ReservedDBInstanceMessageForDescribeReservedDBInstances object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstanceMessageForDescribeReservedDBInstances
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesAsync(
            input: RDSModel.DescribeReservedDBInstancesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesAsyncOverride = describeReservedDBInstancesAsyncOverride {
            return try describeReservedDBInstancesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedDBInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: The ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstancesSync(
            input: RDSModel.DescribeReservedDBInstancesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances {
        if let describeReservedDBInstancesSyncOverride = describeReservedDBInstancesSyncOverride {
            return try describeReservedDBInstancesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
         - completion: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object or an error will be passed to this 
           callback when the operation is complete. The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsAsync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings, HTTPClientError>) -> ()) throws {
        if let describeReservedDBInstancesOfferingsAsyncOverride = describeReservedDBInstancesOfferingsAsyncOverride {
            return try describeReservedDBInstancesOfferingsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: The ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferingsSync(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings {
        if let describeReservedDBInstancesOfferingsSyncOverride = describeReservedDBInstancesOfferingsSyncOverride {
            return try describeReservedDBInstancesOfferingsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeSourceRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
         - completion: The SourceRegionMessageForDescribeSourceRegions object or an error will be passed to this 
           callback when the operation is complete. The SourceRegionMessageForDescribeSourceRegions
           object will be validated before being returned to caller.
     */
    public func describeSourceRegionsAsync(
            input: RDSModel.DescribeSourceRegionsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.SourceRegionMessageForDescribeSourceRegions, HTTPClientError>) -> ()) throws {
        if let describeSourceRegionsAsyncOverride = describeSourceRegionsAsyncOverride {
            return try describeSourceRegionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSourceRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: The SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegionsSync(
            input: RDSModel.DescribeSourceRegionsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.SourceRegionMessageForDescribeSourceRegions {
        if let describeSourceRegionsSyncOverride = describeSourceRegionsSyncOverride {
            return try describeSourceRegionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
         - completion: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object or an error will be passed to this 
           callback when the operation is complete. The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsAsync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications, HTTPClientError>) -> ()) throws {
        if let describeValidDBInstanceModificationsAsyncOverride = describeValidDBInstanceModificationsAsyncOverride {
            return try describeValidDBInstanceModificationsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: The DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModificationsSync(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications {
        if let describeValidDBInstanceModificationsSyncOverride = describeValidDBInstanceModificationsSyncOverride {
            return try describeValidDBInstanceModificationsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
         - completion: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object or an error will be passed to this 
           callback when the operation is complete. The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionAsync(
            input: RDSModel.DownloadDBLogFilePortionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion, HTTPClientError>) -> ()) throws {
        if let downloadDBLogFilePortionAsyncOverride = downloadDBLogFilePortionAsyncOverride {
            return try downloadDBLogFilePortionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DownloadDBLogFilePortion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: The DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortionSync(
            input: RDSModel.DownloadDBLogFilePortionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion {
        if let downloadDBLogFilePortionSyncOverride = downloadDBLogFilePortionSyncOverride {
            return try downloadDBLogFilePortionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the FailoverDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
         - completion: The FailoverDBClusterResultForFailoverDBCluster object or an error will be passed to this 
           callback when the operation is complete. The FailoverDBClusterResultForFailoverDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterAsync(
            input: RDSModel.FailoverDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.FailoverDBClusterResultForFailoverDBCluster, HTTPClientError>) -> ()) throws {
        if let failoverDBClusterAsyncOverride = failoverDBClusterAsyncOverride {
            return try failoverDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the FailoverDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: The FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBClusterSync(
            input: RDSModel.FailoverDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.FailoverDBClusterResultForFailoverDBCluster {
        if let failoverDBClusterSyncOverride = failoverDBClusterSyncOverride {
            return try failoverDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ImportInstallationMedia operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
         - completion: The InstallationMediaForImportInstallationMedia object or an error will be passed to this 
           callback when the operation is complete. The InstallationMediaForImportInstallationMedia
           object will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    public func importInstallationMediaAsync(
            input: RDSModel.ImportInstallationMediaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.InstallationMediaForImportInstallationMedia, HTTPClientError>) -> ()) throws {
        if let importInstallationMediaAsyncOverride = importInstallationMediaAsyncOverride {
            return try importInstallationMediaAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportInstallationMedia operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
     - Returns: The InstallationMediaForImportInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    public func importInstallationMediaSync(
            input: RDSModel.ImportInstallationMediaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.InstallationMediaForImportInstallationMedia {
        if let importInstallationMediaSyncOverride = importInstallationMediaSyncOverride {
            return try importInstallationMediaSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
         - completion: The TagListMessageForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The TagListMessageForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceAsync(
            input: RDSModel.ListTagsForResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.TagListMessageForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: The TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResourceSync(
            input: RDSModel.ListTagsForResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.TagListMessageForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyCertificates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
         - completion: The ModifyCertificatesResultForModifyCertificates object or an error will be passed to this 
           callback when the operation is complete. The ModifyCertificatesResultForModifyCertificates
           object will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func modifyCertificatesAsync(
            input: RDSModel.ModifyCertificatesMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyCertificatesResultForModifyCertificates, HTTPClientError>) -> ()) throws {
        if let modifyCertificatesAsyncOverride = modifyCertificatesAsyncOverride {
            return try modifyCertificatesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyCertificates operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: The ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: certificateNotFound.
     */
    public func modifyCertificatesSync(
            input: RDSModel.ModifyCertificatesMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyCertificatesResultForModifyCertificates {
        if let modifyCertificatesSyncOverride = modifyCertificatesSyncOverride {
            return try modifyCertificatesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
         - completion: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object or an error will be passed to this 
           callback when the operation is complete. The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacityAsync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity, HTTPClientError>) -> ()) throws {
        if let modifyCurrentDBClusterCapacityAsyncOverride = modifyCurrentDBClusterCapacityAsyncOverride {
            return try modifyCurrentDBClusterCapacityAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: The DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacitySync(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity {
        if let modifyCurrentDBClusterCapacitySyncOverride = modifyCurrentDBClusterCapacitySyncOverride {
            return try modifyCurrentDBClusterCapacitySyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
         - completion: The ModifyDBClusterResultForModifyDBCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterResultForModifyDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterAsync(
            input: RDSModel.ModifyDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterResultForModifyDBCluster, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterAsyncOverride = modifyDBClusterAsyncOverride {
            return try modifyDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: The ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBClusterSync(
            input: RDSModel.ModifyDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterResultForModifyDBCluster {
        if let modifyDBClusterSyncOverride = modifyDBClusterSyncOverride {
            return try modifyDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
         - completion: The DBClusterEndpointForModifyDBClusterEndpoint object or an error will be passed to this 
           callback when the operation is complete. The DBClusterEndpointForModifyDBClusterEndpoint
           object will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointAsync(
            input: RDSModel.ModifyDBClusterEndpointMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterEndpointAsyncOverride = modifyDBClusterEndpointAsyncOverride {
            return try modifyDBClusterEndpointAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: The DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpointSync(
            input: RDSModel.ModifyDBClusterEndpointMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterEndpointForModifyDBClusterEndpoint {
        if let modifyDBClusterEndpointSyncOverride = modifyDBClusterEndpointSyncOverride {
            return try modifyDBClusterEndpointSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupAsync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterParameterGroupAsyncOverride = modifyDBClusterParameterGroupAsyncOverride {
            return try modifyDBClusterParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroupSync(
            input: RDSModel.ModifyDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup {
        if let modifyDBClusterParameterGroupSyncOverride = modifyDBClusterParameterGroupSyncOverride {
            return try modifyDBClusterParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeAsync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBClusterSnapshotAttributeAsyncOverride = modifyDBClusterSnapshotAttributeAsyncOverride {
            return try modifyDBClusterSnapshotAttributeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttributeSync(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute {
        if let modifyDBClusterSnapshotAttributeSyncOverride = modifyDBClusterSnapshotAttributeSyncOverride {
            return try modifyDBClusterSnapshotAttributeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
         - completion: The ModifyDBInstanceResultForModifyDBInstance object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBInstanceResultForModifyDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceAsync(
            input: RDSModel.ModifyDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBInstanceResultForModifyDBInstance, HTTPClientError>) -> ()) throws {
        if let modifyDBInstanceAsyncOverride = modifyDBInstanceAsyncOverride {
            return try modifyDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: The ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstanceSync(
            input: RDSModel.ModifyDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBInstanceResultForModifyDBInstance {
        if let modifyDBInstanceSyncOverride = modifyDBInstanceSyncOverride {
            return try modifyDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForModifyDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForModifyDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupAsync(
            input: RDSModel.ModifyDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBParameterGroupAsyncOverride = modifyDBParameterGroupAsyncOverride {
            return try modifyDBParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroupSync(
            input: RDSModel.ModifyDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup {
        if let modifyDBParameterGroupSyncOverride = modifyDBParameterGroupSyncOverride {
            return try modifyDBParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
         - completion: The ModifyDBProxyResponseForModifyDBProxy object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyResponseForModifyDBProxy
           object will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyAsync(
            input: RDSModel.ModifyDBProxyRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBProxyResponseForModifyDBProxy, HTTPClientError>) -> ()) throws {
        if let modifyDBProxyAsyncOverride = modifyDBProxyAsyncOverride {
            return try modifyDBProxyAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBProxy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: The ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxySync(
            input: RDSModel.ModifyDBProxyRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBProxyResponseForModifyDBProxy {
        if let modifyDBProxySyncOverride = modifyDBProxySyncOverride {
            return try modifyDBProxySyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
         - completion: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    public func modifyDBProxyTargetGroupAsync(
            input: RDSModel.ModifyDBProxyTargetGroupRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBProxyTargetGroupAsyncOverride = modifyDBProxyTargetGroupAsyncOverride {
            return try modifyDBProxyTargetGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: The ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBProxyNotFound, dBProxyTargetGroupNotFound.
     */
    public func modifyDBProxyTargetGroupSync(
            input: RDSModel.ModifyDBProxyTargetGroupRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup {
        if let modifyDBProxyTargetGroupSyncOverride = modifyDBProxyTargetGroupSyncOverride {
            return try modifyDBProxyTargetGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotResultForModifyDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotResultForModifyDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotAsync(
            input: RDSModel.ModifyDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAsyncOverride = modifyDBSnapshotAsyncOverride {
            return try modifyDBSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound.
     */
    public func modifyDBSnapshotSync(
            input: RDSModel.ModifyDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot {
        if let modifyDBSnapshotSyncOverride = modifyDBSnapshotSyncOverride {
            return try modifyDBSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
         - completion: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute
           object will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeAsync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute, HTTPClientError>) -> ()) throws {
        if let modifyDBSnapshotAttributeAsyncOverride = modifyDBSnapshotAttributeAsyncOverride {
            return try modifyDBSnapshotAttributeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: The ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttributeSync(
            input: RDSModel.ModifyDBSnapshotAttributeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute {
        if let modifyDBSnapshotAttributeSyncOverride = modifyDBSnapshotAttributeSyncOverride {
            return try modifyDBSnapshotAttributeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
         - completion: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyDBSubnetGroupResultForModifyDBSubnetGroup
           object will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupAsync(
            input: RDSModel.ModifyDBSubnetGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup, HTTPClientError>) -> ()) throws {
        if let modifyDBSubnetGroupAsyncOverride = modifyDBSubnetGroupAsyncOverride {
            return try modifyDBSubnetGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDBSubnetGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: The ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroupSync(
            input: RDSModel.ModifyDBSubnetGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup {
        if let modifyDBSubnetGroupSyncOverride = modifyDBSubnetGroupSyncOverride {
            return try modifyDBSubnetGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyEventSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
         - completion: The ModifyEventSubscriptionResultForModifyEventSubscription object or an error will be passed to this 
           callback when the operation is complete. The ModifyEventSubscriptionResultForModifyEventSubscription
           object will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionAsync(
            input: RDSModel.ModifyEventSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription, HTTPClientError>) -> ()) throws {
        if let modifyEventSubscriptionAsyncOverride = modifyEventSubscriptionAsyncOverride {
            return try modifyEventSubscriptionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyEventSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: The ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscriptionSync(
            input: RDSModel.ModifyEventSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription {
        if let modifyEventSubscriptionSyncOverride = modifyEventSubscriptionSyncOverride {
            return try modifyEventSubscriptionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
         - completion: The ModifyGlobalClusterResultForModifyGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The ModifyGlobalClusterResultForModifyGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterAsync(
            input: RDSModel.ModifyGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster, HTTPClientError>) -> ()) throws {
        if let modifyGlobalClusterAsyncOverride = modifyGlobalClusterAsyncOverride {
            return try modifyGlobalClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: The ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func modifyGlobalClusterSync(
            input: RDSModel.ModifyGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster {
        if let modifyGlobalClusterSyncOverride = modifyGlobalClusterSyncOverride {
            return try modifyGlobalClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ModifyOptionGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
         - completion: The ModifyOptionGroupResultForModifyOptionGroup object or an error will be passed to this 
           callback when the operation is complete. The ModifyOptionGroupResultForModifyOptionGroup
           object will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupAsync(
            input: RDSModel.ModifyOptionGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ModifyOptionGroupResultForModifyOptionGroup, HTTPClientError>) -> ()) throws {
        if let modifyOptionGroupAsyncOverride = modifyOptionGroupAsyncOverride {
            return try modifyOptionGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyOptionGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: The ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroupSync(
            input: RDSModel.ModifyOptionGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ModifyOptionGroupResultForModifyOptionGroup {
        if let modifyOptionGroupSyncOverride = modifyOptionGroupSyncOverride {
            return try modifyOptionGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplica operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
         - completion: The PromoteReadReplicaResultForPromoteReadReplica object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaResultForPromoteReadReplica
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaAsync(
            input: RDSModel.PromoteReadReplicaMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaResultForPromoteReadReplica, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaAsyncOverride = promoteReadReplicaAsyncOverride {
            return try promoteReadReplicaAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PromoteReadReplica operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplicaSync(
            input: RDSModel.PromoteReadReplicaMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaResultForPromoteReadReplica {
        if let promoteReadReplicaSyncOverride = promoteReadReplicaSyncOverride {
            return try promoteReadReplicaSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
         - completion: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object or an error will be passed to this 
           callback when the operation is complete. The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterAsync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster, HTTPClientError>) -> ()) throws {
        if let promoteReadReplicaDBClusterAsyncOverride = promoteReadReplicaDBClusterAsyncOverride {
            return try promoteReadReplicaDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: The PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBClusterSync(
            input: RDSModel.PromoteReadReplicaDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster {
        if let promoteReadReplicaDBClusterSyncOverride = promoteReadReplicaDBClusterSyncOverride {
            return try promoteReadReplicaDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
         - completion: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering
           object will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingAsync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering, HTTPClientError>) -> ()) throws {
        if let purchaseReservedDBInstancesOfferingAsyncOverride = purchaseReservedDBInstancesOfferingAsyncOverride {
            return try purchaseReservedDBInstancesOfferingAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: The PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOfferingSync(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering {
        if let purchaseReservedDBInstancesOfferingSyncOverride = purchaseReservedDBInstancesOfferingSyncOverride {
            return try purchaseReservedDBInstancesOfferingSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RebootDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
         - completion: The RebootDBInstanceResultForRebootDBInstance object or an error will be passed to this 
           callback when the operation is complete. The RebootDBInstanceResultForRebootDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceAsync(
            input: RDSModel.RebootDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RebootDBInstanceResultForRebootDBInstance, HTTPClientError>) -> ()) throws {
        if let rebootDBInstanceAsyncOverride = rebootDBInstanceAsyncOverride {
            return try rebootDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RebootDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: The RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstanceSync(
            input: RDSModel.RebootDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RebootDBInstanceResultForRebootDBInstance {
        if let rebootDBInstanceSyncOverride = rebootDBInstanceSyncOverride {
            return try rebootDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
         - completion: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object or an error will be passed to this 
           callback when the operation is complete. The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func registerDBProxyTargetsAsync(
            input: RDSModel.RegisterDBProxyTargetsRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets, HTTPClientError>) -> ()) throws {
        if let registerDBProxyTargetsAsyncOverride = registerDBProxyTargetsAsyncOverride {
            return try registerDBProxyTargetsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterDBProxyTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: The RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func registerDBProxyTargetsSync(
            input: RDSModel.RegisterDBProxyTargetsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets {
        if let registerDBProxyTargetsSyncOverride = registerDBProxyTargetsSyncOverride {
            return try registerDBProxyTargetsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
         - completion: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object or an error will be passed to this 
           callback when the operation is complete. The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterAsync(
            input: RDSModel.RemoveFromGlobalClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster, HTTPClientError>) -> ()) throws {
        if let removeFromGlobalClusterAsyncOverride = removeFromGlobalClusterAsyncOverride {
            return try removeFromGlobalClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RemoveFromGlobalCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: The RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalClusterSync(
            input: RDSModel.RemoveFromGlobalClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster {
        if let removeFromGlobalClusterSyncOverride = removeFromGlobalClusterSyncOverride {
            return try removeFromGlobalClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterAsync(
            input: RDSModel.RemoveRoleFromDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBClusterAsyncOverride = removeRoleFromDBClusterAsyncOverride {
            return try removeRoleFromDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBClusterSync(
            input: RDSModel.RemoveRoleFromDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeRoleFromDBClusterSyncOverride = removeRoleFromDBClusterSyncOverride {
            return try removeRoleFromDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceAsync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeRoleFromDBInstanceAsyncOverride = removeRoleFromDBInstanceAsyncOverride {
            return try removeRoleFromDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
     - Throws: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstanceSync(
            input: RDSModel.RemoveRoleFromDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeRoleFromDBInstanceSyncOverride = removeRoleFromDBInstanceSyncOverride {
            return try removeRoleFromDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
         - completion: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object or an error will be passed to this 
           callback when the operation is complete. The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription
           object will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionAsync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription, HTTPClientError>) -> ()) throws {
        if let removeSourceIdentifierFromSubscriptionAsyncOverride = removeSourceIdentifierFromSubscriptionAsyncOverride {
            return try removeSourceIdentifierFromSubscriptionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: The RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscriptionSync(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription {
        if let removeSourceIdentifierFromSubscriptionSyncOverride = removeSourceIdentifierFromSubscriptionSyncOverride {
            return try removeSourceIdentifierFromSubscriptionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceAsync(
            input: RDSModel.RemoveTagsFromResourceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removeTagsFromResourceAsyncOverride = removeTagsFromResourceAsyncOverride {
            return try removeTagsFromResourceAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RemoveTagsFromResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
     - Throws: dBClusterNotFound, dBInstanceNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResourceSync(
            input: RDSModel.RemoveTagsFromResourceMessage,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removeTagsFromResourceSyncOverride = removeTagsFromResourceSyncOverride {
            return try removeTagsFromResourceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
         - completion: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupAsync(
            input: RDSModel.ResetDBClusterParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBClusterParameterGroupAsyncOverride = resetDBClusterParameterGroupAsyncOverride {
            return try resetDBClusterParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: The DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroupSync(
            input: RDSModel.ResetDBClusterParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup {
        if let resetDBClusterParameterGroupSyncOverride = resetDBClusterParameterGroupSyncOverride {
            return try resetDBClusterParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ResetDBParameterGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
         - completion: The DBParameterGroupNameMessageForResetDBParameterGroup object or an error will be passed to this 
           callback when the operation is complete. The DBParameterGroupNameMessageForResetDBParameterGroup
           object will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupAsync(
            input: RDSModel.ResetDBParameterGroupMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup, HTTPClientError>) -> ()) throws {
        if let resetDBParameterGroupAsyncOverride = resetDBParameterGroupAsyncOverride {
            return try resetDBParameterGroupAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetDBParameterGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: The DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroupSync(
            input: RDSModel.ResetDBParameterGroupMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup {
        if let resetDBParameterGroupSyncOverride = resetDBParameterGroupSyncOverride {
            return try resetDBParameterGroupSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
         - completion: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Async(
            input: RDSModel.RestoreDBClusterFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromS3AsyncOverride = restoreDBClusterFromS3AsyncOverride {
            return try restoreDBClusterFromS3AsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: The RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3Sync(
            input: RDSModel.RestoreDBClusterFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 {
        if let restoreDBClusterFromS3SyncOverride = restoreDBClusterFromS3SyncOverride {
            return try restoreDBClusterFromS3SyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotAsync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterFromSnapshotAsyncOverride = restoreDBClusterFromSnapshotAsyncOverride {
            return try restoreDBClusterFromSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshotSync(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot {
        if let restoreDBClusterFromSnapshotSyncOverride = restoreDBClusterFromSnapshotSyncOverride {
            return try restoreDBClusterFromSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeAsync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBClusterToPointInTimeAsyncOverride = restoreDBClusterToPointInTimeAsyncOverride {
            return try restoreDBClusterToPointInTimeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTimeSync(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime {
        if let restoreDBClusterToPointInTimeSyncOverride = restoreDBClusterToPointInTimeSyncOverride {
            return try restoreDBClusterToPointInTimeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
         - completion: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotAsync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromDBSnapshotAsyncOverride = restoreDBInstanceFromDBSnapshotAsyncOverride {
            return try restoreDBInstanceFromDBSnapshotAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshotSync(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot {
        if let restoreDBInstanceFromDBSnapshotSyncOverride = restoreDBInstanceFromDBSnapshotSyncOverride {
            return try restoreDBInstanceFromDBSnapshotSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
         - completion: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Async(
            input: RDSModel.RestoreDBInstanceFromS3Message, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceFromS3AsyncOverride = restoreDBInstanceFromS3AsyncOverride {
            return try restoreDBInstanceFromS3AsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: The RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3Sync(
            input: RDSModel.RestoreDBInstanceFromS3Message,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 {
        if let restoreDBInstanceFromS3SyncOverride = restoreDBInstanceFromS3SyncOverride {
            return try restoreDBInstanceFromS3SyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
         - completion: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object or an error will be passed to this 
           callback when the operation is complete. The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeAsync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime, HTTPClientError>) -> ()) throws {
        if let restoreDBInstanceToPointInTimeAsyncOverride = restoreDBInstanceToPointInTimeAsyncOverride {
            return try restoreDBInstanceToPointInTimeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: The RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTimeSync(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime {
        if let restoreDBInstanceToPointInTimeSyncOverride = restoreDBInstanceToPointInTimeSyncOverride {
            return try restoreDBInstanceToPointInTimeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
         - completion: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object or an error will be passed to this 
           callback when the operation is complete. The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressAsync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress, HTTPClientError>) -> ()) throws {
        if let revokeDBSecurityGroupIngressAsyncOverride = revokeDBSecurityGroupIngressAsyncOverride {
            return try revokeDBSecurityGroupIngressAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: The RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngressSync(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress {
        if let revokeDBSecurityGroupIngressSyncOverride = revokeDBSecurityGroupIngressSyncOverride {
            return try revokeDBSecurityGroupIngressSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StartActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
         - completion: The StartActivityStreamResponseForStartActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StartActivityStreamResponseForStartActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStreamAsync(
            input: RDSModel.StartActivityStreamRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartActivityStreamResponseForStartActivityStream, HTTPClientError>) -> ()) throws {
        if let startActivityStreamAsyncOverride = startActivityStreamAsyncOverride {
            return try startActivityStreamAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: The StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStreamSync(
            input: RDSModel.StartActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartActivityStreamResponseForStartActivityStream {
        if let startActivityStreamSyncOverride = startActivityStreamSyncOverride {
            return try startActivityStreamSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StartDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
         - completion: The StartDBClusterResultForStartDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StartDBClusterResultForStartDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterAsync(
            input: RDSModel.StartDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBClusterResultForStartDBCluster, HTTPClientError>) -> ()) throws {
        if let startDBClusterAsyncOverride = startDBClusterAsyncOverride {
            return try startDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: The StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBClusterSync(
            input: RDSModel.StartDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBClusterResultForStartDBCluster {
        if let startDBClusterSyncOverride = startDBClusterSyncOverride {
            return try startDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StartDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
         - completion: The StartDBInstanceResultForStartDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StartDBInstanceResultForStartDBInstance
           object will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceAsync(
            input: RDSModel.StartDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StartDBInstanceResultForStartDBInstance, HTTPClientError>) -> ()) throws {
        if let startDBInstanceAsyncOverride = startDBInstanceAsyncOverride {
            return try startDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: The StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstanceSync(
            input: RDSModel.StartDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StartDBInstanceResultForStartDBInstance {
        if let startDBInstanceSyncOverride = startDBInstanceSyncOverride {
            return try startDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StartExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
         - completion: The ExportTaskForStartExportTask object or an error will be passed to this 
           callback when the operation is complete. The ExportTaskForStartExportTask
           object will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTaskAsync(
            input: RDSModel.StartExportTaskMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.ExportTaskForStartExportTask, HTTPClientError>) -> ()) throws {
        if let startExportTaskAsyncOverride = startExportTaskAsyncOverride {
            return try startExportTaskAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: The ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTaskSync(
            input: RDSModel.StartExportTaskMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.ExportTaskForStartExportTask {
        if let startExportTaskSyncOverride = startExportTaskSyncOverride {
            return try startExportTaskSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StopActivityStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
         - completion: The StopActivityStreamResponseForStopActivityStream object or an error will be passed to this 
           callback when the operation is complete. The StopActivityStreamResponseForStopActivityStream
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStreamAsync(
            input: RDSModel.StopActivityStreamRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopActivityStreamResponseForStopActivityStream, HTTPClientError>) -> ()) throws {
        if let stopActivityStreamAsyncOverride = stopActivityStreamAsyncOverride {
            return try stopActivityStreamAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopActivityStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: The StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStreamSync(
            input: RDSModel.StopActivityStreamRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopActivityStreamResponseForStopActivityStream {
        if let stopActivityStreamSyncOverride = stopActivityStreamSyncOverride {
            return try stopActivityStreamSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StopDBCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
         - completion: The StopDBClusterResultForStopDBCluster object or an error will be passed to this 
           callback when the operation is complete. The StopDBClusterResultForStopDBCluster
           object will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterAsync(
            input: RDSModel.StopDBClusterMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBClusterResultForStopDBCluster, HTTPClientError>) -> ()) throws {
        if let stopDBClusterAsyncOverride = stopDBClusterAsyncOverride {
            return try stopDBClusterAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopDBCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: The StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBClusterSync(
            input: RDSModel.StopDBClusterMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBClusterResultForStopDBCluster {
        if let stopDBClusterSyncOverride = stopDBClusterSyncOverride {
            return try stopDBClusterSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StopDBInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
         - completion: The StopDBInstanceResultForStopDBInstance object or an error will be passed to this 
           callback when the operation is complete. The StopDBInstanceResultForStopDBInstance
           object will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceAsync(
            input: RDSModel.StopDBInstanceMessage, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSModel.StopDBInstanceResultForStopDBInstance, HTTPClientError>) -> ()) throws {
        if let stopDBInstanceAsyncOverride = stopDBInstanceAsyncOverride {
            return try stopDBInstanceAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopDBInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: The StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstanceSync(
            input: RDSModel.StopDBInstanceMessage,
            reporting: SmokeAWSInvocationReporting) throws -> RDSModel.StopDBInstanceResultForStopDBInstance {
        if let stopDBInstanceSyncOverride = stopDBInstanceSyncOverride {
            return try stopDBInstanceSyncOverride(input, reporting)
        }

        throw error
    }
}
