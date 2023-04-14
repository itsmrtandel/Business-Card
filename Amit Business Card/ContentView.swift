//
//  ContentView.swift
//  Amit Business Card
//
//  Created by Amit Tandel on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.77, blue: 0.06)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Amit")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Amit Tandel")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "650-995-4234", imageName: "phone.fill")
                InfoView(text: "mr.amit.tandel@gmail.com", imageName: "envelope.fill")
                InfoView(text: "www.amittandel.com", imageName: "paperplane.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


