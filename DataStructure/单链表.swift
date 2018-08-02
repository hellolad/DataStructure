//
//  单链表.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/8/1.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

class LinkList {
  typealias Index = Int
  typealias ElementType = Int
  var data: ElementType?
  var next: LinkList?
  
  init(data: ElementType) {
    self.data = data
    self.next = nil
  }
  
  // 获取某一个位置的值
  func get(index: Index) -> ElementType? {
    var j = 1
    var p = self.next
    if let _ = p {
      while j<index {
        p = p?.next
        j += 1
      }
    }
    if p==nil || j>index {
      return nil
    }
    self.data = p?.data
    return self.data
  }
  
  // 插入一个元素
  func insert(index: Index, element: ElementType) {
    var j = 1
    var p = self.next
    if let _ = p {
      while j < index {
        p = p?.next
        j += 1
      }
    }
    if p==nil || j>index {
      return
    }
    let s = LinkList(data: element)
    
    s.next = p?.next
    p?.next = s
  }
  
  // 删除一个元素
  func delete(index: Index) {
    var j = 1
    var p = self.next
    if let _ = p {
      while j < index {
        p = p?.next
        j += 1
      }
    }
    if p==nil || j>index {
      return
    }
    let q = p?.next
    p?.next = q?.next
  }
}
