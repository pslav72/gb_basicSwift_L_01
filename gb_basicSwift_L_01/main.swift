//
//  main.swift
//  gb_basicSwift_L_01
//
//  Created by Вячеслав Поляков on 26.12.2020.
//

import Foundation

/*
 1. Решить квадратное уравнение.
 Будем использовать формулу  x = a + sqrt(b/c)
 */

print("1. Решить квадратное уравнение.")
//Возьмем следующение значения
let a: Double = 5
let b: Double = 4
let c: Double = 8

let div_result = b/c

if div_result > 0 {
    let result: Double = a + sqrt(div_result)
    print("Резльтат квадратного уровнения равен \(result)")
}
else {
    print("Выражение из корня <= 0. Вычисление не возможно")
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
/*
 Площадь
 S=(a⋅b)/2
 Гипотенуза
 c=sqrt(a^2+b^2)
 Периметр
 P=a+b+c
 */

print("\n2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.")

let sideA: Double = 2
let sideB: Double = 9

print("Строна A \(sideA)")
print("Строна B \(sideB)")

let area: Double = (sideA*sideB)/Double(2)
let hypotenuse: Double = sqrt(pow(Double(sideA), 2) + pow(Double(sideB), 2))
let perimeter: Double = sideA + sideB + hypotenuse

print("Результат вычислений прямоугольного треугольника: площадь \(area), периметр \(perimeter), гипотенуза \(hypotenuse)")


//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
print("\n3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.")

let numberOfYears: Int = 5
let depositPercent: Float = 8.5
var depositAmount: Float = 1000
var calcDepositAmount: Float = depositAmount

//Производит ежегодное начисление процентов, на текущий остаток
for _ in 1...numberOfYears {
    calcDepositAmount = (calcDepositAmount*depositPercent/100) + calcDepositAmount
}
let totalDepositAmount = String(format: "%.2f", calcDepositAmount)
print("Срок вклада \(numberOfYears) лет, процент \(depositPercent), сумма вклада \(depositAmount).")
print("Сумма через \(numberOfYears) лет составит  \(totalDepositAmount).")
