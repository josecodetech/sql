import sqlite3

def crear():
    conn = sqlite3.connect('empresa.db')
    cursor = conn.cursor()
    cursor.execute(
        """CREATE TABLE IF NOT EXISTS productos(
        nombre text, 
        precio integer
        )
        """)
    conn.commit()
    conn.close()
def menu():
    num = input('indique si quiere agregar un producto, leerlo o salir (1,2,3): ')
    print('\n')
    return num
def conectar():
    conn = sqlite3.connect('empresa.db')
    cursor = conn.cursor()
    return cursor,conn
def cerrar(conn):
    conn.commit()
    conn.close()
def insertar():
    nombre = input("Ingresa el nombre del producto: ")
    precio = input("Ingresa el precio del producto: ")
    print("\n")    
    cursor,conn = conectar()
    sql = f'INSERT INTO productos VALUES ("{nombre}", {precio})'
    cursor.execute(sql)
    cerrar(conn)
def buscar():
    nombre = input("Ingresa el nombre del producto que quieres buscar: ")
    print("\n")
    cursor, conn = conectar()
    sql = f'SELECT * FROM productos WHERE nombre like "{nombre}"'
    cursor.execute(sql)
    dato = cursor.fetchall()
    cerrar(conn)
    return dato
    
if __name__=='__main__':
    crear()
    while True:
        opcion=menu()
        if opcion == '1':
            insertar()
        elif opcion == '2':
            dato = buscar()
            print(dato)
            print("\n")
        elif opcion == '3':
            print("Saliendo de la aplicacion")
            break