import Foundation
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding var animating: Bool
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        animating ? uiView.startAnimating() : uiView.stopAnimating()
    }
    
}
