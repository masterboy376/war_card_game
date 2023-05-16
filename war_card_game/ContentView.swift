//
//  ContentView.swift
//  war_card_game
//
//  Created by Sambhav Kaushik on 15/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card2" 
    @State var cpuCard:String = "card3"
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    deal()
                }) {
                    Image("button")
                        .renderingMode(.original)
                }
                Image("button")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
    
    func deal() {
        var playerCardValue:Int = Int.random(in: 2...14)
        playerCard = "card"+String(playerCardValue)

        var cpuCardValue:Int = Int.random(in: 2...14)
        var cpuCard = "card"+String(cpuCardValue)

        if(playerCardValue>cpuCardValue){
            playerScore+=1
        }
        else if(playerCardValue<cpuCardValue){
            cpuScore+=1
        }
        else{
            playerScore+=1
            cpuScore+=1
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
