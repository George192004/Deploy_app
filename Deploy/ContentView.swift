import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
               
                    MyDocumentsView()
                        .tabItem {
                            Label("My Documents", systemImage: "folder")
                        }
                
                
                MoreView()
                    .tabItem {
                        Label("More", systemImage: "ellipsis")
                    }
            }.accentColor(.black)
        }
    
}


#Preview {
    ContentView()
}

