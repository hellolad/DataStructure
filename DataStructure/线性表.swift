//
//  线性表2.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/8/1.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

struct LinearTable2 {
  private var list: [Int]?
  private var count = 0   // 表长度
  private var capacity = 0  // 表容量
  
  typealias Index = Int
  
  /// 初始化线性表
  init(capacity: Int) {
    self.capacity = capacity
    self.list = Array<Int>(repeating: 0, count: capacity)
  }
  
  func debug() {
    if let ls = self.list {
      print(ls)
    }
  }
  
  /// 清空线性表
  mutating func clear() {
    self.capacity = 0
    self.count = 0
    self.list = Array<Int>(repeating: 0, count: self.capacity)
  }
  
  /// 获取指定位置的元素
  func getElement(by index: Index) -> Int? {
    if self.count == 0 || index < 1 || index > self.count {
      return nil
    }
    return self.list?[index-1]
  }
  
  /// 根据值获取第一次出现的位置
  func getIndex(by element: Int) -> Index {
    if self.count == 0 {
      return -1
    }
    for i in 0..<self.capacity {
      if self.list![i] == element {
        return i
      }
    }
    return -1
  }
  
  /// 插入操作
  mutating func insert(index: Index, element: Int) {
    if index < 1 || index > self.count+1 || self.count == self.capacity {
      return
    }
    var k = self.count-1
    while k >= index-1 {
      self.list![k+1] = self.list![k]
      k -= 1
    }
    self.list![index-1] = element
    count += 1
  }
  
  /// 删除操作
  mutating func delete(index: Index) {
    if index < 1 || index > self.count+1 {
      return
    }
    var k = index-1
    while k <= self.count-1 {
      self.list![k] = self.list![k+1]
      k += 1
    }
    count -= 1
  }
  
  
}
