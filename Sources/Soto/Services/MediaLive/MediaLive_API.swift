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

@_exported import SotoCore

/// Service object for interacting with AWS MediaLive service.
///
/// API for AWS Elemental MediaLive
public struct MediaLive: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaLive client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "medialive",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            errorType: MediaLiveErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Accept an incoming input device transfer. The ownership of the device will transfer to your AWS account.
    public func acceptInputDeviceTransfer(_ input: AcceptInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptInputDeviceTransferResponse> {
        return self.client.execute(operation: "AcceptInputDeviceTransfer", path: "/prod/inputDevices/{InputDeviceId}/accept", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts delete of resources.
    public func batchDelete(_ input: BatchDeleteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteResponse> {
        return self.client.execute(operation: "BatchDelete", path: "/prod/batch/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts existing resources
    public func batchStart(_ input: BatchStartRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStartResponse> {
        return self.client.execute(operation: "BatchStart", path: "/prod/batch/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops running resources
    public func batchStop(_ input: BatchStopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchStopResponse> {
        return self.client.execute(operation: "BatchStop", path: "/prod/batch/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return self.client.execute(operation: "BatchUpdateSchedule", path: "/prod/channels/{ChannelId}/schedule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancel an input device transfer that you have requested.
    public func cancelInputDeviceTransfer(_ input: CancelInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelInputDeviceTransferResponse> {
        return self.client.execute(operation: "CancelInputDeviceTransfer", path: "/prod/inputDevices/{InputDeviceId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Send a request to claim an AWS Elemental device that you have purchased from a third-party vendor. After the request succeeds, you will own the device.
    public func claimDevice(_ input: ClaimDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClaimDeviceResponse> {
        return self.client.execute(operation: "ClaimDevice", path: "/prod/claimDevice", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new channel
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return self.client.execute(operation: "CreateChannel", path: "/prod/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an input
    public func createInput(_ input: CreateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputResponse> {
        return self.client.execute(operation: "CreateInput", path: "/prod/inputs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return self.client.execute(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexResponse> {
        return self.client.execute(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return self.client.execute(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{MultiplexId}/programs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a partner input
    public func createPartnerInput(_ input: CreatePartnerInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePartnerInputResponse> {
        return self.client.execute(operation: "CreatePartnerInput", path: "/prod/inputs/{InputId}/partners", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "CreateTags", path: "/prod/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteChannelResponse> {
        return self.client.execute(operation: "DeleteChannel", path: "/prod/channels/{ChannelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputResponse> {
        return self.client.execute(operation: "DeleteInput", path: "/prod/inputs/{InputId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return self.client.execute(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{InputSecurityGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexResponse> {
        return self.client.execute(operation: "DeleteMultiplex", path: "/prod/multiplexes/{MultiplexId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return self.client.execute(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReservationResponse> {
        return self.client.execute(operation: "DeleteReservation", path: "/prod/reservations/{ReservationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduleResponse> {
        return self.client.execute(operation: "DeleteSchedule", path: "/prod/channels/{ChannelId}/schedule", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTags", path: "/prod/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelResponse> {
        return self.client.execute(operation: "DescribeChannel", path: "/prod/channels/{ChannelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces details about an input
    public func describeInput(_ input: DescribeInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputResponse> {
        return self.client.execute(operation: "DescribeInput", path: "/prod/inputs/{InputId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details for the input device
    public func describeInputDevice(_ input: DescribeInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputDeviceResponse> {
        return self.client.execute(operation: "DescribeInputDevice", path: "/prod/inputDevices/{InputDeviceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnail(_ input: DescribeInputDeviceThumbnailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputDeviceThumbnailResponse> {
        return self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{InputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return self.client.execute(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{InputSecurityGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexResponse> {
        return self.client.execute(operation: "DescribeMultiplex", path: "/prod/multiplexes/{MultiplexId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return self.client.execute(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfferingResponse> {
        return self.client.execute(operation: "DescribeOffering", path: "/prod/offerings/{OfferingId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservationResponse> {
        return self.client.execute(operation: "DescribeReservation", path: "/prod/reservations/{ReservationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduleResponse> {
        return self.client.execute(operation: "DescribeSchedule", path: "/prod/channels/{ChannelId}/schedule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return self.client.execute(operation: "ListChannels", path: "/prod/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.
    public func listInputDeviceTransfers(_ input: ListInputDeviceTransfersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputDeviceTransfersResponse> {
        return self.client.execute(operation: "ListInputDeviceTransfers", path: "/prod/inputDeviceTransfers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List input devices
    public func listInputDevices(_ input: ListInputDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputDevicesResponse> {
        return self.client.execute(operation: "ListInputDevices", path: "/prod/inputDevices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return self.client.execute(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputsResponse> {
        return self.client.execute(operation: "ListInputs", path: "/prod/inputs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return self.client.execute(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{MultiplexId}/programs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexesResponse> {
        return self.client.execute(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingsResponse> {
        return self.client.execute(operation: "ListOfferings", path: "/prod/offerings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReservationsResponse> {
        return self.client.execute(operation: "ListReservations", path: "/prod/reservations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/prod/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseOfferingResponse> {
        return self.client.execute(operation: "PurchaseOffering", path: "/prod/offerings/{OfferingId}/purchase", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reject the transfer of the specified input device to your AWS account.
    public func rejectInputDeviceTransfer(_ input: RejectInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectInputDeviceTransferResponse> {
        return self.client.execute(operation: "RejectInputDeviceTransfer", path: "/prod/inputDevices/{InputDeviceId}/reject", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an existing channel
    public func startChannel(_ input: StartChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartChannelResponse> {
        return self.client.execute(operation: "StartChannel", path: "/prod/channels/{ChannelId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMultiplexResponse> {
        return self.client.execute(operation: "StartMultiplex", path: "/prod/multiplexes/{MultiplexId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running channel
    public func stopChannel(_ input: StopChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopChannelResponse> {
        return self.client.execute(operation: "StopChannel", path: "/prod/channels/{ChannelId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMultiplexResponse> {
        return self.client.execute(operation: "StopMultiplex", path: "/prod/multiplexes/{MultiplexId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start an input device transfer to another AWS account. After you make the request, the other account must accept or reject the transfer.
    public func transferInputDevice(_ input: TransferInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferInputDeviceResponse> {
        return self.client.execute(operation: "TransferInputDevice", path: "/prod/inputDevices/{InputDeviceId}/transfer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelResponse> {
        return self.client.execute(operation: "UpdateChannel", path: "/prod/channels/{ChannelId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelClassResponse> {
        return self.client.execute(operation: "UpdateChannelClass", path: "/prod/channels/{ChannelId}/channelClass", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an input.
    public func updateInput(_ input: UpdateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputResponse> {
        return self.client.execute(operation: "UpdateInput", path: "/prod/inputs/{InputId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the parameters for the input device.
    public func updateInputDevice(_ input: UpdateInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputDeviceResponse> {
        return self.client.execute(operation: "UpdateInputDevice", path: "/prod/inputDevices/{InputDeviceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return self.client.execute(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{InputSecurityGroupId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexResponse> {
        return self.client.execute(operation: "UpdateMultiplex", path: "/prod/multiplexes/{MultiplexId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return self.client.execute(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReservationResponse> {
        return self.client.execute(operation: "UpdateReservation", path: "/prod/reservations/{ReservationId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming API Calls

    /// Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnailStreaming(_ input: DescribeInputDeviceThumbnailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) -> EventLoopFuture<DescribeInputDeviceThumbnailResponse> {
        return self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{InputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

extension MediaLive {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaLive, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
