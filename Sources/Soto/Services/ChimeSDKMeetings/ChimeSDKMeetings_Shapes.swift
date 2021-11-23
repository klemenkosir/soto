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

import Foundation
import SotoCore

extension ChimeSDKMeetings {
    // MARK: Enums

    public enum TranscribeContentIdentificationType: String, CustomStringConvertible, Codable {
        case pii = "PII"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeContentRedactionType: String, CustomStringConvertible, Codable {
        case pii = "PII"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeLanguageCode: String, CustomStringConvertible, Codable {
        case deDe = "de-DE"
        case enAu = "en-AU"
        case enGb = "en-GB"
        case enUs = "en-US"
        case esUs = "es-US"
        case frCa = "fr-CA"
        case frFr = "fr-FR"
        case itIt = "it-IT"
        case jaJp = "ja-JP"
        case koKr = "ko-KR"
        case ptBr = "pt-BR"
        case zhCn = "zh-CN"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeMedicalContentIdentificationType: String, CustomStringConvertible, Codable {
        case phi = "PHI"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeMedicalLanguageCode: String, CustomStringConvertible, Codable {
        case enUs = "en-US"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeMedicalRegion: String, CustomStringConvertible, Codable {
        case apSoutheast2 = "ap-southeast-2"
        case auto
        case caCentral1 = "ca-central-1"
        case euWest1 = "eu-west-1"
        case usEast1 = "us-east-1"
        case usEast2 = "us-east-2"
        case usWest2 = "us-west-2"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeMedicalSpecialty: String, CustomStringConvertible, Codable {
        case cardiology = "CARDIOLOGY"
        case neurology = "NEUROLOGY"
        case oncology = "ONCOLOGY"
        case primarycare = "PRIMARYCARE"
        case radiology = "RADIOLOGY"
        case urology = "UROLOGY"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeMedicalType: String, CustomStringConvertible, Codable {
        case conversation = "CONVERSATION"
        case dictation = "DICTATION"
        public var description: String { return self.rawValue }
    }

    public enum TranscribePartialResultsStability: String, CustomStringConvertible, Codable {
        case high
        case low
        case medium
        public var description: String { return self.rawValue }
    }

    public enum TranscribeRegion: String, CustomStringConvertible, Codable {
        case apNortheast1 = "ap-northeast-1"
        case apNortheast2 = "ap-northeast-2"
        case apSoutheast2 = "ap-southeast-2"
        case auto
        case caCentral1 = "ca-central-1"
        case euCentral1 = "eu-central-1"
        case euWest1 = "eu-west-1"
        case euWest2 = "eu-west-2"
        case saEast1 = "sa-east-1"
        case usEast1 = "us-east-1"
        case usEast2 = "us-east-2"
        case usWest2 = "us-west-2"
        public var description: String { return self.rawValue }
    }

    public enum TranscribeVocabularyFilterMethod: String, CustomStringConvertible, Codable {
        case mask
        case remove
        case tag
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Attendee: AWSDecodableShape {
        /// The Amazon Chime SDK attendee ID.
        public let attendeeId: String?
        /// The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.
        public let externalUserId: String?
        /// The join token used by the Amazon Chime SDK attendee.
        public let joinToken: String?

        public init(attendeeId: String? = nil, externalUserId: String? = nil, joinToken: String? = nil) {
            self.attendeeId = attendeeId
            self.externalUserId = externalUserId
            self.joinToken = joinToken
        }

        private enum CodingKeys: String, CodingKey {
            case attendeeId = "AttendeeId"
            case externalUserId = "ExternalUserId"
            case joinToken = "JoinToken"
        }
    }

    public struct BatchCreateAttendeeRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The attendee information, including attendees' IDs and join tokens.
        public let attendees: [CreateAttendeeRequestItem]
        /// The Amazon Chime SDK ID of the meeting to which you're adding attendees.
        public let meetingId: String

        public init(attendees: [CreateAttendeeRequestItem], meetingId: String) {
            self.attendees = attendees
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.attendees.forEach {
                try $0.validate(name: "\(name).attendees[]")
            }
            try self.validate(self.attendees, name: "attendees", parent: name, max: 100)
            try self.validate(self.attendees, name: "attendees", parent: name, min: 1)
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case attendees = "Attendees"
        }
    }

    public struct BatchCreateAttendeeResponse: AWSDecodableShape {
        /// The attendee information, including attendees' IDs and join tokens.
        public let attendees: [Attendee]?
        /// If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.
        public let errors: [CreateAttendeeError]?

        public init(attendees: [Attendee]? = nil, errors: [CreateAttendeeError]? = nil) {
            self.attendees = attendees
            self.errors = errors
        }

        private enum CodingKeys: String, CodingKey {
            case attendees = "Attendees"
            case errors = "Errors"
        }
    }

    public struct CreateAttendeeError: AWSDecodableShape {
        /// The error code.
        public let errorCode: String?
        /// The error message.
        public let errorMessage: String?
        /// The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.
        public let externalUserId: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil, externalUserId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.externalUserId = externalUserId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case externalUserId = "ExternalUserId"
        }
    }

    public struct CreateAttendeeRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.
        public let externalUserId: String
        /// The unique ID of the meeting.
        public let meetingId: String

        public init(externalUserId: String, meetingId: String) {
            self.externalUserId = externalUserId
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.externalUserId, name: "externalUserId", parent: name, max: 64)
            try self.validate(self.externalUserId, name: "externalUserId", parent: name, min: 2)
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case externalUserId = "ExternalUserId"
        }
    }

    public struct CreateAttendeeRequestItem: AWSEncodableShape {
        /// The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.
        public let externalUserId: String

        public init(externalUserId: String) {
            self.externalUserId = externalUserId
        }

        public func validate(name: String) throws {
            try self.validate(self.externalUserId, name: "externalUserId", parent: name, max: 64)
            try self.validate(self.externalUserId, name: "externalUserId", parent: name, min: 2)
        }

        private enum CodingKeys: String, CodingKey {
            case externalUserId = "ExternalUserId"
        }
    }

    public struct CreateAttendeeResponse: AWSDecodableShape {
        /// The attendee information, including attendee ID and join token.
        public let attendee: Attendee?

        public init(attendee: Attendee? = nil) {
            self.attendee = attendee
        }

        private enum CodingKeys: String, CodingKey {
            case attendee = "Attendee"
        }
    }

    public struct CreateMeetingRequest: AWSEncodableShape {
        /// The unique identifier for the client request. Use a different token for different meetings.
        public let clientRequestToken: String
        /// The external meeting ID.
        public let externalMeetingId: String
        /// The Region in which to create the meeting.   Available values:  af-south-1 ,  ap-northeast-1 ,  ap-northeast-2 ,  ap-south-1 ,  ap-southeast-1 ,  ap-southeast-2 ,  ca-central-1 ,  eu-central-1 ,  eu-north-1 ,  eu-south-1 ,  eu-west-1 ,  eu-west-2 ,  eu-west-3 ,  sa-east-1 ,  us-east-1 ,  us-east-2 ,  us-west-1 ,  us-west-2 .
        public let mediaRegion: String
        /// Reserved.
        public let meetingHostId: String?
        /// The configuration for resource targets to receive notifications when meeting and attendee events occur.
        public let notificationsConfiguration: NotificationsConfiguration?

        public init(clientRequestToken: String = CreateMeetingRequest.idempotencyToken(), externalMeetingId: String, mediaRegion: String, meetingHostId: String? = nil, notificationsConfiguration: NotificationsConfiguration? = nil) {
            self.clientRequestToken = clientRequestToken
            self.externalMeetingId = externalMeetingId
            self.mediaRegion = mediaRegion
            self.meetingHostId = meetingHostId
            self.notificationsConfiguration = notificationsConfiguration
        }

        public func validate(name: String) throws {
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, max: 64)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, min: 2)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, pattern: "^[-_a-zA-Z0-9]*$")
            try self.validate(self.externalMeetingId, name: "externalMeetingId", parent: name, max: 64)
            try self.validate(self.externalMeetingId, name: "externalMeetingId", parent: name, min: 2)
            try self.validate(self.mediaRegion, name: "mediaRegion", parent: name, max: 64)
            try self.validate(self.mediaRegion, name: "mediaRegion", parent: name, min: 2)
            try self.validate(self.meetingHostId, name: "meetingHostId", parent: name, max: 64)
            try self.validate(self.meetingHostId, name: "meetingHostId", parent: name, min: 2)
            try self.notificationsConfiguration?.validate(name: "\(name).notificationsConfiguration")
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case externalMeetingId = "ExternalMeetingId"
            case mediaRegion = "MediaRegion"
            case meetingHostId = "MeetingHostId"
            case notificationsConfiguration = "NotificationsConfiguration"
        }
    }

    public struct CreateMeetingResponse: AWSDecodableShape {
        /// The meeting information, including the meeting ID and  MediaPlacement.
        public let meeting: Meeting?

        public init(meeting: Meeting? = nil) {
            self.meeting = meeting
        }

        private enum CodingKeys: String, CodingKey {
            case meeting = "Meeting"
        }
    }

    public struct CreateMeetingWithAttendeesRequest: AWSEncodableShape {
        /// The attendee information, including attendees' IDs and join tokens.
        public let attendees: [CreateAttendeeRequestItem]
        /// The unique identifier for the client request. Use a different token for different meetings.
        public let clientRequestToken: String
        /// The external meeting ID.
        public let externalMeetingId: String
        /// The Region in which to create the meeting.
        public let mediaRegion: String
        /// Reserved.
        public let meetingHostId: String?
        /// The configuration for resource targets to receive notifications when meeting and attendee events occur.
        public let notificationsConfiguration: NotificationsConfiguration?

        public init(attendees: [CreateAttendeeRequestItem], clientRequestToken: String = CreateMeetingWithAttendeesRequest.idempotencyToken(), externalMeetingId: String, mediaRegion: String, meetingHostId: String? = nil, notificationsConfiguration: NotificationsConfiguration? = nil) {
            self.attendees = attendees
            self.clientRequestToken = clientRequestToken
            self.externalMeetingId = externalMeetingId
            self.mediaRegion = mediaRegion
            self.meetingHostId = meetingHostId
            self.notificationsConfiguration = notificationsConfiguration
        }

        public func validate(name: String) throws {
            try self.attendees.forEach {
                try $0.validate(name: "\(name).attendees[]")
            }
            try self.validate(self.attendees, name: "attendees", parent: name, max: 20)
            try self.validate(self.attendees, name: "attendees", parent: name, min: 1)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, max: 64)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, min: 2)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, pattern: "^[-_a-zA-Z0-9]*$")
            try self.validate(self.externalMeetingId, name: "externalMeetingId", parent: name, max: 64)
            try self.validate(self.externalMeetingId, name: "externalMeetingId", parent: name, min: 2)
            try self.validate(self.mediaRegion, name: "mediaRegion", parent: name, max: 64)
            try self.validate(self.mediaRegion, name: "mediaRegion", parent: name, min: 2)
            try self.validate(self.meetingHostId, name: "meetingHostId", parent: name, max: 64)
            try self.validate(self.meetingHostId, name: "meetingHostId", parent: name, min: 2)
            try self.notificationsConfiguration?.validate(name: "\(name).notificationsConfiguration")
        }

        private enum CodingKeys: String, CodingKey {
            case attendees = "Attendees"
            case clientRequestToken = "ClientRequestToken"
            case externalMeetingId = "ExternalMeetingId"
            case mediaRegion = "MediaRegion"
            case meetingHostId = "MeetingHostId"
            case notificationsConfiguration = "NotificationsConfiguration"
        }
    }

    public struct CreateMeetingWithAttendeesResponse: AWSDecodableShape {
        /// The attendee information, including attendees' IDs and join tokens.
        public let attendees: [Attendee]?
        /// If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.
        public let errors: [CreateAttendeeError]?
        /// The meeting information, including the meeting ID and  MediaPlacement.
        public let meeting: Meeting?

        public init(attendees: [Attendee]? = nil, errors: [CreateAttendeeError]? = nil, meeting: Meeting? = nil) {
            self.attendees = attendees
            self.errors = errors
            self.meeting = meeting
        }

        private enum CodingKeys: String, CodingKey {
            case attendees = "Attendees"
            case errors = "Errors"
            case meeting = "Meeting"
        }
    }

    public struct DeleteAttendeeRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "attendeeId", location: .uri("AttendeeId")),
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The Amazon Chime SDK attendee ID.
        public let attendeeId: String
        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String

        public init(attendeeId: String, meetingId: String) {
            self.attendeeId = attendeeId
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.attendeeId, name: "attendeeId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteMeetingRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String

        public init(meetingId: String) {
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct EngineTranscribeMedicalSettings: AWSEncodableShape {
        /// Set this field to PHI to identify personal health information in the transcription output.
        public let contentIdentificationType: TranscribeMedicalContentIdentificationType?
        /// The language code specified for the Amazon Transcribe Medical engine.
        public let languageCode: TranscribeMedicalLanguageCode
        /// The AWS Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region.
        public let region: TranscribeMedicalRegion?
        /// The specialty specified for the Amazon Transcribe Medical engine.
        public let specialty: TranscribeMedicalSpecialty
        /// The type of transcription.
        public let type: TranscribeMedicalType
        /// The name of the vocabulary passed to Amazon Transcribe Medical.
        public let vocabularyName: String?

        public init(contentIdentificationType: TranscribeMedicalContentIdentificationType? = nil, languageCode: TranscribeMedicalLanguageCode, region: TranscribeMedicalRegion? = nil, specialty: TranscribeMedicalSpecialty, type: TranscribeMedicalType, vocabularyName: String? = nil) {
            self.contentIdentificationType = contentIdentificationType
            self.languageCode = languageCode
            self.region = region
            self.specialty = specialty
            self.type = type
            self.vocabularyName = vocabularyName
        }

        public func validate(name: String) throws {
            try self.validate(self.vocabularyName, name: "vocabularyName", parent: name, max: 4096)
        }

        private enum CodingKeys: String, CodingKey {
            case contentIdentificationType = "ContentIdentificationType"
            case languageCode = "LanguageCode"
            case region = "Region"
            case specialty = "Specialty"
            case type = "Type"
            case vocabularyName = "VocabularyName"
        }
    }

    public struct EngineTranscribeSettings: AWSEncodableShape {
        /// Set this field to PII to identify personal health information in the transcription output.
        public let contentIdentificationType: TranscribeContentIdentificationType?
        /// Set this field to PII to redact personally identifiable information in the transcription output. Content redaction is performed only upon complete transcription of the audio segments.  You can’t set both ContentRedactionType and ContentIdentificationType in the same request. If you set both, your request returns a BadRequestException.
        public let contentRedactionType: TranscribeContentRedactionType?
        /// Generates partial transcription results that are less likely to change as meeting attendees speak. It does so by only allowing the last few words from the partial results to change.
        public let enablePartialResultsStabilization: Bool?
        /// The language code specified for the Amazon Transcribe engine.
        public let languageCode: TranscribeLanguageCode
        /// The name of the language model used during transcription.
        public let languageModelName: String?
        /// The stabity level of a partial results transcription. Determines how stable you want the transcription results to be. A higher level means the transcription results are less likely to change.
        public let partialResultsStability: TranscribePartialResultsStability?
        /// Lists the PII entity types you want to identify or redact. To specify entity types, you must enable ContentIdentificationType or ContentRedactionType.   PIIEntityTypes must be comma-separated. The available values are:  BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL,  ADDRESS, NAME, PHONE, SSN, and ALL.   PiiEntityTypes is an optional parameter with a default value of ALL.
        public let piiEntityTypes: String?
        /// The AWS Region passed to Amazon Transcribe. If you don't specify a Region, Amazon Chime uses the meeting's Region.
        public let region: TranscribeRegion?
        /// The filtering method passed to Amazon Transcribe.
        public let vocabularyFilterMethod: TranscribeVocabularyFilterMethod?
        /// The name of the vocabulary filter passed to Amazon Transcribe.
        public let vocabularyFilterName: String?
        /// The name of the vocabulary passed to Amazon Transcribe.
        public let vocabularyName: String?

        public init(contentIdentificationType: TranscribeContentIdentificationType? = nil, contentRedactionType: TranscribeContentRedactionType? = nil, enablePartialResultsStabilization: Bool? = nil, languageCode: TranscribeLanguageCode, languageModelName: String? = nil, partialResultsStability: TranscribePartialResultsStability? = nil, piiEntityTypes: String? = nil, region: TranscribeRegion? = nil, vocabularyFilterMethod: TranscribeVocabularyFilterMethod? = nil, vocabularyFilterName: String? = nil, vocabularyName: String? = nil) {
            self.contentIdentificationType = contentIdentificationType
            self.contentRedactionType = contentRedactionType
            self.enablePartialResultsStabilization = enablePartialResultsStabilization
            self.languageCode = languageCode
            self.languageModelName = languageModelName
            self.partialResultsStability = partialResultsStability
            self.piiEntityTypes = piiEntityTypes
            self.region = region
            self.vocabularyFilterMethod = vocabularyFilterMethod
            self.vocabularyFilterName = vocabularyFilterName
            self.vocabularyName = vocabularyName
        }

        public func validate(name: String) throws {
            try self.validate(self.languageModelName, name: "languageModelName", parent: name, max: 200)
            try self.validate(self.languageModelName, name: "languageModelName", parent: name, min: 1)
            try self.validate(self.languageModelName, name: "languageModelName", parent: name, pattern: "^[0-9a-zA-Z._-]+$")
            try self.validate(self.piiEntityTypes, name: "piiEntityTypes", parent: name, max: 300)
            try self.validate(self.piiEntityTypes, name: "piiEntityTypes", parent: name, min: 1)
            try self.validate(self.piiEntityTypes, name: "piiEntityTypes", parent: name, pattern: "^[A-Z_, ]+$")
            try self.validate(self.vocabularyFilterName, name: "vocabularyFilterName", parent: name, max: 4096)
            try self.validate(self.vocabularyName, name: "vocabularyName", parent: name, max: 4096)
        }

        private enum CodingKeys: String, CodingKey {
            case contentIdentificationType = "ContentIdentificationType"
            case contentRedactionType = "ContentRedactionType"
            case enablePartialResultsStabilization = "EnablePartialResultsStabilization"
            case languageCode = "LanguageCode"
            case languageModelName = "LanguageModelName"
            case partialResultsStability = "PartialResultsStability"
            case piiEntityTypes = "PiiEntityTypes"
            case region = "Region"
            case vocabularyFilterMethod = "VocabularyFilterMethod"
            case vocabularyFilterName = "VocabularyFilterName"
            case vocabularyName = "VocabularyName"
        }
    }

    public struct GetAttendeeRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "attendeeId", location: .uri("AttendeeId")),
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The Amazon Chime SDK attendee ID.
        public let attendeeId: String
        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String

        public init(attendeeId: String, meetingId: String) {
            self.attendeeId = attendeeId
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.attendeeId, name: "attendeeId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetAttendeeResponse: AWSDecodableShape {
        /// The Amazon Chime SDK attendee information.
        public let attendee: Attendee?

        public init(attendee: Attendee? = nil) {
            self.attendee = attendee
        }

        private enum CodingKeys: String, CodingKey {
            case attendee = "Attendee"
        }
    }

    public struct GetMeetingRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String

        public init(meetingId: String) {
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetMeetingResponse: AWSDecodableShape {
        /// The Amazon Chime SDK meeting information.
        public let meeting: Meeting?

        public init(meeting: Meeting? = nil) {
            self.meeting = meeting
        }

        private enum CodingKeys: String, CodingKey {
            case meeting = "Meeting"
        }
    }

    public struct ListAttendeesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("max-results")),
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("next-token"))
        ]

        /// The maximum number of results to return in a single call.
        public let maxResults: Int?
        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String
        /// The token to use to retrieve the next page of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, meetingId: String, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.meetingId = meetingId
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 4096)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListAttendeesResponse: AWSDecodableShape {
        /// The Amazon Chime SDK attendee information.
        public let attendees: [Attendee]?
        /// The token to use to retrieve the next page of results.
        public let nextToken: String?

        public init(attendees: [Attendee]? = nil, nextToken: String? = nil) {
            self.attendees = attendees
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case attendees = "Attendees"
            case nextToken = "NextToken"
        }
    }

    public struct MediaPlacement: AWSDecodableShape {
        /// The audio fallback URL.
        public let audioFallbackUrl: String?
        /// The audio host URL.
        public let audioHostUrl: String?
        /// The event ingestion URL.
        public let eventIngestionUrl: String?
        /// The screen data URL.
        public let screenDataUrl: String?
        /// The screen sharing URL.
        public let screenSharingUrl: String?
        /// The screen viewing URL.
        public let screenViewingUrl: String?
        /// The signaling URL.
        public let signalingUrl: String?
        /// The turn control URL.
        public let turnControlUrl: String?

        public init(audioFallbackUrl: String? = nil, audioHostUrl: String? = nil, eventIngestionUrl: String? = nil, screenDataUrl: String? = nil, screenSharingUrl: String? = nil, screenViewingUrl: String? = nil, signalingUrl: String? = nil, turnControlUrl: String? = nil) {
            self.audioFallbackUrl = audioFallbackUrl
            self.audioHostUrl = audioHostUrl
            self.eventIngestionUrl = eventIngestionUrl
            self.screenDataUrl = screenDataUrl
            self.screenSharingUrl = screenSharingUrl
            self.screenViewingUrl = screenViewingUrl
            self.signalingUrl = signalingUrl
            self.turnControlUrl = turnControlUrl
        }

        private enum CodingKeys: String, CodingKey {
            case audioFallbackUrl = "AudioFallbackUrl"
            case audioHostUrl = "AudioHostUrl"
            case eventIngestionUrl = "EventIngestionUrl"
            case screenDataUrl = "ScreenDataUrl"
            case screenSharingUrl = "ScreenSharingUrl"
            case screenViewingUrl = "ScreenViewingUrl"
            case signalingUrl = "SignalingUrl"
            case turnControlUrl = "TurnControlUrl"
        }
    }

    public struct Meeting: AWSDecodableShape {
        /// The external meeting ID.
        public let externalMeetingId: String?
        /// The media placement for the meeting.
        public let mediaPlacement: MediaPlacement?
        /// The Region in which you create the meeting. Available values: af-south-1, ap-northeast-1,  ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2, ca-central-1,  eu-central-1, eu-north-1, eu-south-1, eu-west-1, eu-west-2, eu-west-3, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2.
        public let mediaRegion: String?
        /// Reserved.
        public let meetingHostId: String?
        /// The Amazon Chime SDK meeting ID.
        public let meetingId: String?

        public init(externalMeetingId: String? = nil, mediaPlacement: MediaPlacement? = nil, mediaRegion: String? = nil, meetingHostId: String? = nil, meetingId: String? = nil) {
            self.externalMeetingId = externalMeetingId
            self.mediaPlacement = mediaPlacement
            self.mediaRegion = mediaRegion
            self.meetingHostId = meetingHostId
            self.meetingId = meetingId
        }

        private enum CodingKeys: String, CodingKey {
            case externalMeetingId = "ExternalMeetingId"
            case mediaPlacement = "MediaPlacement"
            case mediaRegion = "MediaRegion"
            case meetingHostId = "MeetingHostId"
            case meetingId = "MeetingId"
        }
    }

    public struct NotificationsConfiguration: AWSEncodableShape {
        /// The ARN of the AWS Lambda function in the notifications configuration.
        public let lambdaFunctionArn: String?
        /// The ARN of the SNS topic.
        public let snsTopicArn: String?
        /// The ARN of the SQS queue.
        public let sqsQueueArn: String?

        public init(lambdaFunctionArn: String? = nil, snsTopicArn: String? = nil, sqsQueueArn: String? = nil) {
            self.lambdaFunctionArn = lambdaFunctionArn
            self.snsTopicArn = snsTopicArn
            self.sqsQueueArn = sqsQueueArn
        }

        public func validate(name: String) throws {
            try self.validate(self.lambdaFunctionArn, name: "lambdaFunctionArn", parent: name, max: 1024)
            try self.validate(self.lambdaFunctionArn, name: "lambdaFunctionArn", parent: name, min: 1)
            try self.validate(self.lambdaFunctionArn, name: "lambdaFunctionArn", parent: name, pattern: "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$")
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, max: 1024)
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, min: 1)
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, pattern: "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$")
            try self.validate(self.sqsQueueArn, name: "sqsQueueArn", parent: name, max: 1024)
            try self.validate(self.sqsQueueArn, name: "sqsQueueArn", parent: name, min: 1)
            try self.validate(self.sqsQueueArn, name: "sqsQueueArn", parent: name, pattern: "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case lambdaFunctionArn = "LambdaFunctionArn"
            case snsTopicArn = "SnsTopicArn"
            case sqsQueueArn = "SqsQueueArn"
        }
    }

    public struct StartMeetingTranscriptionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The unique ID of the meeting being transcribed.
        public let meetingId: String
        /// The configuration for the current transcription operation. Must contain EngineTranscribeSettings or  EngineTranscribeMedicalSettings.
        public let transcriptionConfiguration: TranscriptionConfiguration

        public init(meetingId: String, transcriptionConfiguration: TranscriptionConfiguration) {
            self.meetingId = meetingId
            self.transcriptionConfiguration = transcriptionConfiguration
        }

        public func validate(name: String) throws {
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
            try self.transcriptionConfiguration.validate(name: "\(name).transcriptionConfiguration")
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptionConfiguration = "TranscriptionConfiguration"
        }
    }

    public struct StopMeetingTranscriptionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "meetingId", location: .uri("MeetingId"))
        ]

        /// The unique ID of the meeting for which you stop transcription.
        public let meetingId: String

        public init(meetingId: String) {
            self.meetingId = meetingId
        }

        public func validate(name: String) throws {
            try self.validate(self.meetingId, name: "meetingId", parent: name, pattern: "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct TranscriptionConfiguration: AWSEncodableShape {
        /// The transcription configuration settings passed to Amazon Transcribe Medical.
        public let engineTranscribeMedicalSettings: EngineTranscribeMedicalSettings?
        /// The transcription configuration settings passed to Amazon Transcribe.
        public let engineTranscribeSettings: EngineTranscribeSettings?

        public init(engineTranscribeMedicalSettings: EngineTranscribeMedicalSettings? = nil, engineTranscribeSettings: EngineTranscribeSettings? = nil) {
            self.engineTranscribeMedicalSettings = engineTranscribeMedicalSettings
            self.engineTranscribeSettings = engineTranscribeSettings
        }

        public func validate(name: String) throws {
            try self.engineTranscribeMedicalSettings?.validate(name: "\(name).engineTranscribeMedicalSettings")
            try self.engineTranscribeSettings?.validate(name: "\(name).engineTranscribeSettings")
        }

        private enum CodingKeys: String, CodingKey {
            case engineTranscribeMedicalSettings = "EngineTranscribeMedicalSettings"
            case engineTranscribeSettings = "EngineTranscribeSettings"
        }
    }
}
