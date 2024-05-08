import SwiftUI
import Views

public struct ContentView: View {

  @ObserveInjection private var injection

  public init() {}

  public var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
    }
    .padding()
    .enableInjection()
  }
}
