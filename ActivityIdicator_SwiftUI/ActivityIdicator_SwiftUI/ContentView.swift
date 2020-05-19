import SwiftUI

struct ContentView: View {
    
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            ActivityIndicatorView(animating: $isLoading, style: .large)
            
            HStack {
                Button("Start") {
                    self.isLoading = true
                }
                
                Button("Stop") {
                    self.isLoading = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
