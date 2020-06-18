//
//  ClearButton.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/15/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct ClearButton: View {
    var bonus: Bonus
    @EnvironmentObject var bonusPoints: BonusStats
    @State var totalBonusCount = UserDefaults.standard.integer(forKey: "Total Bonus Count")
    @State var totalPointsEarned = UserDefaults.standard.double(forKey: "Total Points Earned")
    
    var body: some View {
        Button(action: {
            // Do Math
            self.bonusPoints.bonusTally = 0
            self.bonusPoints.bonusPointTotal = 0.00
            // Save to UserDefaults
            UserDefaults.standard.set(self.bonusPoints.bonusTally, forKey: "Total Bonus Count")
            UserDefaults.standard.set(self.bonusPoints.bonusPointTotal, forKey: "Total Points Earned")
            // Print results to console
            print("\(self.bonus.name) button pressed, worth \(self.bonus.value) points. New total is \(self.bonusPoints.bonusPointTotal)")
        }) {
            VStack {
                Text("Clear Data").font(.headline)
            }
        }
    }
}

struct ClearButton_Previews: PreviewProvider {
    static var previews: some View {
        ClearButton(bonus: bonusData[0])
    }
}
