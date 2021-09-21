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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension SNS {
    ///  Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM (Firebase Cloud Messaging) and APNS. The results for ListEndpointsByPlatformApplication are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListEndpointsByPlatformApplication again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 30 transactions per second (TPS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEndpointsByPlatformApplicationPaginator(
        _ input: ListEndpointsByPlatformApplicationInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEndpointsByPlatformApplicationInput, ListEndpointsByPlatformApplicationResponse> {
        return .init(
            input: input,
            command: listEndpointsByPlatformApplication,
            inputKey: \ListEndpointsByPlatformApplicationInput.nextToken,
            outputKey: \ListEndpointsByPlatformApplicationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the calling account's dedicated origination numbers and their metadata. For more information about origination numbers, see Origination numbers in the Amazon SNS Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOriginationNumbersPaginator(
        _ input: ListOriginationNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOriginationNumbersRequest, ListOriginationNumbersResult> {
        return .init(
            input: input,
            command: listOriginationNumbers,
            inputKey: \ListOriginationNumbersRequest.nextToken,
            outputKey: \ListOriginationNumbersResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them. The results for ListPhoneNumbersOptedOut are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a NextToken string will be returned. To receive the next page, you call ListPhoneNumbersOptedOut again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumbersOptedOutPaginator(
        _ input: ListPhoneNumbersOptedOutInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumbersOptedOutInput, ListPhoneNumbersOptedOutResponse> {
        return .init(
            input: input,
            command: listPhoneNumbersOptedOut,
            inputKey: \ListPhoneNumbersOptedOutInput.nextToken,
            outputKey: \ListPhoneNumbersOptedOutResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the platform application objects for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). The results for ListPlatformApplications are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListPlatformApplications using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 15 transactions per second (TPS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlatformApplicationsPaginator(
        _ input: ListPlatformApplicationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlatformApplicationsInput, ListPlatformApplicationsResponse> {
        return .init(
            input: input,
            command: listPlatformApplications,
            inputKey: \ListPlatformApplicationsInput.nextToken,
            outputKey: \ListPlatformApplicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the calling account's current verified and pending destination phone numbers in the SMS sandbox. When you start using Amazon SNS to send SMS messages, your account is in the SMS sandbox. The SMS sandbox provides a safe environment for you to try Amazon SNS features without risking your reputation as an SMS sender. While your account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send SMS messages only to verified destination phone numbers. For more information, including how to move out of the sandbox to send messages without restrictions, see SMS sandbox in the Amazon SNS Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSMSSandboxPhoneNumbersPaginator(
        _ input: ListSMSSandboxPhoneNumbersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSMSSandboxPhoneNumbersInput, ListSMSSandboxPhoneNumbersResult> {
        return .init(
            input: input,
            command: listSMSSandboxPhoneNumbers,
            inputKey: \ListSMSSandboxPhoneNumbersInput.nextToken,
            outputKey: \ListSMSSandboxPhoneNumbersResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptions call to get further results. This action is throttled at 30 transactions per second (TPS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSubscriptionsPaginator(
        _ input: ListSubscriptionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSubscriptionsInput, ListSubscriptionsResponse> {
        return .init(
            input: input,
            command: listSubscriptions,
            inputKey: \ListSubscriptionsInput.nextToken,
            outputKey: \ListSubscriptionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptionsByTopic call to get further results. This action is throttled at 30 transactions per second (TPS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSubscriptionsByTopicPaginator(
        _ input: ListSubscriptionsByTopicInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSubscriptionsByTopicInput, ListSubscriptionsByTopicResponse> {
        return .init(
            input: input,
            command: listSubscriptionsByTopic,
            inputKey: \ListSubscriptionsByTopicInput.nextToken,
            outputKey: \ListSubscriptionsByTopicResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a NextToken is also returned. Use the NextToken parameter in a new ListTopics call to get further results. This action is throttled at 30 transactions per second (TPS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTopicsPaginator(
        _ input: ListTopicsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTopicsInput, ListTopicsResponse> {
        return .init(
            input: input,
            command: listTopics,
            inputKey: \ListTopicsInput.nextToken,
            outputKey: \ListTopicsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
