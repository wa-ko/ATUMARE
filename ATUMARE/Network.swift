import Apollo
import Foundation

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://dyanamodbconnectmobile-k5fklwkbdq-an.a.run.app/graphql")!)
}
