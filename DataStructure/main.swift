//
//  main.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/7/24.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

excute("线性表顺序存储结构") {
    var list = SqList()
    var e: ElemType = 0
    GetElem(L: list, i: 1, e: &e)
    print("e = \(e)")
    ListInsert(L: &list, i: 1, e: 3)
    GetElem(L: list, i: 1, e: &e)
    print("e = \(e)")
    ListInsert(L: &list, i: 1, e: 4)
    print(list.data)
    ListInsert(L: &list, i: 2, e: 5)
    print(list.data)
    ListDelete(L: &list, i: 2, e: &e)
    print(list.data, e, list.length)
}

