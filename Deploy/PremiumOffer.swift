import SwiftUI

struct NewView: View {
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
//                                                .repeatForever(autoreverses: false)
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
                Spacer() // This pushes the button to the top
            }
            .padding()

            VStack {
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
                
                
                VStack(alignment: .leading, spacing: 16) {
                    GroupOfDealPopUP(icon: "heart", text: "Unlimited document scanner")
                    GroupOfDealPopUP(icon: "printer", text: "Unlimited print")
                    GroupOfDealPopUP(icon: "cloud", text: "Cloud Service")
                    GroupOfDealPopUP(icon: "person", text: "ID Scanner")
                }
                .background(Color(red: 244/255, green: 222/255, blue: 199/255, opacity: 0.5))
                .cornerRadius(8)
                .padding(.top, 20)
                .padding(.bottom, 20)
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
        HStack(spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
            Text(text)
                .font(.system(size: 14, weight: .regular))
        }
        .padding(.leading, 16)
        .padding(.top, 16)
        .padding(.bottom, 16)
        .padding(.trailing, 103)
    }
}

#Preview {
    NewView(isPresented: .constant(false))
}




//import SwiftUI
//
//
//struct CircleFill: Shape {
//    var progress: CGFloat
//
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
//        let radius = min(rect.width, rect.height) / 2
//
//        let startAngle = Angle(degrees: -90)
//        let endAngle = Angle(degrees: Double(progress) * 360 - 90)
//
//        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
//
//        return path
//    }
//}
//
//struct NewView: View {
//    @Binding var isPresented: Bool
//    @State private var elapsedTime: TimeInterval = 0
//    @State private var isTimerActive = true
//
//    var body: some View {
//        ZStack {
//            Color(red: 255/255, green: 234/255, blue: 209/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        if !isTimerActive {
//                            print("Close button tapped!")
//                            isPresented = false
//                        }
//                    }) {
//                        Image(systemName: "xmark")
//                            .resizable()
//                            .frame(width: 15, height: 15)
//                            .font(.title)
//                            .foregroundColor(isTimerActive ? Color.black.opacity(0.05) : .black)
//                            .padding()
//                            .overlay(
//                                CircleFill(progress: CGFloat(timerProgress()))
//                                    .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
//                                    .rotationEffect(.degrees(-90))
//                                    .foregroundColor(isTimerActive ? Color.black.opacity(0.05) : Color.black)
//                                    .animation(
//                                        Animation.easeInOut(duration: 10)
//                                            .repeatForever(autoreverses: false)
//                                    )
//                            )
//                            .disabled(isTimerActive)
//                    }
//                }
//                Spacer() // This pushes the button to the top
//            }
//            .padding()
//            
//            VStack {
//                Image("objects")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 253, height: 253)
//                
//                VStack(spacing: 8) {
//                    Text("-50%")
//                        .font(.system(size:40, weight: .bold))
//                    
//                    Text("Sale only for you")
//                        .font(.system(size: 16, weight: .medium))
//                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
//                    
//                    Text("This offer expires in 59:08")
//                        .font(.system(size:16, weight: .regular))
//                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
//                }
//                
//                
//                VStack(alignment: .leading, spacing: 16) {
//                    GroupOfDealPopUP(icon: "heart", text: "Unlimited document scanner")
//                    GroupOfDealPopUP(icon: "printer", text: "Unlimited print")
//                    GroupOfDealPopUP(icon: "cloud", text: "Cloud Service")
//                    GroupOfDealPopUP(icon: "person", text: "ID Scanner")
//                }
//                .background(Color(red: 244/255, green: 222/255, blue: 199/255, opacity: 0.5))
//                .cornerRadius(8)
//                .padding(.top, 20)
//                .padding(.bottom, 20)
//                .frame(width: 350)
//                
//                VStack(spacing: 16){
//                    VStack(spacing: 4){
//                        Text("Just $49.99 19.99/year")
//                            .font(.system(size: 16, weight: .medium))
//                        Text("Auto renewable. Cancel Anytime")
//                            .font(.system(size:14, weight: .regular))
//                            .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
//                    }
//                    
//                    
//                    Button(action: {
//                        print("Button tapped!")
//                    }) {
//                        Text("Grab this deal")
//                            .font(.system(size: 16, weight: .semibold))
//                            .foregroundColor(.white)
//                            .padding(17)
//                            .padding(.horizontal, 100)
//                            .background(Color.black)
//                            .cornerRadius(1000)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 1000)
//                                    .stroke(Color.blue, lineWidth: 1)
//                            )
//                    }
//                }
//            }
//        }
//        .onAppear {
//            startTimer()
//        }
//    }
//
//    private func startTimer() {
//        isTimerActive = true
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
//            elapsedTime += 1
//            if elapsedTime >= 10 {
//                timer.invalidate()
//                isTimerActive = false
//            }
//        }
//    }
//
//    private func timerProgress() -> Double {
//        return min(1.0, elapsedTime / 10)
//    }
//}
//
//
//
//
//struct GroupOfDealPopUP: View {
//    var icon: String
//    var text: String
//    var body: some View {
//        HStack(spacing: 16) {
//            Image(systemName: icon)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 20, height: 20)
//            Text(text)
//                .font(.system(size: 14, weight: .regular))
//        }
//        .padding(.leading, 16)
//        .padding(.top, 16)
//        .padding(.bottom, 16)
//        .padding(.trailing, 103)
//    }
//}
//
//#Preview {
//    NewView(isPresented: .constant(false))
//}


