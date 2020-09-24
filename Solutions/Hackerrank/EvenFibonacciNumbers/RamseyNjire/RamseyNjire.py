def fib_num(n):
    f_1 = 0
    f_2 = 1
    f_3 = 1
    
    even_fib = []
    
    while f_3 <= n:
        if f_3 % 2 == 0:
            even_fib.append(f_3)
        f_1 = f_2 
        f_2 = f_3 
        f_3 = f_1 + f_2 

    print(even_fib)
    
    return sum(even_fib)