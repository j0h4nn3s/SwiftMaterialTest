//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image(uiImage: UIImage(named: "Landscape-Color.jpg")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                VisualEffectView(UIBlurEffect(style: .systemThinMaterial))
            }
            .opacity(0.5)
            Spacer()
            ZStack {
                Image(uiImage: UIImage(named: "Landscape-Color.jpg")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                VisualEffectView(UIBlurEffect(style: .systemThinMaterial))
            }
            Spacer()
        }.background(Color.blue)
    }
}

PlaygroundPage.current.setLiveView(ContentView())

public struct VisualEffectView: UIViewRepresentable {
    public var effect: UIVisualEffect?

    public init(_ effect: UIVisualEffect) {
        self.effect = effect
    }

    public func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView()
    }

    public func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = self.effect
    }
}
