import Foundation
import WebsocketClient
import Decentralis_Swift

class NewMessages: ObservableObject {
    @Published public var websocket: Websocket?
    @Published public var newMessages: [String: Int]
    
    init(client: DecentralisClient) async throws {
        self.newMessages = [:]
        self.websocket = try await client.newMessagesWS { messages in
            for (key, val) in messages {
                self.newMessages.updateValue(self.newMessages[key] ?? 0 + val, forKey: key)
            }
        }
    }
}
