//
//  ContentView.swift
//  War Card Game
//
//  Created by Andrew Wei on 2023-08-28.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "back"
    @State private var dealerCard = "back"
    
    @State private var playerScore = 0
    @State private var dealerScore = 0
    

    
    @State private var background: Image = Image("background-plain")
    
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                background
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    HStack{
                        NavigationLink {
                            RulesPopUp().navigationBarBackButtonHidden(true)
                        }
                        label: {
                            Text("Rules")
                                .fontWeight(.semibold)
                                .padding(.horizontal, 37.0)
                                .padding(.vertical, 10)
                                .cornerRadius(10)
                                .background(Color(red: 0.945, green: 0.393, blue: 0.324))
                                .foregroundColor(Color(red: 0.995, green: 0.935, blue: 0.784))
                        }
                        .border(/*@START_MENU_TOKEN@*/Color(red: 0.995, green: 0.935, blue: 0.784)/*@END_MENU_TOKEN@*/, width: 4)
                        .cornerRadius(10)
                        .padding([.leading, .bottom], 10.0)
                        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                        

                        
                        Spacer()
                        
                        Button
                        {changeBackground()}
                        label:
                        {Text("Background")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 10)
                            .cornerRadius(10)
                            .background(Color(red: 0.945, green: 0.393, blue: 0.324))
                            .foregroundColor(Color(red: 0.995, green: 0.935, blue: 0.784))
                        }
                        .border(/*@START_MENU_TOKEN@*/Color(red: 0.995, green: 0.935, blue: 0.784)/*@END_MENU_TOKEN@*/, width: 4)
                        .cornerRadius(10)
                        .padding([.bottom, .trailing], 10.0)
                        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Image("logo")
                        .padding(.bottom, 20.0)
                    HStack{
                        Spacer()
                        VStack{
                            Text("Player")
                                
                            Image(playerCard)
                        }
                        
                        Spacer()
                        VStack{
                            Text("Dealer")
                            Image(dealerCard)
                        }
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.semibold)
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
                            Text("Dealer")
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
        
    }
    
    func deal(){
        let newPlayerCard = Int.random(in: 2..<8)
        let newDealerCard = Int.random(in: 2..<8)
        playerCard = "card" + String(newPlayerCard)
        dealerCard = "card" + String(newDealerCard)
        calculateScore(PlayerNumber: newPlayerCard, DealerNumber: newDealerCard)
    }
    
    func calculateScore( PlayerNumber x: Int, DealerNumber y: Int) {
        if (x > y) {
            playerScore += 1
        }else if (y>x){
            dealerScore += 1
        }
    }
    
    
    func changeBackground(){
        if background == Image("background-plain"){
            background = Image("background-cloth")
        }else if background == Image("background-cloth"){
            background = Image("background-wood-cartoon")
        }else if background == Image("background-wood-cartoon"){
            background = Image("background-wood-grain")
        }else {
            background = Image("background-plain")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
