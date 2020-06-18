//
//  bonusList.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/14/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct bonusList: View {
    var body: some View {
        HStack {
            List(bonusData) { bonus in
                BonusButton(bonus: bonus)
            }
            List(bonusData) { bonus in
                BonusButton(bonus: bonus)
            }
            List(bonusData) { bonus in
                BonusButton(bonus: bonus)
            }
            List(bonusData) { bonus in
                BonusButton(bonus: bonus)
            }
        }
    }
}

struct bonusList_Previews: PreviewProvider {
    static var previews: some View {
        bonusList()
    }
}
