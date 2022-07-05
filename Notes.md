# All my questions

[P3](#Project 3 DFF)



## Preview

This notes file is about lecture notes and questiones I got. 

I commited to spend 45 minutes each day in the lectuer and coding time.



## Project 3 DFF

memory

- Volatile/ non-volatile

8-bit RAM:

dmux to run all the registers simultaneously

mux to select

![image-20210728213338406](https://tva1.sinaimg.cn/large/008i3skNgy1gswznm1ej6j31200u0tb6.jpg)

RAM64...You will need the address, what does [3..5] mean? It means index 3 -- 5 will be used. Why not 0 -- 7?

RAM512 why the sel address change to 6 -- 8? Becasue these are avaliable? Why the RAM64 address now become 0 to 5?

RAM6K why now the sel address become 12 to 13 instead of 12 to 14?

![image-20210728213520027](https://tva1.sinaimg.cn/large/008i3skNgy1gswzpd8b86j311p0u0q5w.jpg)

Counter:

1. resetting to zero

2. settng counter = base value

3. incrementing counter

4. counter does not change

![image-20210728210831143](https://tva1.sinaimg.cn/large/008i3skNgy1gswyxhjuokj30tw0b8weu.jpg)

## 

## W4



4.9 project 

Only two assembly language files to build. One is mult, the other is fill.



How to run these files? Still hardware simulator?



4.10 FAQ

- Most of people are writing high-level program language instead of machine language, but if you are familiar with machine language, you can optimize your high-level code. 

- Hack machine language is short and easy to use. Most of machine code standard formal is <operator> <register> <address>, Like adding one into a register in MIPS is like this: `Add $t1 $0`, in Hack machine language, you only need to `D = D + M`



## ChangeLog

- 2021-07-31 add priview section and W4 notes

- 2021-07-30 add ram process

- 2021-07-28 init proj3