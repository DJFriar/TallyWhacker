//
//  BonusButton.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/14/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct BonusButton: View {
    var bonus: Bonus
    @EnvironmentObject var bonusPoints: BonusStats
    let totalBonusCount = UserDefaults.standard.integer(forKey: "Total Bonus Count")
    let totalPointsEarned = UserDefaults.standard.double(forKey: "Total Points Earned")
    
    var body: some View {
        Button(action: {
            // Do Math
            self.bonusPoints.bonusTally += 1
            self.bonusPoints.bonusPointTotal += self.bonus.value
            UserDefaults.standard.set(self.bonusPoints.bonusTally, forKey: "Total Bonus Count")
            UserDefaults.standard.set(self.bonusPoints.bonusPointTotal, forKey: "Total Points Earned")
            print("\(self.bonus.name) button pressed, worth \(self.bonus.value) points. New total is \(self.bonusPoints.bonusPointTotal) / \(self.totalPointsEarned)")
        }) {
            VStack {
                Text(bonus.name).font(.largeTitle)
                Text("\(bonus.value, specifier: "%.3g")p").font(.caption)
            }
            .padding(4)
            .frame(width: 70, height: 70)
            .border(Color.gray, width: 2)
        }
    }
}

struct BonusButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BonusButton(bonus: bonusData[0])
            BonusButton(bonus: bonusData[1])
            BonusButton(bonus: bonusData[19])
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
