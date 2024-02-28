import SwiftUI

struct NewView: View {
    var body: some View {
        ZStack{
            Color(red: 255/255, green: 234/255, blue: 209/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("object")
                    .resizable()
                    .frame(width: 253, height: 253)
                
                VStack(spacing: 8) {
                    Text("-50%")
                        .font(.system(size:40, weight: .bold))
                   
                    Text("Sale only for you")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                       
                    Text("This offer expires in 59:08")
                        .font(.system(size:16, weight: .regular))
                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                }
                
                
                VStack(alignment: .leading, spacing: 16) {
                    GroupOfDealPopUP(icon: "heart", text: "Unlimited document scanner")
                    GroupOfDealPopUP(icon: "printer", text: "Unlimited print")
                    GroupOfDealPopUP(icon: "cloud", text: "Cloud Service")
                    GroupOfDealPopUP(icon: "person", text: "ID Scanner")
                }
                .background(Color(red: 244/255, green: 222/255, blue: 199/255, opacity: 0.5))
                .cornerRadius(8)
                .padding(24)
                .frame(width: 350)
                
                VStack(spacing: 16){
                    VStack(spacing: 4){
                        Text("Just $49.99 19.99/year")
                            .font(.system(size: 16, weight: .medium))
                        Text("Auto renewable. Cancel Anytime")
                            .font(.system(size:14, weight: .regular))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                    }

                    
                    Button(action: {
                                print("Button tapped!")
                        }) {
                            Text("Grab this deal")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(17)
                                .padding(.horizontal, 100)
                                .background(Color.black)
                                .cornerRadius(1000)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 1000)
                                        .stroke(Color.blue, lineWidth: 1)
                        )
                    }
                }
            }
        }
    }
}


struct GroupOfDealPopUP: View {
    var icon: String
    var text: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .frame(width: 20, height: 20)
            Text(text)
                .font(.system(size: 14, weight: .regular))
        }
        .padding(16)
    }
}

#Preview {
    NewView()
}

