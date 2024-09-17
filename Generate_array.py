import json
import random

def generate_and_save_as_json(size, filename):
    random_array = [random.randint(0, 100000) for _ in range(size)]

    with open(filename, 'w') as file:
        json.dump(random_array, file)

generate_and_save_as_json(100, 'random_array_100.json')
generate_and_save_as_json(1000, 'random_array_1000.json')
generate_and_save_as_json(10000, 'random_array_10000.json')
generate_and_save_as_json(100000, 'random_array_100000.json')
