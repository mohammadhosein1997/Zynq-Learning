def fibo(n):
    previous_value = 1
    previous_previous_value = 1
    value = previous_value
    
    # Compuatation Loop
    i = 2
    while i <= n:
        value = previous_value + previous_previous_value
        previous_previous_value = previous_value
        previous_value = value 
        i = i + 1
        
    return value 