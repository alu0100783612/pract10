
Nodos = Struct.new(:value, :next, :prev)
     


class Lista
    include Enumerable


    attr_accessor :cabeza ,:cola, :nodo_actual
    
    def initialize(cabeza,cola)
        @cabeza = cabeza
        @cola=cola
    end 
    
    def insertar(x)
        
      
        node = Nodos.new(x,nil,nil)
        
        if @cabeza==nil && @cola ==nil
            
            node.prev=@cola
            node.next=@cabeza
            @nodo_actual = node
            @cabeza=node
            @cola =node
            
        else
            node.prev=@cabeza
            node.next=nil
            @nodo_actual = node
            @cabeza.next =node
            @cabeza=node
            
        end
        
    end 
    
    def insertar_varios(nodos)
        
        nodos.each do |nd|
            
        insertar(nd)
        
        end
 
    end
        
    def get_nodo()
            return @cabeza.value
    end
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
            @cola=@cola.next

    end
    
    def extraer_final()
       @cabeza=@cabeza.prev
        
    end
    
    def to_s
        while @cabeza != @cola
             "#{@cabeza.value}"
            @cabeza=@cabeza.prev
        end
        
        if @cabeza == @cola
           if @cabeza == nil 
            nil 
           else
            "#{@cola.value}"
           end
        end
    end
    
    def each
        while @cabeza != @cola
            yield @cabeza.value
            @cabeza=@cabeza.prev
        end
        
        if @cabeza == @cola
           if @cabeza == nil 
            nil 
           else
            yield @cola.value
           end
        end
    end
end 

=begin

* Hay que recorrer la lista?¿?

Object   
^   
|   
Referencia Poner lo que sea comun a todas las referencias
^
|--------|-------------|
Libro revista documento electronico atributos expecificos del libro o revista

Pruebas para comprobar la herencia de la clase 
is_a?
respon_to? //Como se hace ??

lista para los dos lados

=end

=begin
                        Mixin
Lista <--Enumerable 

Bibliografia<-Comparable

ejemplo con bibliografia
1ºExpectativas creo expectativas para comparar dos referencias biliografia
    
    Libro.new(..)<Libro.new(..)<- Se crea una en primer lugar 
    <, >,<=,>=

2º clase referencia
    a) incluir el modulo comparable
    b) implemento el metodo <=>
    
    ordenar por orden alfabetico por ejemplo 

ejemplo puta con lista

1º Se crea una lista en primer lugar
insertar 
lista.new()min
2º
a)incluyo el modulo enumerable
b)hago el metodo each para recorrer la lista 

=end

=begin

animal ="cat"
puts animal.ipercase


=end