//
//  RewardsView.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/2/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct RewardsView: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 5){
                    Image(uiImage: UIImage(named: "coupon1.jpg")!)
                        .resizable()
                        .scaledToFill()
                        .frame(width:340, height: 155)
            
                    Image(uiImage: UIImage(named: "coupon2.jpg")!)
                        .resizable()
                        .scaledToFill()
                        .frame(width:340, height: 155)
//                    Image(uiImage: UIImage(named: "coupon3.jpg")!)
                        .resizable()
                        .scaledToFill()
                        .frame(width:340, height: 155)
            }
            .navigationBarItems(leading: RewardsNavView(leftPercent: 0))
        }
      
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
