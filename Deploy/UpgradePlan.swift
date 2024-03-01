//import SwiftUI
//
//struct UpgradePlan: View{
//    
//    @State private var toggleIsOn: Bool = false
//    @Binding var isPresented: Bool
//    @State private var elapsedTime: TimeInterval = 0
//    @State private var isTimerActive = true
//
//    var body: some View {
//        ZStack {
//            Color(red: 199/255, green: 249/255, blue: 210/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            
//            VStack{
//                
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
//                                ZStack {
//                                    Circle()
//                                        .trim(from: CGFloat(timerProgress()), to: 1)
//                                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
//                                        .rotationEffect(.degrees(-90))
//                                        .foregroundColor(isTimerActive ? Color.black.opacity(0.05) : Color.black)
//                                        .animation(
//                                            Animation.easeInOut(duration: 10)
//                                        )
//                                    
//                                    Circle()
//                                        .trim(from: 0, to: CGFloat(timerProgress()))
//                                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
//                                        .rotationEffect(.degrees(-90))
//                                        .foregroundColor(Color.black)
//                                        .animation(
//                                            Animation.easeInOut(duration: 10)
//                                                .repeatForever(autoreverses: false)
//                                        )
//                                }
//                            )
//                            .disabled(isTimerActive)
//                    }
//                }
//                Spacer()
//            }
//            .padding()
//                
//                
//                
//                
//                
//                
//
//                Image("upgrade")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 221, height: 221)
//            
//                
//                VStack(spacing: 16) {
//                    Text("Upgrade & Enjoy")
//                        .font(.system(size: 24, weight: .bold))
//                    
//                   
//        
//                    Text("Unlimited documents, Signatures, Shares & Participant features")
//                        .font(.system(size:16, weight: .regular))
//                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
//                        .multilineTextAlignment(.center)
//                }
//                
//            
//                VStack(spacing: 9) {
//                    HStack {
//                        Toggle(isOn: $toggleIsOn) {
//                            HStack(spacing: 8) {
//                                Text("14 Day Free Trial")
//                                    .font(.system(size: 14, weight: .medium))
//                                Image(systemName: "info.circle")
//                                    .resizable()
//                                    .frame(width: 16, height: 16)
//                                    .aspectRatio(contentMode: .fill)
//                            }
//                        }
//                        .toggleStyle(SwitchToggleStyle(tint: .black))
//                    }
//                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
//                    .frame(width: 345, height: 48)
//                    .overlay(
//                        Rectangle()
//                            .frame(height: 1)
//                            .foregroundColor(Color(red: 188/255, green: 237/255, blue: 200/255))
//                            .offset(y: 24) // Adjust the offset to position the border
//                    )
//           
//
//                    
//                    HStack{
//                        Image(systemName: "circle")
//                            .resizable()
//                            .frame(width: 20, height: 20)
//                        
//                        Text("Pay Weekly")
//                            .font(.system(size: 14, weight: .medium))
//                        Text("POPULAR")
//                            .font(.system(size: 10, weight: .semibold))
//                            .foregroundColor(.white)
//                            .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
//                            .background(Color.black)
//                            .cornerRadius(8)
//                        
//                        Spacer()
//                        
//                        Text("$4.99")
//                            .font(.system(size: 14, weight: .bold))
//                        
//                    }
//                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
//                    .frame(width: 345, height: 48)
//                    .background(Color(red: 188/255, green: 237/255, blue: 200/255))
//                    .cornerRadius(40)
//                    
//                    
//                    HStack{
//                        ZStack {
//                            Image(systemName: "circle")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 15, height: 15)
//                                .foregroundColor(.black)
//                            
//                            Circle()
//                                .stroke(Color.black, lineWidth: 5)
//                                .frame(width: 15, height: 15)
//                        }
//                        
//                        Text("Pay Yearly")
//                            .font(.system(size: 14, weight: .medium))
//                        
//                        
//                        Spacer()
//                        
//                        Text("$69.99")
//                            .font(.system(size: 14, weight: .bold))
//                        
//                        Text("$99.99")
//                            .font(.system(size: 14, weight: .bold))
//                            .foregroundColor(.black)
//                            .opacity(0.5)
//                            
//                        
//                    }
//                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
//                    .frame(width: 345, height: 48)
//                    .background(Color(.white))
//                    .cornerRadius(8)
//                 
//                    Spacer()
//                    Button(action: {
//                        print("Button tapped!")
//                    }) {
//                        Text("Pay Yearly $69.99")
//                            .font(.system(size: 16, weight: .semibold))
//                            .foregroundColor(.white)
//                            .padding(17)
//                            .padding(.horizontal, 90)
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
//    }
//}
//
//
//#Preview {
//    UpgradePlan()
//}
//
//
////import SwiftUI
////
////struct UpgradePlan: View {
////    @State private var toggleIsOn: Bool = false
////    @State private var selectedOption: Int? = nil
////
////    var body: some View {
////        ZStack {
////            Color(red: 199/255, green: 249/255, blue: 210/255)
////                .edgesIgnoringSafeArea(.all)
////            
////            VStack {
////                Image("upgrade")
////                    .resizable()
////                    .aspectRatio(contentMode: .fill)
////                    .frame(width: 221, height: 221)
////                
////                VStack(spacing: 16) {
////                    Text("Upgrade & Enjoy")
////                        .font(.system(size: 24, weight: .bold))
////                    
////                    Text("Unlimited documents, Signatures, Shares & Participant features")
////                        .font(.system(size:16, weight: .regular))
////                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
////                        .multilineTextAlignment(.center)
////                }
////                
////                VStack(spacing: 9) {
////                    HStack {
////                        ZStack {
////                            Image(systemName: selectedOption == 2 ? "circle" : "circle")
////                                .resizable()
////                                .aspectRatio(contentMode: .fit)
////                                .frame(width: 15, height: 15)
////                                .foregroundColor(.black)
////                            
////                            Circle()
////                                .stroke(Color.black, lineWidth: 5)
////                                .frame(width: 15, height: 15)
////                        }
////                    
////                    HStack {
////                        Button(action: {
////                            selectedOption = selectedOption == 1 ? nil : 1
////                        }) {
////                            Image(systemName: selectedOption == 1 ? "circle" : "circle")
////                                .resizable()
////                                .frame(width: 20, height: 20)
////                            
////                            Text("Pay Weekly")
////                                .font(.system(size: 14, weight: .medium))
////                                .foregroundColor(selectedOption == 1 ? .black : .primary)
////                            Text("POPULAR")
////                                .font(.system(size: 10, weight: .semibold))
////                                .foregroundColor(selectedOption == 1 ? .white : .clear)
////                                .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
////                                .background(selectedOption == 1 ? Color.black : Color.clear)
////                                .cornerRadius(8)
////                            
////                            Spacer()
////                            
////                            Text("$4.99")
////                                .font(.system(size: 14, weight: .bold))
////                        }
////                        .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
////                        .frame(width: 345, height: 48)
////                        .background(selectedOption == 1 ? Color(red: 188/255, green: 237/255, blue: 200/255) : Color.clear)
////                        .cornerRadius(40)
////                    }
////                    
////                    HStack {
////                        Button(action: {
////                            selectedOption = selectedOption == 2 ? nil : 2
////                        }) {
////                            ZStack {
////                                Image(systemName: selectedOption == 2 ? "circle" : "circle")
////                                    .resizable()
////                                    .aspectRatio(contentMode: .fit)
////                                    .frame(width: 15, height: 15)
////                                    .foregroundColor(.black)
////                                
////                                Circle()
////                                    .stroke(Color.black, lineWidth: 5)
////                                    .frame(width: 15, height: 15)
////                            }
////                            
////                            Text("Pay Weekly")
////                                .font(.system(size: 14, weight: .medium))
////                            
////                            Spacer()
////                            
////                            Text("$69.99")
////                                .font(.system(size: 14, weight: .bold))
////                            
////                            Text("$99.99")
////                                .font(.system(size: 14, weight: .bold))
////                                .foregroundColor(.black)
////                                .opacity(0.5)
////                        }
////                        .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
////                        .frame(width: 345, height: 48)
////                        .background(selectedOption == 2 ? Color.white : Color.clear)
////                        .cornerRadius(8)
////                    }
////                    
////                    Spacer()
////                    
////                    Button(action: {
////                        print("Button tapped!")
////                    }) {
////                        Text("Pay Yearly $69.99")
////                            .font(.system(size: 16, weight: .semibold))
////                            .foregroundColor(.white)
////                            .padding(17)
////                            .padding(.horizontal, 100)
////                            .background(Color.black)
////                            .cornerRadius(1000)
////                            .overlay(
////                                RoundedRectangle(cornerRadius: 1000)
////                                    .stroke(Color.blue, lineWidth: 1)
////                            )
////                    }
////                }
////            }
////        }
////    }
////}
////
////#Preview {
////    UpgradePlan()
////}


import SwiftUI

struct UpgradePlan: View {
    @Binding var isPresented: Bool
    @State private var toggleIsOn: Bool = false
    @State private var elapsedTime: TimeInterval = 0
    @State private var isTimerActive = true

    var body: some View {
        ZStack {
            Color(red: 199/255, green: 249/255, blue: 210/255)
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
                    .padding()
                }
                
                Spacer()
                
                Image("upgrade")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 221, height: 221)
                
                VStack(spacing: 16) {
                    Text("Upgrade & Enjoy")
                        .font(.system(size: 24, weight: .bold))
                    
                    Text("Unlimited documents, Signatures, Shares & Participant features")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.5))
                        .multilineTextAlignment(.center)
                }
                
                VStack(spacing: 9) {
                    HStack {
                        Toggle(isOn: $toggleIsOn) {
                            HStack(spacing: 8) {
                                Text("14 Day Free Trial")
                                    .font(.system(size: 14, weight: .medium))
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .aspectRatio(contentMode: .fill)
                            }
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .black))
                    }
                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
                    .frame(width: 345, height: 48)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color(red: 188/255, green: 237/255, blue: 200/255))
                            .offset(y: 24) // Adjust the offset to position the border
                    )
                    
                    HStack {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text("Pay Weekly")
                            .font(.system(size: 14, weight: .medium))
                        
                        Text("POPULAR")
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                            .background(Color.black)
                            .cornerRadius(8)
                        
                        Spacer()
                        
                        Text("$4.99")
                            .font(.system(size: 14, weight: .bold))
                    }
                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
                    .frame(width: 345, height: 48)
                    .background(Color(red: 188/255, green: 237/255, blue: 200/255))
                    .cornerRadius(40)
                    
                    HStack {
                        ZStack {
                            Image(systemName: "circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15, height: 15)
                                .foregroundColor(.black)
                            
                            Circle()
                                .stroke(Color.black, lineWidth: 5)
                                .frame(width: 15, height: 15)
                        }
                        
                        Text("Pay Yearly")
                            .font(.system(size: 14, weight: .medium))
                        
                        Spacer()
                        
                        Text("$69.99")
                            .font(.system(size: 14, weight: .bold))
                        
                        Text("$99.99")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.black)
                            .opacity(0.5)
                    }
                    .padding(EdgeInsets(top: 15, leading: 12, bottom: 14, trailing: 12))
                    .frame(width: 345, height: 48)
                    .background(Color(.white))
                    .cornerRadius(8)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Text("Pay Yearly $69.99")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(17)
                            .padding(.horizontal, 90)
                            .background(Color.black)
                            .cornerRadius(1000)
                            .overlay(
                                RoundedRectangle(cornerRadius: 1000)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                    }
                }
                .padding()
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

struct UpgradePlan_Previews: PreviewProvider {
    static var previews: some View {
        UpgradePlan(isPresented: .constant(true))
    }
}
