//
//  ContentView.swift
//  War Card Game
//
//  Created by Andrew Wei on 2023-08-28.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "back"
    var dealerCard = "back"
    
    var playerScore = 0
    var dealerScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(dealerCard)
                    Spacer()
                }
                
                .padding(.vertical, 20.0)
                
                Button
                {deal()}
                    label: {Image("button")}


                HStack{
                    Spacer()
                    VStack(alignment: .center){
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(dealerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(20.0)
                .foregroundColor(Color.white)
            }
        }

    }
    
    func deal(){
        print("Dealed cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
