from random import randint, seed

seed(10)

rand_size = lambda: randint(1, 10)
rand_array = lambda size: [randint(-1000, 1000) for _ in range(size)]
get_output_array = lambda size, array: [array[i] + array[i + 1] 
                                        for i in range(size - 1)]
array_to_string = lambda array, sep: sep.join(map(str, array))

def generate():
    for i in range(1, 11):
        s = rand_size()
        a = rand_array(s)
        b = get_output_array(s, a)

        print(f"CASE#{i}:")
        print(f"Size = {s}\nInput array: {array_to_string(a, ' ')}\n"
                "Output array: {array_to_string(b, ' ')}\n~~~~~~~~~~~")

if __name__ == "__main__":
    generate()
