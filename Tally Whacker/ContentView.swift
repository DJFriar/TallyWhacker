//
//  ContentView.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/14/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var bonusPoints: BonusStats
    @State private var showTally = false
    @State var totalBonusCount = UserDefaults.standard.integer(forKey: "Total Bonus Count")
    @State var totalPointsEarned = UserDefaults.standard.double(forKey: "Total Points Earned")
    
    var body: some View {
        VStack(spacing: 5) {
            Text("\(self.bonusPoints.bonusTally)  /  \(self.bonusPoints.bonusPointTotal, specifier: "%.3f")")
                .frame(width: 350)
                .border(Color.gray, width: 2)
                .padding()
                .multilineTextAlignment(.center)
            //            TextField("\(totalPointsEarned)", text: $calculatorText)
            //                .border(Color.gray, width: 2)
            //                .padding()
            //                .multilineTextAlignment(.center)
            
            //            GridBuilder(rows: 4, columns: 4) { row, col in
            //                Image(systemName: "\(row * 4 + col).circle")
            //                Text("R\(row) C\(col)")
            //            }
            //
            //            GridBuilder(rows: 1, columns: 1) { row, col in
            //                ForEach(bonusData) { bonus in
            //                    BonusButton(bonus: bonus)
            //                }
            //            }
            
            HStack {
                BonusButton(bonus: bonusData[0])
                Spacer()
                BonusButton(bonus: bonusData[1])
                Spacer()
                BonusButton(bonus: bonusData[2])
                Spacer()
                BonusButton(bonus: bonusData[3])
            }.padding(8)
            
            //            HStack {
            //                ForEach(bonusData) {bonus in
            //                    BonusButton(bonus: bonus)
            //                }
            //            }.padding(8)
            
            HStack {
                BonusButton(bonus: bonusData[4])
                Spacer()
                BonusButton(bonus: bonusData[5])
                Spacer()
                BonusButton(bonus: bonusData[6])
                Spacer()
                BonusButton(bonus: bonusData[7])
            }.padding(8)
            
            HStack {
                BonusButton(bonus: bonusData[8])
                Spacer()
                BonusButton(bonus: bonusData[9])
                Spacer()
                BonusButton(bonus: bonusData[10])
                Spacer()
                BonusButton(bonus: bonusData[11])
            }.padding(8)
            
            HStack {
                BonusButton(bonus: bonusData[12])
                Spacer()
                BonusButton(bonus: bonusData[13])
                Spacer()
                BonusButton(bonus: bonusData[14])
                Spacer()
                BonusButton(bonus: bonusData[15])
            }.padding(8)
            
            HStack {
                BonusButton(bonus: bonusData[16])
                Spacer()
                BonusButton(bonus: bonusData[17])
                Spacer()
                BonusButton(bonus: bonusData[18])
                Spacer()
                BonusButton(bonus: bonusData[19])
            }.padding(8)
            
            HStack {
                Spacer()
                UndoButton(bonus: bonusData[0])
                Spacer()
                ClearButton(bonus: bonusData[0])
                Spacer()
                Button(action: {
                    self.showTally.toggle()
                }) {
                    Text("Show Tally")
                }
                Spacer()
            }.padding()
                .font(.headline)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
