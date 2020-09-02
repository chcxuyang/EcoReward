//
//  HomePage.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/1/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    let post: Post
    
    var body: some View {
        // HStack -> Horizontal
        HStack(spacing: 5) {
            
            Image(uiImage: UIImage(named: post.avatar)!)
                .resizable()
                .scaledToFill()
                .frame(width:50, height:50)
                .clipShape(Circle())
            // 在用户头像上面加一个vip标志
                .overlay(
                    vipBadge(vip: post.vip)
                        .offset(x:16, y:16)
                    
            )
            
            // VStack -> Vertical
            VStack(alignment: .leading, spacing: 5) {
                Text(post.name)
                    .font(Font.system(size:26))
                    .foregroundColor(Color(red:242 / 255, green: 219 / 255, blue: 4 / 255))
                .lineLimit(1)

                Text(post.date)
                    .font(.system(size:12))
                    .foregroundColor(.gray)
            }
            // 调整间距 leading -> 调整左边的间距
            .padding(.leading, 10)
            
            if !post.isFollowed {
                // 添加屏幕的auto sapce
                // spacer -> 添加一个站位的view -> 看不见的一个space
                Spacer()
                
                // Button 有两个参数，第一个参数是action，第二个参数是{} -> 里面定义这个button长什么样子
                Button(action: {
                    print("Click follow button")
                }) {
                    Text("Follow")
                        .font(.system(size:16))
                        .foregroundColor(.orange)
                        .frame(width: 60, height: 36)
                    // 添加一个圆角矩形 -> 用overlay再叠加一个view
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            // 加一个边框 -> stroke
                            .stroke(Color.orange, lineWidth: 1)
                    )
                }
            }
        }
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(post: postList.list[0])
    }
}
