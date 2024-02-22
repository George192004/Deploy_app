import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("More")
                .font(.system(size: 24, weight: .bold))
            
            PremiumBanner()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MoreView()
}
