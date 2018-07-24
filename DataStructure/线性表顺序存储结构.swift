//
//  线性表顺序存储结构.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/7/24.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

class SqList {
    var data = Array<ElemType>(repeating: 0, count: MAXSIZE)
    var length: Int = 0
}

struct OrderStore{
    // 获取元素操作
    @discardableResult
    static func GetElem(L: SqList, i: Int, e: inout ElemType) -> Bool {
        if L.length==0 || i<1 || i>L.length {
            return false
        }
        e = L.data[i-1];
        return true
    }
    
    // 插入元素操作
    @discardableResult
    static func ListInsert(L: inout SqList, i: Int, e: ElemType) -> Bool {
        if L.length == MAXSIZE {
            return false
        }
        if i<1 || i>L.length+1 {
            return false
        }
        if i<=L.length {
            var k = L.length-1
            while k>=i-1 {
                L.data[k+1] = L.data[k]
                k -= 1
            }
        }
        L.data[i-1] = e;
        L.length += 1;
        return true
    }
    
    // 删除元素操作
    @discardableResult
    static func ListDelete(L: inout SqList, i: Int, e: inout ElemType) -> Bool {
        if L.length == 0 {
            return false
        }
        if i<1 || i>L.length {
            return false
        }
        e = L.data[i-1]
        if i<=L.length {
            var k = i
            while k<=L.length {
                L.data[k-1] = L.data[k]
                k += 1
            }
        }
        L.length -= 1
        return true
    }
}
