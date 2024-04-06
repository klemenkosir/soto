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

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension PersonalizeRuntime {
    // MARK: Enums

    // MARK: Shapes

    public struct GetActionRecommendationsRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the campaign to use for getting action recommendations. This campaign must deploy a solution version trained with a PERSONALIZED_ACTIONS recipe.
        public let campaignArn: String?
        /// The ARN of the filter to apply to the returned recommendations. For more information, see Filtering Recommendations. When using this parameter, be sure the filter resource is ACTIVE.
        public let filterArn: String?
        /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.  For filter expressions that use an INCLUDE element to include actions, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude actions, you can omit the filter-values. In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see Filtering recommendations and user segments.
        public let filterValues: [String: String]?
        /// The number of results to return. The default is 5. The maximum is 100.
        public let numResults: Int?
        /// The user ID of the user to provide action recommendations for.
        public let userId: String?

        public init(campaignArn: String? = nil, filterArn: String? = nil, filterValues: [String: String]? = nil, numResults: Int? = nil, userId: String? = nil) {
            self.campaignArn = campaignArn
            self.filterArn = filterArn
            self.filterValues = filterValues
            self.numResults = numResults
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, max: 256)
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.validate(self.filterArn, name: "filterArn", parent: name, max: 256)
            try self.validate(self.filterArn, name: "filterArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.filterValues?.forEach {
                try validate($0.key, name: "filterValues.key", parent: name, max: 50)
                try validate($0.key, name: "filterValues.key", parent: name, pattern: "^[A-Za-z0-9_]+$")
                try validate($0.value, name: "filterValues[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.filterValues, name: "filterValues", parent: name, max: 25)
            try self.validate(self.numResults, name: "numResults", parent: name, min: 0)
            try self.validate(self.userId, name: "userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case filterArn = "filterArn"
            case filterValues = "filterValues"
            case numResults = "numResults"
            case userId = "userId"
        }
    }

    public struct GetActionRecommendationsResponse: AWSDecodableShape {
        /// A list of action recommendations sorted in descending order by prediction score. There can be a maximum of 100 actions in the list. For information about action scores, see How action recommendation scoring works.
        public let actionList: [PredictedAction]?
        /// The ID of the recommendation.
        public let recommendationId: String?

        public init(actionList: [PredictedAction]? = nil, recommendationId: String? = nil) {
            self.actionList = actionList
            self.recommendationId = recommendationId
        }

        private enum CodingKeys: String, CodingKey {
            case actionList = "actionList"
            case recommendationId = "recommendationId"
        }
    }

    public struct GetPersonalizedRankingRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.
        public let campaignArn: String
        /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
        public let context: [String: String]?
        /// The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user.  For more information, see Filtering Recommendations.
        public let filterArn: String?
        /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.  For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values.In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see Filtering Recommendations.
        public let filterValues: [String: String]?
        /// A list of items (by itemId) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list. If you are including  metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.
        public let inputList: [String]
        /// If you enabled metadata in recommendations when you created or updated the campaign, specify metadata columns from your Items dataset to include in the personalized ranking. The map key is ITEMS and the value is a list of column names from your Items dataset. The maximum number of columns you can provide is 10.  For information about enabling metadata for a campaign, see Enabling metadata in recommendations for a campaign.
        public let metadataColumns: [String: [String]]?
        /// The user for which you want the campaign to provide a personalized ranking.
        public let userId: String

        public init(campaignArn: String, context: [String: String]? = nil, filterArn: String? = nil, filterValues: [String: String]? = nil, inputList: [String], metadataColumns: [String: [String]]? = nil, userId: String) {
            self.campaignArn = campaignArn
            self.context = context
            self.filterArn = filterArn
            self.filterValues = filterValues
            self.inputList = inputList
            self.metadataColumns = metadataColumns
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, max: 256)
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.context?.forEach {
                try validate($0.key, name: "context.key", parent: name, max: 150)
                try validate($0.key, name: "context.key", parent: name, pattern: "^[A-Za-z\\d_]+$")
                try validate($0.value, name: "context[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.context, name: "context", parent: name, max: 150)
            try self.validate(self.filterArn, name: "filterArn", parent: name, max: 256)
            try self.validate(self.filterArn, name: "filterArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.filterValues?.forEach {
                try validate($0.key, name: "filterValues.key", parent: name, max: 50)
                try validate($0.key, name: "filterValues.key", parent: name, pattern: "^[A-Za-z0-9_]+$")
                try validate($0.value, name: "filterValues[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.filterValues, name: "filterValues", parent: name, max: 25)
            try self.inputList.forEach {
                try validate($0, name: "inputList[]", parent: name, max: 256)
            }
            try self.metadataColumns?.forEach {
                try validate($0.key, name: "metadataColumns.key", parent: name, max: 256)
                try validate($0.value, name: "metadataColumns[\"\($0.key)\"]", parent: name, max: 99)
            }
            try self.validate(self.metadataColumns, name: "metadataColumns", parent: name, max: 1)
            try self.validate(self.userId, name: "userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case context = "context"
            case filterArn = "filterArn"
            case filterValues = "filterValues"
            case inputList = "inputList"
            case metadataColumns = "metadataColumns"
            case userId = "userId"
        }
    }

    public struct GetPersonalizedRankingResponse: AWSDecodableShape {
        /// A list of items in order of most likely interest to the user. The maximum is 500.
        public let personalizedRanking: [PredictedItem]?
        /// The ID of the recommendation.
        public let recommendationId: String?

        public init(personalizedRanking: [PredictedItem]? = nil, recommendationId: String? = nil) {
            self.personalizedRanking = personalizedRanking
            self.recommendationId = recommendationId
        }

        private enum CodingKeys: String, CodingKey {
            case personalizedRanking = "personalizedRanking"
            case recommendationId = "recommendationId"
        }
    }

    public struct GetRecommendationsRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.
        public let campaignArn: String?
        /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
        public let context: [String: String]?
        /// The ARN of the filter to apply to the returned recommendations. For more information, see Filtering Recommendations. When using this parameter, be sure the filter resource is ACTIVE.
        public let filterArn: String?
        /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.  For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values.In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see Filtering recommendations and user segments.
        public let filterValues: [String: String]?
        /// The item ID to provide recommendations for. Required for RELATED_ITEMS recipe type.
        public let itemId: String?
        /// If you enabled metadata in recommendations when you created or updated the campaign or recommender, specify the metadata columns from your Items dataset to include in item recommendations.  The map key is ITEMS and the value is a list of column names from your Items dataset. The maximum number of columns you can provide is 10.  For information about enabling metadata for a campaign, see Enabling metadata in recommendations for a campaign. For information about enabling metadata for a recommender, see Enabling metadata in recommendations for a recommender.
        public let metadataColumns: [String: [String]]?
        /// The number of results to return. The default is 25. If you are including  metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.
        public let numResults: Int?
        /// The promotions to apply to the recommendation request.  A promotion defines additional business rules that apply to a configurable subset of recommended items.
        public let promotions: [Promotion]?
        /// The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you created a Domain dataset group with a recommender for a domain use case.
        public let recommenderArn: String?
        /// The user ID to provide recommendations for. Required for USER_PERSONALIZATION recipe type.
        public let userId: String?

        public init(campaignArn: String? = nil, context: [String: String]? = nil, filterArn: String? = nil, filterValues: [String: String]? = nil, itemId: String? = nil, metadataColumns: [String: [String]]? = nil, numResults: Int? = nil, promotions: [Promotion]? = nil, recommenderArn: String? = nil, userId: String? = nil) {
            self.campaignArn = campaignArn
            self.context = context
            self.filterArn = filterArn
            self.filterValues = filterValues
            self.itemId = itemId
            self.metadataColumns = metadataColumns
            self.numResults = numResults
            self.promotions = promotions
            self.recommenderArn = recommenderArn
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, max: 256)
            try self.validate(self.campaignArn, name: "campaignArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.context?.forEach {
                try validate($0.key, name: "context.key", parent: name, max: 150)
                try validate($0.key, name: "context.key", parent: name, pattern: "^[A-Za-z\\d_]+$")
                try validate($0.value, name: "context[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.context, name: "context", parent: name, max: 150)
            try self.validate(self.filterArn, name: "filterArn", parent: name, max: 256)
            try self.validate(self.filterArn, name: "filterArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.filterValues?.forEach {
                try validate($0.key, name: "filterValues.key", parent: name, max: 50)
                try validate($0.key, name: "filterValues.key", parent: name, pattern: "^[A-Za-z0-9_]+$")
                try validate($0.value, name: "filterValues[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.filterValues, name: "filterValues", parent: name, max: 25)
            try self.validate(self.itemId, name: "itemId", parent: name, max: 256)
            try self.metadataColumns?.forEach {
                try validate($0.key, name: "metadataColumns.key", parent: name, max: 256)
                try validate($0.value, name: "metadataColumns[\"\($0.key)\"]", parent: name, max: 99)
            }
            try self.validate(self.metadataColumns, name: "metadataColumns", parent: name, max: 1)
            try self.validate(self.numResults, name: "numResults", parent: name, min: 0)
            try self.promotions?.forEach {
                try $0.validate(name: "\(name).promotions[]")
            }
            try self.validate(self.promotions, name: "promotions", parent: name, max: 1)
            try self.validate(self.recommenderArn, name: "recommenderArn", parent: name, max: 256)
            try self.validate(self.recommenderArn, name: "recommenderArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.validate(self.userId, name: "userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case context = "context"
            case filterArn = "filterArn"
            case filterValues = "filterValues"
            case itemId = "itemId"
            case metadataColumns = "metadataColumns"
            case numResults = "numResults"
            case promotions = "promotions"
            case recommenderArn = "recommenderArn"
            case userId = "userId"
        }
    }

    public struct GetRecommendationsResponse: AWSDecodableShape {
        /// A list of recommendations sorted in descending order by prediction score. There can be a maximum of 500 items in the list.
        public let itemList: [PredictedItem]?
        /// The ID of the recommendation.
        public let recommendationId: String?

        public init(itemList: [PredictedItem]? = nil, recommendationId: String? = nil) {
            self.itemList = itemList
            self.recommendationId = recommendationId
        }

        private enum CodingKeys: String, CodingKey {
            case itemList = "itemList"
            case recommendationId = "recommendationId"
        }
    }

    public struct PredictedAction: AWSDecodableShape {
        /// The ID of the recommended action.
        public let actionId: String?
        /// The score of the recommended action. For information about action scores, see How action recommendation scoring works.
        public let score: Double?

        public init(actionId: String? = nil, score: Double? = nil) {
            self.actionId = actionId
            self.score = score
        }

        private enum CodingKeys: String, CodingKey {
            case actionId = "actionId"
            case score = "score"
        }
    }

    public struct PredictedItem: AWSDecodableShape {
        /// The recommended item ID.
        public let itemId: String?
        /// Metadata about the item from your Items dataset.
        public let metadata: [String: String]?
        /// The name of the promotion that included the predicted item.
        public let promotionName: String?
        /// A numeric representation of the model's certainty that the item will be the next user selection. For more information on scoring logic, see how-scores-work.
        public let score: Double?

        public init(itemId: String? = nil, metadata: [String: String]? = nil, promotionName: String? = nil, score: Double? = nil) {
            self.itemId = itemId
            self.metadata = metadata
            self.promotionName = promotionName
            self.score = score
        }

        private enum CodingKeys: String, CodingKey {
            case itemId = "itemId"
            case metadata = "metadata"
            case promotionName = "promotionName"
            case score = "score"
        }
    }

    public struct Promotion: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the filter used by the promotion. This filter defines the criteria for promoted items. For more information, see  Promotion filters.
        public let filterArn: String?
        /// The values to use when promoting items. For each placeholder parameter in your promotion's filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.   For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values. In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information on creating filters, see Filtering recommendations and user segments.
        public let filterValues: [String: String]?
        /// The name of the promotion.
        public let name: String?
        /// The percentage of recommended items to apply the promotion to.
        public let percentPromotedItems: Int?

        public init(filterArn: String? = nil, filterValues: [String: String]? = nil, name: String? = nil, percentPromotedItems: Int? = nil) {
            self.filterArn = filterArn
            self.filterValues = filterValues
            self.name = name
            self.percentPromotedItems = percentPromotedItems
        }

        public func validate(name: String) throws {
            try self.validate(self.filterArn, name: "filterArn", parent: name, max: 256)
            try self.validate(self.filterArn, name: "filterArn", parent: name, pattern: "^arn:([a-z\\d-]+):personalize:.*:.*:.+$")
            try self.filterValues?.forEach {
                try validate($0.key, name: "filterValues.key", parent: name, max: 50)
                try validate($0.key, name: "filterValues.key", parent: name, pattern: "^[A-Za-z0-9_]+$")
                try validate($0.value, name: "filterValues[\"\($0.key)\"]", parent: name, max: 1000)
            }
            try self.validate(self.filterValues, name: "filterValues", parent: name, max: 25)
            try self.validate(self.name, name: "name", parent: name, max: 63)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9][a-zA-Z0-9\\-_]*$")
            try self.validate(self.percentPromotedItems, name: "percentPromotedItems", parent: name, max: 100)
            try self.validate(self.percentPromotedItems, name: "percentPromotedItems", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case filterArn = "filterArn"
            case filterValues = "filterValues"
            case name = "name"
            case percentPromotedItems = "percentPromotedItems"
        }
    }
}

// MARK: - Errors

/// Error enum for PersonalizeRuntime
public struct PersonalizeRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case invalidInputException = "InvalidInputException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize PersonalizeRuntime
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Provide a valid value for the field or parameter.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension PersonalizeRuntimeErrorType: Equatable {
    public static func == (lhs: PersonalizeRuntimeErrorType, rhs: PersonalizeRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PersonalizeRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
