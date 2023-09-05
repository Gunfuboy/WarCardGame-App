//
//  RulesPopUp.swift
//  War Card Game
//
//  Created by Andrew Wei on 2023-09-03.
//

import SwiftUI

struct RulesPopUp: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
//            Color.black.opacity(0.7).edgesIgnoringSafeArea(.all)
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                       dismiss() // Dismiss the popover
                    }) {
                        Image(systemName: "xmark")
                    }
                    .padding([.top, .trailing])
                }
                
                Text("Rules")
                    .font(.largeTitle)
                    .fontWeight(.bold)
               Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                VStack{
                    HStack{
                        Text("Press")
                        Image("button")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:80)
                        Text("to deal the cards.")
                    }
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 10.0)
                    Text("If your card number is higher than the dealer's, you win 1 point, if the dealer's card is higher, they win 1 point.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 11.0)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 10.0)
                }
                
                Spacer()
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct RulesPopUp_Previews: PreviewProvider {
    static var previews: some View {
        RulesPopUp()
    }
}
