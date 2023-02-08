def get_value(obj, key):
    keys = key.split("/")
    for k in keys:
        if k in obj:
            obj = obj[k]
        else:
            return None
    return obj

object1 = {"a":{"b":{"c":"d"}}}
key1 = "a/b"
print(get_value(object1, key1))

#output is {'c': 'd'}

object2 = {"x":{"y":{"z":"a"}}}
key2 = "x"
print(get_value(object2, key2))

#output is {'y': {'z': 'a'}}