import random 

input_width = 32
test_batch = 10
output_file_name = "./Input.txt"

def gen_random_bin(width):
    str = ""
    for i in range(width):
        if random.randint(0,1) == 1: 
            str += "1" 
        else:
            str += "0"
    return str

output_file = open(output_file_name, "w")
for j in range(test_batch):
    x = gen_random_bin(input_width)
    output_file.write(x + "\n")



output_file.close()