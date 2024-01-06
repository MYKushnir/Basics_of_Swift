// Создайте переменную “k”, равную 9. 
//В диапазоне от 10 до 50, но только по нечетным числам,, 
//если текущее число плюс “k” четное, то увеличьте  “k” на 2, 
//в противном случае выведите в консоль “Next ” и перейдите к следующей итерации

var k=9
for num in 10...50 {
    if num%2 != 0{

        if (num+k)%2==0 {
            k+=2
        } else {
            print ("Next")
        }
    }
}

// по условию задачи вывода Next в консоль никогда не произойдет, 
// число k всегда будет нечетным, num также берется только нечетным
// сумма нечетных чисел всегда дает четное число, следовательно num+k всегда будет четным