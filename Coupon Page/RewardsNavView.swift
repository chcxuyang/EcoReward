//
//  RewardsNavView.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/2/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

private let KLabelWidth: CGFloat = 70
private let KButtonHeight: CGFloat = 24

struct RewardsNavView: View {
    @State var leftPercent: CGFloat // 0 for left, 1 for right
    var body: some View {

        // VStack for 3 button
        VStack{
            // HStack for two choices
            HStack(spacing: 0){
                Text("Available")                        .font(Font.system(size:15))
                    .foregroundColor(.black)
                    .frame(width: KLabelWidth, height: KButtonHeight)
                    .opacity(Double(1 - leftPercent * 0.5))
                    .onTapGesture{
                        withAnimation{
                            self.leftPercent = 0
                        }
                }
                
                Spacer()
                
                Text("Used")
                    .font(.system(size:15))
                    .foregroundColor(.black)
                    .frame(width: KLabelWidth, height: KButtonHeight)
                    .opacity(Double(0.5 + leftPercent * 0.5))
                    .onTapGesture{
                        withAnimation{
                          self.leftPercent = 1
                        }
                }
            }
            
            
            // Add green underline
            GeometryReader{ geometry in
                RoundedRectangle(cornerRadius: 2)
                .foregroundColor(.green)
                .frame(width:50, height:4)
                .offset(x: UIScreen.main.bounds.width * 0.86 * (self.leftPercent - 0.5) + KLabelWidth * (0.5 - self.leftPercent))
            }
            .frame(height:6)
        }
            
        // set the width size of two choice
        .frame(width:UIScreen.main.bounds.width * 0.86)
            
        

   
    
    
    
        
        
        
        
        
    }
    
}




struct RewardsNavView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsNavView(leftPercent: 0)
    }
}
