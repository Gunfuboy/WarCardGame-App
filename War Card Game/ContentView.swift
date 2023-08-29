//
//  ContentView.swift
//  War Card Game
//
//  Created by Andrew Wei on 2023-08-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding(.bottom, 20.0)
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                .padding(.vertical, 20.0)
                Image("button")
                    .padding(20.0)
                HStack{
                    Spacer()
                    VStack(alignment: .center){
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(20.0)
                .foregroundColor(Color.white)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
