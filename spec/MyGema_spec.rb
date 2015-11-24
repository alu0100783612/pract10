require 'spec_helper'
require "MyGema/codigo"
require "MyGema/bibliografia"

describe MyGema do


  it 'Es la version correcta' do
    expect(MyGema::VERSION).not_to be nil
  end
  
 
  
  context Bibliografia do 
    before :each do
       @biblio1 = Bibliografia.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","(July 7, 2013)","1")
    end
    
   it 'Prueba Bibliografia' do
     expect(@biblio1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers\n(July 7, 2013)\n1")
   end
   
   it 'Prueba de pertenencia a Bibliografia (Clase madre)' do
     expect(@biblio1.is_a? Bibliografia).to eq true
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija)' do
     expect(@biblio1.is_a? Libro).to eq false
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija) respond_to' do
     expect(@biblio1.respond_to? "Libro").to eq false
   end
   it 'La clase del objeto Bibliografia' do
     expect(@biblio1.class).to eq(Bibliografia)
    end

  end
  
  context Libro do
  before :each do
      @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
      @libro2 = Libro.new(["Scott Chacon"],"Pro Git 2009th Edition"," (Pro). ","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339."],2)
      @libro3 = Libro.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","","O’Reilly Media", "1 edition","February 4, 2008",["ISBN-10: 0596516177. ISBN-13: 978-0596516178."],3)
      @libro4 = Libro.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby).","","Pragmatic Bookshelf", "1 edition","December 25, 2010",["ISBN-10: 1934356379. ISBN-13: 978-1934356371."],4)
      @libro5 = Libro.new(["Richard E."],"Silverman Git Pocket Guide"," "," O’Reilly Media","1 edition","August 2, 2013",["ISBN-10: 1449325866,ISBN-13: 978-1449325862."],5)
    end
    
    it 'Prueba Libro' do
     expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers\nGuide. (The Facets of Ruby).\nPragmatic Bookshelf\n4 edition\n(July 7, 2013)\nISBN-13: 978-1937785499,ISBN-10: 1937785491.\n1")
    end
     it 'Prueba de pertenencia a Bibliografia (Clase madre)' do
     expect(@libro1.is_a? Bibliografia).to eq true
   end
   it 'Prueba de no instancia de Bibliografia (Clase madre)' do
     expect(@libro1.instance_of? Bibliografia).to eq false
   end
   it 'La clase del objeto Libro' do
     expect(@libro1.class).to eq(Libro)
   end
    it 'Pertenencia a la superclase Bibliografia' do
     expect(@libro1.class.superclass).to eq(Bibliografia)
   end
   it 'Prueba de pertenencia a Libro (Clase hija)' do
     expect(@libro1.is_a? Libro).to eq true
   end
    it 'Prueba de pertenencia a Online (Clase hija)' do
     expect(@libro1.is_a? Online).to eq false
   end
   it 'Prueba de  no pertenencia a Online (Clase hija) respond_to' do
     expect(@libro1.respond_to? "Online").to eq false
   end
   
  
  end 
  
  context Online do
  before :each do
    
    @online1= Online.new(["informaticahack.es"],"Aprende paso a paso los fundamentos de ruby","25 Febrero 2015",47,"http://www.informaticahack.es/videcurso-aprende-paso-a-paso-los-fundamentos-de-ruby/#more-1081")
    @revista1=Revista.new(["Antonio Pérez, Lucas Fernandez"],"Pc facil Ruby Version 1.2","16 de Noviembre de 2015",74,"ISSN-123456789101112")
   end
   it 'Prueba Online' do
      expect(@online1.to_s).to eq("informaticahack.es\nAprende paso a paso los fundamentos de ruby\n25 Febrero 2015\n47\nhttp://www.informaticahack.es/videcurso-aprende-paso-a-paso-los-fundamentos-de-ruby/#more-1081")
    end
     it 'Prueba de pertenencia a Bibliografia (Clase madre)' do
     expect(@online1.is_a? Bibliografia).to eq true
   end
   it 'Prueba de pertenencia a Online (Clase hija)' do
     expect(@online1.is_a? Online).to eq true
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija)' do
     expect(@online1.is_a? Libro).to eq false
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija) respond_to' do
     expect(@online1.respond_to? "Libro").to eq false
   end
   it 'Pertenencia a la superclase Bibliografia' do
     expect(@online1.class.superclass).to eq(Bibliografia)
   end
  
  end
  
  context Revista do
    before :each do
      @revista1=Revista.new(["Antonio Pérez, Lucas Fernandez"],"Pc facil Ruby Version 1.2","16 de Noviembre de 2015",74,"ISSN-123456789101112")
    end
    
    it 'Prueba Revista'do
      expect(@revista1.to_s).to eq("Antonio Pérez, Lucas Fernandez\nPc facil Ruby Version 1.2\n16 de Noviembre de 2015\n74\nISSN-123456789101112")
    end
      it 'Prueba de pertenencia a Bibliografia (Clase madre)' do
     expect(@revista1.is_a? Bibliografia).to eq true
   end
   it 'Prueba de pertenencia a Revista (Clase hija)' do
     expect(@revista1.is_a? Revista).to eq true
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija)' do
     expect(@revista1.is_a? Libro).to eq false
   end
   it 'Prueba de  no pertenencia a Libro (Clase hija) respond_to' do
     expect(@revista1.respond_to? "Libro").to eq false
   end
   it 'Pertenencia a la superclase Bibliografia' do
     expect(@revista1.class.superclass).to eq(Bibliografia)
   end
  end
  context Nodos do
    
    before :each do 
      @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
      @nodo1=Nodos.new(@libro1,nil)
    end
    
    it 'Existe valor de nodo' do
      expect(@nodo1.value).to eq(@libro1)
    end 
    
    it 'Siguiente de nodo es nil' do
      expect(@nodo1.next).to equal(nil)
    end 
    
  end
  
  context Lista do
    
    before :each do 
      #Libros
      @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
      @libro2 = Libro.new(["Scott Chacon"],"Pro Git 2009th Edition"," (Pro). ","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339."],2)
      @libro3 = Libro.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","","O’Reilly Media", "1 edition","February 4, 2008",["ISBN-10: 0596516177. ISBN-13: 978-0596516178."],3)
      @libro4 = Libro.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby).","","Pragmatic Bookshelf", "1 edition","December 25, 2010",["ISBN-10: 1934356379. ISBN-13: 978-1934356371."],4)
      @libro5 = Libro.new(["Richard E."],"Silverman Git Pocket Guide"," "," O’Reilly Media","1 edition","August 2, 2013",["ISBN-10: 1449325866,ISBN-13: 978-1449325862."],5)
      
      #creamos lista
      
      @lista1 = Lista.new(nil,nil)
 
    end
    it 'Existe cabeza' do
      @lista1.insertar(@libro1)
        expect(@lista1.cabeza.value).to equal(@libro1)
    end 
    it 'Existe cola' do
      @lista1.insertar(@libro1)
        expect(@lista1.cola.value).to equal(@libro1)
    end 
      it 'Prueba insercion con cabeza ' do 
        @lista1.insertar(@libro1)
        expect(x = @lista1.cabeza.value).to equal(@libro1)
      end
      it 'Prueba Insertar Varios con cabeza correcta' do
      @lista1.insertar_varios([@libro1,@libro2,@libro3,@libro4,@libro5])
      expect(x =@lista1.cabeza.value).to equal(@libro5)
      end
      
       it 'Prueba Insertar Varios con cola correcta' do
      @lista1.insertar_varios([@libro1,@libro2,@libro3,@libro4,@libro5])
      expect(x =@lista1.cola.value).to equal(@libro1)
      end
      
      it 'Prueba extraer inicio por la cola' do
        @lista1.insertar_varios([@libro1,@libro2,@libro3,@libro4,@libro5])
        @lista1.extraer_inicio()
        expect(x =@lista1.cola.value).to equal(@libro2)
      end
      
       it 'Prueba extraer final por la cabeza' do
        @lista1.insertar_varios([@libro1,@libro2,@libro3,@libro4,@libro5])
        @lista1.extraer_final()
        expect(x =@lista1.cabeza.value).to equal(@libro4)
      end
  end 
context "Prueba Lista enumerable" do
     before :each do 
      #Libros
      @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
      @libro2 = Libro.new(["Scott Chacon"],"Pro Git 2009th Edition"," (Pro). ","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339."],2)
      @libro3 = Libro.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","","O’Reilly Media", "1 edition","February 4, 2008",["ISBN-10: 0596516177. ISBN-13: 978-0596516178."],3)
      @libro4 = Libro.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby).","","Pragmatic Bookshelf", "1 edition","December 25, 2010",["ISBN-10: 1934356379. ISBN-13: 978-1934356371."],4)
      @libro5 = Libro.new(["Richard E."],"Silverman Git Pocket Guide"," "," O’Reilly Media","1 edition","August 2, 2013",["ISBN-10: 1449325866,ISBN-13: 978-1449325862."],5)
      
      #creamos lista
      
      @lista1 = Lista.new(nil,nil)
 
    end
    
        it 'Prueba minimo en una insercion con numeros' do
           @lista1.insertar_varios([1,2]) 
           expect(@lista1.min).to eq(1)
        end
          it 'Prueba minimo en una insercion con libros' do
           @lista1.insertar_varios([@libro1,@libro2]) 
           expect(@lista1.min).to eq(@libro1)
        end
        it 'Prueba maximo en una insercion con numeros' do
           @lista1.insertar_varios([1,2]) 
           expect(@lista1.max).to eq(2)
        end
          it 'Prueba maximo en una insercion con libros' do
           @lista1.insertar_varios([@libro1,@libro2]) 
           expect(@lista1.max).to eq(@libro2)
        end
        it 'Prueba drop en una insercion con numeros' do
           @lista1.insertar_varios([1,2,3,4,5]) 
           expect(@lista1.drop(3)).to eq([2,1])
        end
          it 'Prueba drop en una insercion con libros' do
           @lista1.insertar_varios([@libro1,@libro2,@libro3,@libro4,@libro5]) 
           expect(@lista1.drop(3)).to eq([@libro2,@libro1])
        end
        
        it 'Prueba ordenacion en una insercion con numeros' do
           @lista1.insertar_varios([1,3,2,4]) 
           expect(@lista1.sort).to eq([1,2,3,4])
        end
        
       it 'Prueba ordenacion en una insercion con libros' do
           @lista1.insertar_varios([@libro2,@libro4,@libro1,@libro5,@libro3]) 
           expect(@lista1.sort).to eq([@libro1,@libro2,@libro3,@libro4,@libro5])
        end
        
        it 'Prueba del metodo all? con libros' do
            @lista1.insertar_varios([@libro2,@libro4,@libro1,@libro5,@libro3]) 
           expect(@lista1.all?).to eq(true)
        end
         it 'Prueba del metodo all? con numeros' do
           @lista1.insertar_varios([1,3,2,4]) 
           expect(@lista1.all?).to eq(true)
        end
        #no puede comprobar que el valor de la struct de nodo no exista porque el valor no es nil
         it 'Prueba del metodo all? con lista vacia' do
           expect(@lista1.all?).to eq(true)
        end
        
         it 'Prueba del metodo any? con libros' do
            @lista1.insertar_varios([@libro2,@libro4,@libro1,@libro5,@libro3]) 
           expect(@lista1.any?).to eq(true)
        end
         it 'Prueba del metodo any? con numeros' do
           @lista1.insertar_varios([1,3,2,4]) 
           expect(@lista1.any?).to eq(true)
       end
       
       it 'Prueba del metodo collect con numeros' do
            @lista1.insertar(3)
             expect(@lista1.map{|i| i*i}).to eq([9])
             expect(@lista1.collect{|i| i*i}).to eq([9])
       end
       it 'Prueba del metodo count con numeros' do
            @lista1.insertar_varios([1,3,2,4,5,7,8]) 
             expect(@lista1.count).to eq(7)
       end
        it 'Prueba el metodo detect con numero' do
            @lista1.insertar_varios([1,3,2,0,5,7,4]) 
            expect(@lista1.detect {|i| i == 0}).to eq(0)
            expect(@lista1.find {|i| i == 1}).to eq(1)
    end
  end
  
context 'Bibliografia Enumerable' do
    
   before :each do 
       @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
       @revista1=Revista.new(["Antonio Pérez, Lucas Fernandez"],"Pc facil Ruby Version 1.2","16 de Noviembre de 2015",74,"ISSN-123456789101112")
       @online1= Online.new(["informaticahack.es"],"Aprende paso a paso los fundamentos de ruby","25 Febrero 2015",47,"http://www.informaticahack.es/videcurso-aprende-paso-a-paso-los-fundamentos-de-ruby/#more-1081")
       
   end
   
    it 'Comparable revista1 menor que online true' do
      expect(@online1 < @revista1).to eq(true) 
   end
    it 'Comparable con Libros y revista Libro1 menor Revista true' do
       expect(@libro1 < @revista1).to eq(true) 
   end
    it 'Comparable con Libros online1 mayor Libro1 true' do
       expect(@online1 > @libro1).to eq(true) 
   end
    it 'Comparable con revista1 mayor que libro 1 true' do
       expect(@revista1 > @libro1).to eq(true) 
   end
    it 'Comparable con Libros Libro1 igual Libro1 true' do
       expect(@libro1 == @libro1).to eq(true) 
   end
    it 'Comparable revista1 mayor o igual que online 1 true' do
        expect(@revista1 >= @online1).to eq(true)
    end
    it 'Comparable libro1 menor o igual que online 1 true' do
        expect(@libro1 <= @online1).to eq(true)
    end
end

end
 
