import SwiftUI
import SwiftData

@main
struct DecentralisApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [EncryptedInstanceModel.self, PasswordModel.self, EncryptedChannelModel.self, EncryptedMessageModel.self])
    }
}
