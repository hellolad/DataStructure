//
//  线性表链式存储结构.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/7/24.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

class Node {
    var data: ElemType?
    var next: Node?
}

struct ChainStore {
    func GetElem(L: LinkList, i: Int, e: inout ElemType) -> Bool{
        var j = 1
        var p = L.next
        if p != nil {
            while j<i {
                p = p?.next
                j += 1
            }
        }
        if p==nil || j>i {
            return false
        }
        e = (p?.data)!
        return true
    }
}
