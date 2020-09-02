//
//  vipBadge.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/1/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct vipBadge: View {
    let vip: Bool
    
    var body: some View {

        // 放在group里面 -> 如果满足条件，进if； 如果不满足，group里面为空，显示为空
        Group {
            if vip {
                Text("V")
                .bold()
                .font(.system(size: 11))
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
                    .background(Color.red)
                .clipShape(Circle())
                .overlay(
                    RoundedRectangle(cornerRadius: 7.5)
                        .stroke(Color.white, lineWidth: 1 )
                )
            }
        }
    }
}

struct vipBadge_Previews: PreviewProvider {
    static var previews: some View {
        vipBadge(vip: true)
    }
}
