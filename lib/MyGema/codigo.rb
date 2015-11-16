
Nodos = Struct.new(:value, :next, :prev)
     


class Lista
    


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
        
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
            @cola=@cola.next

    end
    
    def to_s
         @cabeza.to_s 
    end
end 

=begin


Object   
^   
|   
Referencia Poner lo que sea comun a todas las referencias
^
|--------|-------------|
Libro revista documento electronico atributos expecificos del libro o revista

Pruebas para comprobar la herencia de la clase 
is_a?
respon_to?

lista para los dos lados

=end