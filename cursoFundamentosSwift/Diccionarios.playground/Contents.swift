let map :[String: Any] = ["key": "value",
                          "key2": "value2",
                          "key3": 12]

var producto : [String: Any] = [
    "id" : 0,
    "nombre" : "PC Lenovo",
    "precio" : 1000,
    "stock" : 10,
    "promocion" : true
]

let nombre = producto["nombre"] as! String   //Si queremos ver el nombre del producto
print(nombre)

producto["calificacion"] = 5
print(producto)
