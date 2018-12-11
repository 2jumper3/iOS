////
////  main.swift
////  lesson-2
////
////  Created by Елизавета Кубански on 10.12.2018.
////  Copyright © 2018 Удалов Сергей. All rights reserved.
////
import Foundation

//1

let chisla = [1, 123, 435, 24, 54]

func fun2() {
    for number in chisla where number % 2 == 0 {
        print (number)
    }

}
fun2()

//2

let proverka = [12, 123, 435, 24, 53]

func fun3() {
    for number in proverka where number % 3 == 0 {
        print ("Na 3 bez ostatka \(number)")
    }

}
fun3()

//3+4

 func fib(_ n: Int) -> Int{

     if n == 0{

         return 0
     }
     else if n == 1{

         return 1
     }
     return fib(n-1) + fib(n-2)
 }

 var array: [Int] = []
 for cycles in 0...99 {
     array.append(fib(cycles))
 }
 print (array)
// получилось очень громоздко и выполняется очень долго, как это записать более просто я к сожалению не придумал, по факту правильно, на первых 10 чисел выполняется точно, на 100 у меня не запустилось
