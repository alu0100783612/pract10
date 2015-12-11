class APA
require "MyGema/codigo"
require "MyGema/bibliografia"

    attr_accessor :lista1 , :lista2
    
    def initialize(lista)
       @lista1=Lista.new(nil,nil)
       @lista1=lista
       @lista2=Lista.new(nil,nil)
       @lista3=Lista.new(nil,nil)
        
    end
    
    def ordeno(autore)
            
                contador = 0
                nombres = []
                   autore.each do |parte|
                   autor=parte.split(' ')
                   
                   nombres[contador]=autor[1]+" "+autor[0]
                 
                   contador += 1
                   end
                
            return nombres
    end
    def ordenar_autores
        while (@lista1.cabeza != nil ) && (@lista1.cola != nil)
            nodo=@lista1.get_nodo()
            nodo.autores=ordeno(nodo.autores)
            @lista2.insertar(nodo)
            @lista1.extraer_final()
          
        end
    end
    
    def poner_ampersan(autore)
            nombres =[]
            nombres=autore.join(" & ")
            return nombres
    end
    def ordenar_ampersan
        while (@lista2.cabeza != nil ) && (@lista2.cola != nil)
            nodo=@lista2.get_nodo()
            nodo.autores=poner_ampersan(nodo.autores)
            @lista3.insertar(nodo)
            @lista2.extraer_final()
          
        end
    end
    def mayus(titulo)
 
                   
                   autor=titulo.split(' ').capitalize
                   autor.capitalize
        return autor.capitalize
        
    end
    def ordenar_lista
     
        @lista2.sort
    end

    def to_s
       "#{@lista3.cabeza.value.autores.rjust(13)}"
       
    end
   
end


=begin

 
 class Representacion < Lista
    
    include Comparable 

        def initialize(lista)
            @lista1 = lista
            @lista2 = Lista.new(nil,nil)
            @lista_autores= []
        end
        #metodo para odenar los autores por apellido y luego  nombre
        # el tamaño del array autores es mayor que uno es xk hay mas de un autor pues vamos a proceder a ordenarlo
        
        def ordeno()
            while (@lista1.cabeza != nil ) && (@lista1.cola != nil)
                contador = 0
                nombres = []
               
               valor=@lista1.get_nodo()
               
               autore=valor.autores
               
                   autore.each do |parte|
                   autor=parte.split(' ')
                   
                   nombres[contador]=autor[1]+" "+autor[0]
                 
                   contador += 1
                   end
                   autore=nombres
                   @lista_autores.push(nombres)
                @lista1.extraer_final()
                puts autore
                
            end
            return @lista_autores
        end
        
        def <=>(other)
            if (@lista1.get_nodo().autores != other.get_nodo().autores)
                if (@lista1.to_s{3}>other.to_s{3})
                    return 1
                else
                    return -1
                end
            elsif (@lista1.get_nodo().fecha > other.get_nodo().autores)
                	return 1
                else
                	return -1
            end
        end 
    def get_mes(numero)
    	return case numero
        	when 1
        	"Ene"
        	when 2
        	"Feb"
        	when 3
        	"Mar"
        	when 4
        	"Abr"
        	when 5
        	"May"
        	when 6
        	"Jun"
        	when 7
        	"Jul"
        	when 8
        	"Ago"
        	when 9
        	"Sep"
        	when 10
        	"Oct"
        	when 11
        	"Nov"
        	when 12
        	"Dic"
        	else
        	raise RuntimeError, "El mes 13 no existe"
     
        end	
    end    
        def to_s
            
        "#{@autores.join(",")}\n#{@titulo}\n#{@serie}\n#{@editorial}\n#{@edicion}\n#{@fecha}\n#{@isbn.join(",")}\n#{@id}"
        
        end
end

Los nombres de los autores est´an invertidos (apellidos, nombre); proporcione el apellido y
las iniciales de todos los autores de un trabajo en particular. OK

Las entradas de la lista de referencias debe estar en orden alfab´etico de acuerdo a los
apellidos del primer autor de cada trabajo. OK

Si tiene m´as de un art´ıculo del (los) mismo autor(es) (referencias de un autor solo o referencias
de m´ultiples autores con exactamente los mismos autores en exactamente el mismo
orden de aparici´on) ordene de acuerdo al a˜no de publicaci´on, comenzando con el m´as antiguo. OK

Cuando un autor aparezca tanto como un autor solo y, en otra cita, como el primer autor
de un grupo, liste primero las entradas de un autor. FALTA

Si est´a usando m´as de una referencia del mismo autor (o el mismo grupo de autores listados
en el mismo orden) publicados en el mismo a˜no, organ´ıcelos en la lista de referencias
alfab´eticamente de acuerdo al t´ıtulo del art´ıculo o del cap´ıtulo. Entonces asigne letras al
a˜no como sufijos. Cuando se refiera a estas publicaciones en su escrito utilice las letras de
sufijos con el a˜no para que el lector sepa a cu´al referencia se est´a refiriendo. asignar letras ok, falta el resto 

Utilice & en lugar de ’y’ [o de ’and’ en las versiones en ingl´es] cuando liste varios autores
de un solo trabajo.

Todas las l´ıneas despu´es de la primera l´ınea de cada entrada en su lista de referencias deben
tener una sangr´ıa de media pulgada desde el margen izquierdo. Es una sangr´ıa francesa.

Ponga en may´usculas la primera letra de las palabras principales de los t´ıtulos de revistas.

http://www.elclubdelprogramador.com/2012/02/02/ruby-manejo-avanzado-de-los-strings-en-ruby-ii-parte/

=end