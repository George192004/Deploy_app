import SwiftUI

struct MyDocumentsView: View {
    @State private var searchItem = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Documents")
                .font(.system(size: 24, weight: .bold))
            
            PremiumBanner()
                    
            NavigationStack {
                Text("")
            }
            .searchable(text: $searchItem, prompt: "Search...")
        
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MyDocumentsView()
}





