// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PutItemMutation: GraphQLMutation {
  public static let operationName: String = "PutItem"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation PutItem($uuid: String!, $name: String!, $departure: String!, $destination: String!, $time: String!, $capacity: Int!, $passenger: Int!) { putItem( uuid: $uuid name: $name departure: $departure destination: $destination time: $time capacity: $capacity passenger: $passenger ) { __typename uuid name departure destination time capacity passenger } }"#
    ))

  public var uuid: String
  public var name: String
  public var departure: String
  public var destination: String
  public var time: String
  public var capacity: Int
  public var passenger: Int

  public init(
    uuid: String,
    name: String,
    departure: String,
    destination: String,
    time: String,
    capacity: Int,
    passenger: Int
  ) {
    self.uuid = uuid
    self.name = name
    self.departure = departure
    self.destination = destination
    self.time = time
    self.capacity = capacity
    self.passenger = passenger
  }

  public var __variables: Variables? { [
    "uuid": uuid,
    "name": name,
    "departure": departure,
    "destination": destination,
    "time": time,
    "capacity": capacity,
    "passenger": passenger
  ] }

  public struct Data: ATSUMAREAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ATSUMAREAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("putItem", PutItem?.self, arguments: [
        "uuid": .variable("uuid"),
        "name": .variable("name"),
        "departure": .variable("departure"),
        "destination": .variable("destination"),
        "time": .variable("time"),
        "capacity": .variable("capacity"),
        "passenger": .variable("passenger")
      ]),
    ] }

    public var putItem: PutItem? { __data["putItem"] }

    /// PutItem
    ///
    /// Parent Type: `Item`
    public struct PutItem: ATSUMAREAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ATSUMAREAPI.Objects.Item }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("uuid", String?.self),
        .field("name", String?.self),
        .field("departure", String?.self),
        .field("destination", String?.self),
        .field("time", String?.self),
        .field("capacity", Int?.self),
        .field("passenger", Int?.self),
      ] }

      public var uuid: String? { __data["uuid"] }
      public var name: String? { __data["name"] }
      public var departure: String? { __data["departure"] }
      public var destination: String? { __data["destination"] }
      public var time: String? { __data["time"] }
      public var capacity: Int? { __data["capacity"] }
      public var passenger: Int? { __data["passenger"] }
    }
  }
}
