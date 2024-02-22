
import SwiftUI

struct HomeView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    @State private var isShowingPDFScannerPopup = false
    
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("tapped")
                } label: {
                    HStack(){
                        Text("🗓️ 7/14 Free day left")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.black)
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .renderingMode(.original)
                            .foregroundColor(.black)
                            .aspectRatio(contentMode: .fit)
                            .font(.system(size: 10))
                            .frame(width: 10, height: 10)
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 8, trailing: 24))
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(50)
                }
            }
            .padding()
            
            VStack(spacing: 12) {
                Text("Welcome")
                    .font(.system(size: 40, weight: .bold))
                
                Text("Select category and start scanning")
                    .foregroundColor(Color.black.opacity(0.5))
            }
            
            Spacer()
            
            LazyVGrid(columns: columns) {
                GridView(imageName: "doc.viewfinder", title: "PDF Scanner", details: "Powerful scanner that fits in your pocket!", gridBgColor: Color(red: 202 / 255, green: 249 / 255, blue: 207 / 255), iconBgColor: Color(red: 188 / 255, green: 237 / 255, blue: 200 / 255) )
                    .onTapGesture {
                        isShowingPDFScannerPopup.toggle()
                    }
                
                GridView(imageName: "t.square", title: "OCR", details: "Scan photo and convert it to text in real time", gridBgColor: Color(red: 180 / 255, green: 238 / 255, blue: 241 / 255), iconBgColor: Color(red: 163 / 255, green: 226 / 255, blue: 228 / 255))
                
                GridView(imageName: "person", title: "ID scan", details: "Scan your ID data with the most perfect quality", gridBgColor: Color(red: 254 / 255, green: 234 / 255, blue: 207 / 255), iconBgColor: Color(red: 244 / 255, green: 222 / 255, blue: 199 / 255))
                
                GridView(imageName: "signature", title: "Signature", details: "Powerful scanner that fits in your pocket!", gridBgColor: Color(red: 222 / 255, green: 201 / 255, blue: 244 / 255), iconBgColor: Color(red: 212 / 255, green: 191 / 255, blue: 230 / 255))
            }
            .padding(24)
            .sheet(isPresented: $isShowingPDFScannerPopup) {
                PDFScannerPopupView()
                    .frame(width: 393, height: 330)
                    .background(Color.white)
                    .cornerRadius(16)
                    .presentationDetents([.height(330)])
            }
        
            Spacer()
        }
    }
    
    
    struct PDFScannerPopupView: View {
        var body: some View {
            VStack(alignment: .leading) {
                HStack() {
                    Text("PDF Scanner")
                        .font(.system(size: 20, weight: .bold))
                    
                    Spacer()
                    Image(systemName: "xmark")
                        .frame(width: 20, height: 20)
                }
                .padding()
                
                
            
                
                HStack(spacing: 16) {
                    Image(systemName: "camera")
                        .frame(width: 48, height: 48)

    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Open Camera")
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Description text here")
                            .font(.system(size: 14, weight: .regular))
                            .opacity(0.5)
                    }
                }
                .padding()
                
                HStack(spacing: 16) {
                    Image(systemName: "person.2.crop.square.stack")
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Choose from Gallery")
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Description text here")
                            .font(.system(size: 14, weight: .regular))
                            .opacity(0.5)
                    }
                }
                .padding()
                
                HStack(spacing: 16){
                    Image(systemName: "folder")
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Choose from Files")
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Description text here")
                            .font(.system(size: 14, weight: .regular))
                            .opacity(0.5)
                    }
                }
                .padding()
                
                
                
                Spacer()
                
            }
        }
    }
    
    
struct GridView: View {
        let imageName: String
        let title: String
        let details: String
        let gridBgColor: Color
        let iconBgColor: Color
    
        var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: imageName)
                     .font(.system(size: 15))
                     .foregroundColor(.black)
                     .frame(width: 40, height: 40)
                     .background(iconBgColor)
                     .cornerRadius(100)
    
    
                    Text(title)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.black)
    
                    Text(details)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color.black.opacity(0.5))
                    }
                    .padding()
                    .background(gridBgColor)
                    .cornerRadius(16)
                    .frame(width: 164.5, height: 192)
        }
    }
}
    
    
#Preview {
    HomeView()
}
    

