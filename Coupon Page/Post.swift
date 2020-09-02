//
//  Post.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/1/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct PostList: Codable{
    var list: [Post]
}

// 这是一个data model
// Codable -> 可编码也可以解码
struct Post: Codable {
    // Property -> 用let(不可变)/var（可变）
    let id: Int
    let avatar: String // 头像 -> 后面接图片名称
    let vip: Bool // true, false
    let name: String
    let date: String
    
    var isFollowed: Bool
    
    let text: String
    let images: [String]

    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}

// postList 没有被包在大括号里面 -> 这是一个全局变量
let postList = loadPostListData("PostListData_recommend_1.json")

func loadPostListData(_ fileName:String) -> PostList {
    //  通过文件名找到一个url
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Can not find this \(fileName) in main bundle")
    }
    
    // 通过url加载数据
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can't load \(url)")
    }
    
    // 通过解析json类型的数据，得到我们想要的数据结构
    guard let list = try? JSONDecoder().decode(PostList.self, from:data) else{
        fatalError("Can't parse post list json data")
    }
    
    return list
}
