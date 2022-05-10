//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension WorkLink {
    // MARK: Async API Calls

    /// Specifies a domain to be associated to Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func associateDomain(_ input: AssociateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDomainResponse {
        return try await self.client.execute(operation: "AssociateDomain", path: "/associateDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func associateWebsiteAuthorizationProvider(_ input: AssociateWebsiteAuthorizationProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateWebsiteAuthorizationProviderResponse {
        return try await self.client.execute(operation: "AssociateWebsiteAuthorizationProvider", path: "/associateWebsiteAuthorizationProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func associateWebsiteCertificateAuthority(_ input: AssociateWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(operation: "AssociateWebsiteCertificateAuthority", path: "/associateWebsiteCertificateAuthority", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFleetResponse {
        return try await self.client.execute(operation: "CreateFleet", path: "/createFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a fleet. Prevents users from accessing previously associated websites.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func deleteFleet(_ input: DeleteFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFleetResponse {
        return try await self.client.execute(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the configuration for delivering audit streams to the customer account.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeAuditStreamConfiguration(_ input: DescribeAuditStreamConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditStreamConfigurationResponse {
        return try await self.client.execute(operation: "DescribeAuditStreamConfiguration", path: "/describeAuditStreamConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the networking configuration to access the internal websites associated with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeCompanyNetworkConfiguration(_ input: DescribeCompanyNetworkConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompanyNetworkConfigurationResponse {
        return try await self.client.execute(operation: "DescribeCompanyNetworkConfiguration", path: "/describeCompanyNetworkConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about a user's device.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResponse {
        return try await self.client.execute(operation: "DescribeDevice", path: "/describeDevice", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the device policy configuration for the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeDevicePolicyConfiguration(_ input: DescribeDevicePolicyConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePolicyConfigurationResponse {
        return try await self.client.execute(operation: "DescribeDevicePolicyConfiguration", path: "/describeDevicePolicyConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the domain.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResponse {
        return try await self.client.execute(operation: "DescribeDomain", path: "/describeDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeFleetMetadata(_ input: DescribeFleetMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetMetadataResponse {
        return try await self.client.execute(operation: "DescribeFleetMetadata", path: "/describeFleetMetadata", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the identity provider configuration of the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeIdentityProviderConfiguration(_ input: DescribeIdentityProviderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdentityProviderConfigurationResponse {
        return try await self.client.execute(operation: "DescribeIdentityProviderConfiguration", path: "/describeIdentityProviderConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the certificate authority.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func describeWebsiteCertificateAuthority(_ input: DescribeWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(operation: "DescribeWebsiteCertificateAuthority", path: "/describeWebsiteCertificateAuthority", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func disassociateDomain(_ input: DisassociateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDomainResponse {
        return try await self.client.execute(operation: "DisassociateDomain", path: "/disassociateDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func disassociateWebsiteAuthorizationProvider(_ input: DisassociateWebsiteAuthorizationProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateWebsiteAuthorizationProviderResponse {
        return try await self.client.execute(operation: "DisassociateWebsiteAuthorizationProvider", path: "/disassociateWebsiteAuthorizationProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a certificate authority (CA).
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func disassociateWebsiteCertificateAuthority(_ input: DisassociateWebsiteCertificateAuthorityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateWebsiteCertificateAuthorityResponse {
        return try await self.client.execute(operation: "DisassociateWebsiteCertificateAuthority", path: "/disassociateWebsiteCertificateAuthority", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of devices registered with the specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesResponse {
        return try await self.client.execute(operation: "ListDevices", path: "/listDevices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of domains associated to a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsResponse {
        return try await self.client.execute(operation: "ListDomains", path: "/listDomains", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of fleets for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listFleets(_ input: ListFleetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFleetsResponse {
        return try await self.client.execute(operation: "ListFleets", path: "/listFleets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of tags for the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of website authorization providers associated with a specified fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteAuthorizationProviders(_ input: ListWebsiteAuthorizationProvidersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWebsiteAuthorizationProvidersResponse {
        return try await self.client.execute(operation: "ListWebsiteAuthorizationProviders", path: "/listWebsiteAuthorizationProviders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of certificate authorities added for the current account and Region.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func listWebsiteCertificateAuthorities(_ input: ListWebsiteCertificateAuthoritiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWebsiteCertificateAuthoritiesResponse {
        return try await self.client.execute(operation: "ListWebsiteCertificateAuthorities", path: "/listWebsiteCertificateAuthorities", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Moves a domain to ACTIVE status if it was in the INACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func restoreDomainAccess(_ input: RestoreDomainAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreDomainAccessResponse {
        return try await self.client.execute(operation: "RestoreDomainAccess", path: "/restoreDomainAccess", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Moves a domain to INACTIVE status if it was in the ACTIVE status.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func revokeDomainAccess(_ input: RevokeDomainAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeDomainAccessResponse {
        return try await self.client.execute(operation: "RevokeDomainAccess", path: "/revokeDomainAccess", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func signOutUser(_ input: SignOutUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignOutUserResponse {
        return try await self.client.execute(operation: "SignOutUser", path: "/signOutUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified resource.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the audit stream configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateAuditStreamConfiguration(_ input: UpdateAuditStreamConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAuditStreamConfigurationResponse {
        return try await self.client.execute(operation: "UpdateAuditStreamConfiguration", path: "/updateAuditStreamConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the company network configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateCompanyNetworkConfiguration(_ input: UpdateCompanyNetworkConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCompanyNetworkConfigurationResponse {
        return try await self.client.execute(operation: "UpdateCompanyNetworkConfiguration", path: "/updateCompanyNetworkConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the device policy configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateDevicePolicyConfiguration(_ input: UpdateDevicePolicyConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicePolicyConfigurationResponse {
        return try await self.client.execute(operation: "UpdateDevicePolicyConfiguration", path: "/updateDevicePolicyConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates domain metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateDomainMetadata(_ input: UpdateDomainMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainMetadataResponse {
        return try await self.client.execute(operation: "UpdateDomainMetadata", path: "/updateDomainMetadata", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates fleet metadata, such as DisplayName.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateFleetMetadata(_ input: UpdateFleetMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetMetadataResponse {
        return try await self.client.execute(operation: "UpdateFleetMetadata", path: "/UpdateFleetMetadata", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the identity provider configuration for the fleet.
    @available(*, deprecated, message: "Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.")
    public func updateIdentityProviderConfiguration(_ input: UpdateIdentityProviderConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIdentityProviderConfigurationResponse {
        return try await self.client.execute(operation: "UpdateIdentityProviderConfiguration", path: "/updateIdentityProviderConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
