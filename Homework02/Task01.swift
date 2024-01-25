/*Написать функцию, которая на вход принимает число: 
сумма, которую пользователь хочет положить на вклад, 
следующий аргумент это годовой процент, третий аргумент это срок 
Функция возвращает сколько денег получит пользователь по итогу.*/

import Foundation

var money: Double=100000.00
var interest: Double=13.7
var term: Double=12

func CountDeposit (money: Double, interest: Double, term: Double, countCapitalization: Bool=true) -> Double {
    if countCapitalization{
        return money*pow((1+(interest/100)/365),(term*30))
    }    else {
        return money+(money*interest*term*30/365)/100
    }
}

print("Вложив", money, "рублей на", term, "месяцев", "под", interest, "% годовых вы получите:")

print("С учетом капитализации:", round(CountDeposit(money:money, interest:interest, term:term)*100)/100)

print("Без учета капитализации:", round(CountDeposit(money:money, interest:interest, term:term, countCapitalization: false)*100)/100)

print("к концу срока вклада.\n\r* Расчет дан с допущениями, что в году 365 дней, и в месяце 30 дней")

