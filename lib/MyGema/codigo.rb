
Nodos = Struct.new(:value, :next)
     


class Lista
    


    attr_accessor :cabeza
    
    def initialize(cabeza)
        @cabeza = cabeza
       
    end 
    def insertar(x)
        #como se le define el next??
      
        node = Nodos.new(x,nil)
         node.next=@cabeza
        @cabeza=node
    end 
    
    def insertar_varios(nodos)
        
        nodos.each do |nd|
            
        insertar(nd)
        
        end
 
    end
        
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
       @cabeza=cabeza.next
       
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