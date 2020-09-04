//
//  RewardsUsedView.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/2/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct RewardsUsedView: View {
    var body: some View {
        VStack (spacing: 5){
                Image(uiImage: UIImage(named: "coupon_u_1.png")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width:340, height: 155)
        }
    }
}

struct RewardsUsedView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsUsedView()
    }
}
