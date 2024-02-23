import SwiftUI

struct MoreView: View {
    
    var platforms: [Platform] = [.init(name:"Feedback", imageName: "message"),
                                 .init(name:"Legal", imageName: "c.circle"),
                                 .init(name:"Language", imageName: "globe"),
                                 .init(name:"Theme", imageName: "paintbrush"),
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("More")
                .font(.system(size: 24, weight: .bold))
            
            PremiumBanner()
    

            NavigationStack{
                
                List {
                    Section("") {
                                            
                        ForEach(platforms, id: \.name) { platform in
                            
                            NavigationLink(value: platform){
                                Label(platform.name, systemImage: platform.imageName)
                                    .foregroundColor(.black)
                                    .padding(.vertical, 8)
                            }
                        }
                        
                        
                    }
                }
                
                .navigationDestination(for: Platform.self) { platform in
                                NavigationLink(destination: Text("System")) {
                                    Label("System", systemImage: "gearshape.fill") // Replace "gearshape.fill" with your system icon
                                        .foregroundColor(.black)
                                        .padding(.vertical, 8)
                                }

                                NavigationLink(destination: Text("Light")) {
                                    Label("Light", systemImage: "lightbulb.fill") // Replace "lightbulb.fill" with your light icon
                                        .foregroundColor(.black)
                                        .padding(.vertical, 8)
                                }
                }
            }
        }
        .padding()
       
    }
}

struct Platform: Hashable {
    let name: String
    let imageName: String
}

#Preview {
    MoreView()
}
