//
//  ContentView.swift
//  SwiftUIExample4
//
//  Created by Adi Mizrahi on 06/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                Color.black.opacity(0.75).ignoresSafeArea()
                VStack() {
                    HStack {
                        Image("close").renderingMode(.template).foregroundColor(Color("GrayColor")).frame(width: 20.0, height: 20.0)
                        Spacer()
                    }.frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.35 * 0.08)
                    HStack {
                        Image("info").resizable().renderingMode(.template).foregroundColor(Color("GrayColor")).frame(width: 46, height: 46)
                    }.frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.35 * 0.25)
                    HStack {
                        Text("Learn how to record outgoing calls").multilineTextAlignment(.center).foregroundColor(Color("GrayColor")).font(.system(size: 21, weight: .medium, design: .default))
                    }.frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.35 * 0.3)
                    HStack {
                        Capsule()
                                .fill(Color("RedColor"))
                                .overlay(
                                    Text("Begin Tutorial").foregroundColor(.white).font(.system(size: 20, weight: .medium, design: .default))
                                )
                    }.frame(width: 277, height: 60)
                }.frame(width: 303, height: 236).background(Color.white).clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                  
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
