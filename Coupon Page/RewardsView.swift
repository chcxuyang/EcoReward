//
//  RewardsView.swift.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/2/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct RewardsView: View {
    
    @State var leftPercent: CGFloat = 0
    
    var body: some View {
        NavigationView{
            GeometryReader {geometry in
                HScrollViewController(pageWidth: geometry.size.width, contentSize: CGSize(width: geometry.size.width * 2, height: geometry.size.height),
                    leftPercent: self.$leftPercent)
                {
                    HStack(spacing:0){
                                       RewardsAvailableView()
                                           .frame(width:UIScreen.main.bounds.width)
                                       RewardsUsedView()
                                           .frame(width:UIScreen.main.bounds.width)
                    }
                    
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading: RewardsNavView(leftPercent: $leftPercent))
        }
      
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
