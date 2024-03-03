import SwiftUI

struct PremiumOffer: View {
    @Binding var isPresented: Bool
    @State private var elapsedTime: TimeInterval = 0
    @State private var isTimerActive = true

    var body: some View {
        ZStack {
            Color(red: 255/255, green: 234/255, blue: 209/255)
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if !isTimerActive {
                            print("Close button tapped!")
                            isPresented = false
                        }
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .font(.title)
                            .foregroundColor(isTimerActive ? Color.black.opacity(0.05) : .black)
                            .padding()
                            .overlay(
                                ZStack {
                                    Circle()
                                        .trim(from: CGFloat(timerProgress()), to: 1)
                                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                                        .rotationEffect(.degrees(-90))
                                        .foregroundColor(isTimerActive ? Color.black.opacity(0.05) : Color.black)
                                        .animation(
                                            Animation.easeInOut(duration: 10)
                                        )
                                    
                                    Circle()
                                        .trim(from: 0, to: CGFloat(timerProgress()))
                                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                                        .rotationEffect(.degrees(-90))
                                        .foregroundColor(Color.black)
                                        .animation(
                                            Animation.easeInOut(duration: 10)
                                                .repeatForever(autoreverses: false)
                                        )
                                }
                            )
                            .disabled(isTimerActive)
                    }
                }
                Spacer()
            }
            .padding()

            VStack(spacing: 8) {
                Image("objects")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
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
                Spacer()
                
                
                

                VStack(alignment: .leading) {
                    GroupOfDealPopUP(icon: "heart", text: "Unlimited document scanner")
                    GroupOfDealPopUP(icon: "printer", text: "Unlimited print")
                    GroupOfDealPopUP(icon: "cloud", text: "Cloud Service")
                    GroupOfDealPopUP(icon: "person", text: "ID Scanner")
                }
                .background(Color(red: 244/255, green: 222/255, blue: 199/255))
                .cornerRadius(8)
                .padding(.top, 43)
                .padding(.bottom, 53)

                .frame(width: 345)
                Spacer()

                
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
                            .background(.black)
                            .cornerRadius(100)
                    }
                }
//                Spacer()
            }
        }
        .onAppear {
            startTimer()
        }
    }

    private func startTimer() {
            isTimerActive = true
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                elapsedTime += 1
                if elapsedTime >= 10 {
                    timer.invalidate()
                    isTimerActive = false
                }
            }
        }

        private func timerProgress() -> Double {
            return min(1.0, elapsedTime / 10)
        }
}



struct GroupOfDealPopUP: View {
    var icon: String
    var text: String
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: icon)
                .resizable()
       
                .frame(width: 20, height: 20)
            
            Text(text)
                .font(.system(size: 14, weight: .regular))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, text == "ID Scanner" ? 16 : 16)
        
    }
}

#Preview {
    PremiumOffer(isPresented: .constant(false))
}




//import SwiftUI
//
//struct GrabDealView: View {
//    @State private var drawBorder: CGFloat = 0
//    @State private var iconAndBorderColor = Color.black.opacity(0.05)
//    @Binding var isVisible: Bool
//    @Environment(\.presentationMode) var presentationMode
//    var body: some View {
//        
//        VStack {
//            HStack {
//                Spacer()
//                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
//                    print("X button was tapped")
//                }) {
//                    Image(systemName: "xmark")
//                        .foregroundColor(iconAndBorderColor)
//                        .frame(width: 32, height: 32)
//                        .clipShape(Circle())
//                        .overlay(
//                            Circle()
//                                .trim(from: 0, to: drawBorder)
//                                .stroke(iconAndBorderColor, lineWidth: 3)
//                                .rotationEffect(.degrees(-90))
//                        )
//                }
//                .onAppear {
//                    withAnimation(.linear(duration: 3)) {
//                        drawBorder = 1
//                    }
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                        iconAndBorderColor = .black
//                    }
//                }
//            }.padding(.horizontal, 24)
//            Image("objects")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 253, height: 180)
//            Text("-50%")
//                .font(.system(size: 40))
//                .fontWeight(.bold)
//                .padding(.bottom, 10)
//                .foregroundColor(.black)
//            
//            Text("Sale only for you")
//                .font(.system(size: 16))
//                .fontWeight(.medium)
//                .foregroundColor(.black.opacity(0.6))
//                .padding(.bottom, 10)
//            
//            Text("This offer expires in 59:08")
//                .font(.system(size: 16))
//                .foregroundColor(.black.opacity(0.6))
//            
//            VStack {
//                Spacer()
//                VStack(alignment: .leading) {
//                    ForEach([
//                        ("heart", "Unlimited document scanner"),
//                        ("printer", "Unlimited print"),
//                        ("cloud", "Cloud Service"),
//                        ("person", "ID Scanner"),
//                    ], id: \.0) { icon, title in
//                        ItemView(icon: icon, title: title)
//                    }
//                    .padding(.bottom, 16)
//                }
//                .background(Color.black.opacity(0.06))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .padding(.horizontal, 24)
//                
//                Spacer()
//                VStack {
//                    Text("Just $49.99 19.99/year")
//                        .fontWeight(.medium)
//                        .font(.system(size: 16))
//                        .foregroundColor(.black)
//                    Text("Auto renewable. Cancel Anytime")
//                        .font(.system(size: 14))
//                        .foregroundColor(.black)
//                }.padding(.top).padding(.bottom)
//
//                
//                Button(action: {
//                    print("Button tapped!")
//                }) {
//                    Text("Grab this deal")
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                }
//                .padding(.horizontal, 110)
//                .padding(.vertical, 13)
//                .background(Color.black)
//                .cornerRadius(100)
//            }
//            
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(hex: "#FEEACF"))
//    }
//}
//
//
//
//
//struct ItemView: View {
//    let icon: String
//    let title: String
//
//    var body: some View {
//        HStack {
//            Image(systemName: icon)
//                .padding(.leading, 16)
//                .frame(width: 20, height: 20)
//                .foregroundColor(.black)
//            Text(title)
//                .font(.system(size: 14))
//                .padding(.leading, 16)
//                .foregroundColor(.black)
//            
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .padding(.leading, 16)
//        .padding(.top, 16)
//    }
//}
//
//
//extension Color {
//    init(hex: String) {
//        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
//        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
//
//        var rgb: UInt64 = 0
//
//        Scanner(string: hexSanitized).scanHexInt64(&rgb)
//
//        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
//        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
//        let blue = Double(rgb & 0x0000FF) / 255.0
//
//        self.init(red: red, green: green, blue: blue)
//    }
//}
//
//
//                         
//struct GrabDealView_Previews: PreviewProvider {
//    static var previews: some View {
//        GrabDealView(isVisible: .constant(true))
//
//    }
//}
