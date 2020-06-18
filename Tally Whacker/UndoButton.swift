//
//  UndoButton.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/15/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct UndoButton: View {
    var bonus: Bonus
    @EnvironmentObject var bonusPoints: BonusStats
    @State var totalBonusCount = UserDefaults.standard.integer(forKey: "Total Bonus Count")
    @State var totalPointsEarned = UserDefaults.standard.double(forKey: "Total Points Earned")
    
    var body: some View {
        Button(action: {
            // Do Math
            self.bonusPoints.bonusTally -= 1
            UserDefaults.standard.set(self.bonusPoints.bonusTally, forKey: "Total Bonus Count")
            self.bonusPoints.bonusPointTotal -= self.bonus.value
            UserDefaults.standard.set(self.bonusPoints.bonusPointTotal, forKey: "Total Points Earned")
            print("\(self.bonus.name) button pressed, worth \(self.bonus.value) points. New total is \(self.bonusPoints.bonusPointTotal)")
        }) {
            VStack {
                Text("Undo Last").font(.headline)
            }
        }
    }
}

struct UndoButton_Previews: PreviewProvider {
    static var previews: some View {
        UndoButton(bonus: bonusData[0])
    }
}
