//
//  ContentView.swift
//  ImagesFontsColors-01
//
//  Created by Mike Panitz on 5/23/21.
//

import SwiftUI


struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("God mode in the making")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ContentView: View {
    var body: some View {
        
        
        VStack{
            Image("manInBlack")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(ImageOverlay(), alignment: .center)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
