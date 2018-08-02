//
//  main.swift
//  DataStructure
//
//  Created by ZhaoHeng on 2018/7/24.
//  Copyright © 2018年 ZhaoHeng. All rights reserved.
//

import Foundation

//excute("线性表顺序存储结构") {
//  var list = SqList()
//  var e: ElemType = 0
//  OrderStore.GetElem(L: list, i: 1, e: &e)
//  print("e = \(e)")
//  OrderStore.ListInsert(L: &list, i: 1, e: 3)
//  OrderStore.GetElem(L: list, i: 1, e: &e)
//  print("e = \(e)")
//  OrderStore.ListInsert(L: &list, i: 1, e: 4)
//  print(list.data)
//  OrderStore.ListInsert(L: &list, i: 2, e: 5)
//  print(list.data)
//  OrderStore.ListInsert(L: &list, i: 5, e: 20)
//  print(list.data)
////  OrderStore.ListDelete(L: &list, i: 2, e: &e)
////  print(list.data, e, list.length)
//}


//excute("线性表") {
//  let list = Array<Int>(repeating: 0, count: 10)
//  var lb = LinearTable<Int>()
//  lb.initList(list: list)
//  lb.printList()
//  lb.listInsert(index: 0, e: 1)
//  lb.printList()
//  lb.listInsert(index: 2, e: 3)
//  lb.printList()
//  lb.listInsert(index: -1, e: 2)
//  lb.printList()
//  lb.listInsert(index: 4, e: 100)
//  lb.printList()
//  lb.listInsert(index: 9, e: 12)
//  lb.printList()
//  lb.listInsert(index: 9, e: 11)
//  lb.printList()
//  lb.listInsert(index: 8, e: 10)
//  lb.printList()
//  lb.listInsert(index: 4, e: 23)
//  lb.printList()
//  lb.listDelete(index: 9)
//  lb.printList()
//}


excute("线性表") {
  var list = LinearTable2(capacity: 10)
  list.insert(index: 1, element: 1)
  list.debug()
  list.insert(index: 1, element: 2)
  list.debug()
  list.insert(index: 1, element: 3)
  list.debug()
  list.insert(index: 1, element: 4)
  list.debug()
  list.insert(index: 1, element: 5)
  list.debug()
  list.delete(index: 1)
  list.debug()
  list.delete(index: 2)
  list.debug()
}

excute("单链表 头插法") {
  let head = LinkList(data: 1)
  for i in 0..<10 {
    let p = LinkList(data: i+2)
    p.next = head.next
    head.next = p
  }
  
  print(head.data)
  print(head.next?.data)
  print(head.next?.next?.data)
  print(head.next?.next?.next?.data)
  print(head.next?.next?.next?.next?.data)
}

excute("单链表 尾插发") {
  let head = LinkList(data: 1)
  var r = head
  for i in 0..<10 {
    let p = LinkList(data: i+2)
    r.next = p
    r = p
  }
  print(head.data)
  print(head.next?.data)
  print(head.next?.next?.data)
  print(head.next?.next?.next?.data)
  print(head.next?.next?.next?.next?.data)
}

