import SwiftUI

struct MoreView: View {
    var platforms: [Platform] = [
        Platform(name: "Feedback", imageName: "message"),
        Platform(name: "Legal", imageName: "c.circle"),
        Platform(name: "Language", imageName: "globe"),
        Platform(name: "Theme", imageName: "paintbrush"),
    ]

    @State private var selectedOption: String = "Light"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading) {
                    Text("More")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    PremiumBanner()
                }
                .padding()
                
                
                ForEach(platforms, id: \.name) { platform in
                    NavigationLink(destination: PlatformDetailView(platform: platform)) {
                        HStack {
                            Circle()
                                .fill(Color(white: 0, opacity: 0.05))
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Image(systemName: platform.imageName)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.black)
                                )
                            
                            Text(platform.name)
                                .font(.custom("Inter", size: 15))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                                .cornerRadius(8)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 5, height: 9)
                                .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5)
                                )
                        }
                        .navigationBarTitle("")
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 12, trailing: 0))
                    }
                }
                Spacer()
                
            }
            .padding()
        }
    }
}


struct PlatformDetailView: View {
    var platform: Platform
    
    @State private var selectedSystem: String = "Light"
    
    var body: some View {
        NavigationView {
            if platform.name == "Theme" {
                VStack(spacing: 24) {
                    ForEach(["Light", "Dark", "System"], id: \.self) { systemType in
                        systemButton(systemType)
                    }
                    Spacer()
                }
                .padding(24)
            } else {
                Text("\(platform.name) view")
            }
        }
        .navigationBarTitle(platform.name)
    }
    
    private func systemButton(_ systemType: String) -> some View {
        Button(action: {
            self.selectedSystem = systemType
        }) {
            HStack {
                Text(systemType)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: selectedSystem == systemType ? "circle.fill" : "circle")
                    .foregroundColor(.black)
            }
        }
    }
}



#Preview {
    MoreView()
}

struct Platform: Hashable {
    let name: String
    let imageName: String
}
