//
//  ContentView.swift
//  DiceAppSwiftUI
//
//  Created by Adm Aidyn on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDicenumber = 1
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.green)
                .ignoresSafeArea()
            VStack {
                Text("Dice App")
                    .font(.system(size: 30, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                HStack {
                    Image("dice\(leftDiceNumber)")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                    Image("dice\(rightDicenumber)")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                }
                Spacer()
                
                Button(action:{
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDicenumber = Int.random(in: 1...6)
                }) {
                    Text("Shuffle")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
