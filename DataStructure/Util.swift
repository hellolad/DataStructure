//
//  Util.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/7/24.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

let MAXSIZE = 20
typealias ElemType = Int
typealias Status = Int
typealias LinkList = Node

func excute(_ message: String, closure: () -> Void) {
    print("---- \(message) ----")
    closure()
    print()
}

