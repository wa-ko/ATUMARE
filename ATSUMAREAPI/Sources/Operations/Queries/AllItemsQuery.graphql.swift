// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllItemsQuery: GraphQLQuery {
  public static let operationName: String = "AllItems"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllItems { allItems { __typename capacity departure destination name time uuid passenger passengers { __typename namelist comment } } }"#
    ))

  public init() {}

  public struct Data: ATSUMAREAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ATSUMAREAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allItems", [AllItem?]?.self),
    ] }

    public var allItems: [AllItem?]? { __data["allItems"] }

    /// AllItem
    ///
    /// Parent Type: `Item`
    public struct AllItem: ATSUMAREAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ATSUMAREAPI.Objects.Item }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("capacity", Int?.self),
        .field("departure", String?.self),
        .field("destination", String?.self),
        .field("name", String?.self),
        .field("time", String?.self),
        .field("uuid", String?.self),
        .field("passenger", Int?.self),
        .field("passengers", [Passenger?]?.self),
      ] }

      public var capacity: Int? { __data["capacity"] }
      public var departure: String? { __data["departure"] }
      public var destination: String? { __data["destination"] }
      public var name: String? { __data["name"] }
      public var time: String? { __data["time"] }
      public var uuid: String? { __data["uuid"] }
      public var passenger: Int? { __data["passenger"] }
      public var passengers: [Passenger?]? { __data["passengers"] }

      /// AllItem.Passenger
      ///
      /// Parent Type: `Passenger`
      public struct Passenger: ATSUMAREAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ATSUMAREAPI.Objects.Passenger }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("namelist", String?.self),
          .field("comment", String?.self),
        ] }

        public var namelist: String? { __data["namelist"] }
        public var comment: String? { __data["comment"] }
      }
    }
  }
}
