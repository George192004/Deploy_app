import SwiftUI

struct PremiumBanner: View {
    var body: some View {
        HStack(spacing: 85) {
            VStack(alignment: .leading, spacing: 2) {
                Text("Free premium avaiable")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
                
                Text("Tap to claim")
                    .font(.system(size: 12, weight: .regular))
                    .opacity(0.6)
            }
            
            Text("🎁")
                .font(.system(size: 45, weight: .none))
                .padding(.top, 35)
                .padding(.leading, 25)
            
        }
        .frame(width: 345, height: 56)
        .background(Color(red: 254 / 255, green: 234 / 255, blue: 207 / 255))
        .cornerRadius(8)
    }
}


