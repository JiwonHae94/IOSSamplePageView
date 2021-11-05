//
//  ContentView.swift
//  IOSSamplePageView
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor: Color {
        return Color(
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
    }
    
    
    var body: some View {
        
        GeometryReader{ geo in
            TabView{
                ForEach(0...50, id: \.self){ num in
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(cardColor)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        
                        Image(systemName: "\(num).circle")
                            .resizable()
                            .padding()
                            .scaledToFit()
                    }
                    
                    .frame(height: max(geo.size.height - 50, 100))
                }
                .padding()
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
