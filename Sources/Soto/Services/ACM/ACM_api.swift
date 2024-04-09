//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

@_exported import SotoCore

/// Service object for interacting with AWS ACM service.
///
/// Certificate Manager You can use Certificate Manager (ACM) to manage SSL/TLS certificates for your Amazon Web Services-based websites and applications. For more information about using ACM, see the Certificate Manager User Guide.
public struct ACM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ACM client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "CertificateManager",
            serviceName: "ACM",
            serviceIdentifier: "acm",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-12-08",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            variantEndpoints: Self.variantEndpoints,
            errorType: ACMErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "us-gov-east-1": "acm.us-gov-east-1.amazonaws.com",
        "us-gov-west-1": "acm.us-gov-west-1.amazonaws.com"
    ]}


    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "acm-fips.ca-central-1.amazonaws.com",
            "ca-west-1": "acm-fips.ca-west-1.amazonaws.com",
            "us-east-1": "acm-fips.us-east-1.amazonaws.com",
            "us-east-2": "acm-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "acm.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "acm.us-gov-west-1.amazonaws.com",
            "us-west-1": "acm-fips.us-west-1.amazonaws.com",
            "us-west-2": "acm-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a key and an optional value. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.  You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see Tagging ACM certificates.  To remove one or more tags, use the RemoveTagsFromCertificate action. To view all of the tags that have been applied to the certificate, use the ListTagsForCertificate action.
    @Sendable
    public func addTagsToCertificate(_ input: AddTagsToCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "AddTagsToCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the ListCertificates action or be retrieved by calling the GetCertificate action. The certificate will not be available for use by Amazon Web Services services integrated with ACM.   You cannot delete an ACM certificate that is being used by another Amazon Web Services service. To delete a certificate that is in use, the certificate association must first be removed.
    @Sendable
    public func deleteCertificate(_ input: DeleteCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns detailed metadata about the specified ACM certificate. If you have just created a certificate using the RequestCertificate action, there is a delay of several seconds before you can retrieve information about it.
    @Sendable
    public func describeCertificate(_ input: DescribeCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCertificateResponse {
        return try await self.client.execute(
            operation: "DescribeCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Exports a private certificate issued by a private certificate authority (CA) for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private 2048-bit RSA key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it.  For information about exporting and formatting a certificate using the ACM console or CLI, see Export a Private Certificate.
    @Sendable
    public func exportCertificate(_ input: ExportCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ExportCertificateResponse {
        return try await self.client.execute(
            operation: "ExportCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the account configuration options associated with an Amazon Web Services account.
    @Sendable
    public func getAccountConfiguration(logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccountConfigurationResponse {
        return try await self.client.execute(
            operation: "GetAccountConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use OpenSSL to decode the certificates and inspect individual fields.
    @Sendable
    public func getCertificate(_ input: GetCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCertificateResponse {
        return try await self.client.execute(
            operation: "GetCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Imports a certificate into Certificate Manager (ACM) to use with services that are integrated with ACM. Note that integrated services allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see Importing Certificates in the Certificate Manager User Guide.   ACM does not provide managed renewal for certificates that you import.  Note the following guidelines when importing third party certificates:   You must enter the private key that matches the certificate you are importing.   The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.   The private key must be no larger than 5 KB (5,120 bytes).   If the certificate you are importing is not self-signed, you must enter its certificate chain.   If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.   The certificate, private key, and certificate chain must be PEM-encoded.   The current time must be between the Not Before and Not After certificate fields.   The Issuer field must not be empty.   The OCSP authority URL, if present, must not exceed 1000 characters.   To import a new certificate, omit the CertificateArn argument. Include this argument only when you want to replace a previously imported certificate.   When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by fileb://. For example, you can specify a certificate saved in the C:\temp folder as fileb://C:\temp\certificate_to_import.pem. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs.    When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using.    The cryptographic algorithm of an imported certificate must match the algorithm of the signing CA. For example, if the signing CA key type is RSA, then the certificate key type must also be RSA.   This operation returns the Amazon Resource Name (ARN) of the imported certificate.
    @Sendable
    public func importCertificate(_ input: ImportCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportCertificateResponse {
        return try await self.client.execute(
            operation: "ImportCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see Filters.
    @Sendable
    public func listCertificates(_ input: ListCertificatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCertificatesResponse {
        return try await self.client.execute(
            operation: "ListCertificates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the AddTagsToCertificate action. To delete a tag, use the RemoveTagsFromCertificate action.
    @Sendable
    public func listTagsForCertificate(_ input: ListTagsForCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForCertificateResponse {
        return try await self.client.execute(
            operation: "ListTagsForCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or modifies account-level configurations in ACM.  The supported configuration option is DaysBeforeExpiry. This option specifies the number of days prior to certificate expiration when ACM starts generating EventBridge events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.
    @Sendable
    public func putAccountConfiguration(_ input: PutAccountConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "PutAccountConfiguration", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value.  To add tags to a certificate, use the AddTagsToCertificate action. To view all of the tags that have been applied to a specific ACM certificate, use the ListTagsForCertificate action.
    @Sendable
    public func removeTagsFromCertificate(_ input: RemoveTagsFromCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "RemoveTagsFromCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Renews an eligible ACM certificate. At this time, only exported private certificates can be renewed with this operation. In order to renew your Amazon Web Services Private CA certificates with ACM, you must first grant the ACM service principal permission to do so. For more information, see Testing Managed Renewal in the ACM User Guide.
    @Sendable
    public func renewCertificate(_ input: RenewCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "RenewCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Requests an ACM certificate for use with other Amazon Web Services services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the DomainName parameter. You can also specify additional FQDNs in the SubjectAlternativeNames parameter.  If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use DNS validation or email validation. We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner.   ACM behavior differs from the RFC 6125 specification of the certificate validation process. ACM first checks for a Subject Alternative Name, and, if it finds one, ignores the common name (CN).  After successful completion of the RequestCertificate action, there is a delay of several seconds before you can retrieve information about the new certificate.
    @Sendable
    public func requestCertificate(_ input: RequestCertificateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RequestCertificateResponse {
        return try await self.client.execute(
            operation: "RequestCertificate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking I Approve. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see Configure Email for your Domain.
    @Sendable
    public func resendValidationEmail(_ input: ResendValidationEmailRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "ResendValidationEmail", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see  Opting Out of Certificate Transparency Logging.
    @Sendable
    public func updateCertificateOptions(_ input: UpdateCertificateOptionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UpdateCertificateOptions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ACM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ACM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ACM {
    /// Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see Filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCertificatesPaginator(
        _ input: ListCertificatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCertificatesRequest, ListCertificatesResponse> {
        return .init(
            input: input,
            command: self.listCertificates,
            inputKey: \ListCertificatesRequest.nextToken,
            outputKey: \ListCertificatesResponse.nextToken,
            logger: logger
        )
    }
}

extension ACM.ListCertificatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ACM.ListCertificatesRequest {
        return .init(
            certificateStatuses: self.certificateStatuses,
            includes: self.includes,
            maxItems: self.maxItems,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ACM {
    public func waitUntilCertificateValidated(
        _ input: DescribeCertificateRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("certificate.domainValidationOptions[].validationStatus", expected: "SUCCESS")),
                .init(state: .retry, matcher: try! JMESAnyPathMatcher("certificate.domainValidationOptions[].validationStatus", expected: "PENDING_VALIDATION")),
                .init(state: .failure, matcher: try! JMESPathMatcher("certificate.status", expected: "FAILED")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(60),
            command: self.describeCertificate
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
