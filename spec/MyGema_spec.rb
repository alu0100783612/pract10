require 'spec_helper'
require "MyGema/codigo"
require "MyGema/libro"

describe MyGema do


  it 'has a version number' do
    expect(MyGema::VERSION).not_to be nil
  end
  
 
  context Libro do

    before :each do 
      @libro1 = Libro.new(["Dave Thomas, Andy Hunt, Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers","Guide. (The Facets of Ruby).","Pragmatic Bookshelf","4 edition","(July 7, 2013)",["ISBN-13: 978-1937785499,ISBN-10: 1937785491."],1)
      @libro2 = Libro.new(["Scott Chacon"],"Pro Git 2009th Edition"," (Pro). ","Apress","2009 edition","(August 27, 2009)",["ISBN-13: 978-1430218333. ISBN-10: 1430218339."],2)
      @libro3 = Libro.new(["David Flanagan, Yukihiro Matsumoto"],"The Ruby Programming Language","","O’Reilly Media", "1 edition","February 4, 2008",["ISBN-10: 0596516177. ISBN-13: 978-0596516178."],3)
      @libro4 = Libro.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby).","","Pragmatic Bookshelf", "1 edition","December 25, 2010",["ISBN-10: 1934356379. ISBN-13: 978-1934356371."],4)
      @libro5 = Libro.new(["Richard E."],"Silverman Git Pocket Guide",""," O’Reilly Media","1 edition","August 2, 2013",["ISBN-10: 1449325866. ISBN-13: 978-1449325862."],5)
    end
    it 'Mostrar libros' do
      expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers\nGuide. (The Facets of Ruby).\nPragmatic Bookshelf\n4 edition\n(July 7, 2013)\nISBN-13: 978-1937785499,ISBN-10: 1937785491.\n1")
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
      @lista1 = Lista.new(nil,nil)
      #nodos
      #nodo1=Nodos.new(@libro1,nil)
      #nodo2=Nodos.new(@libro2,nodo1)
      #nodo3=Nodos.new(@libro3,nodo2)
      #nodo4=Nodos.new(@libro4,nodo3)
      #nodo5=Nodos.new(@libro5,nodo5)
      
      #añadir un nodo a la lista
    #  @lista1.insertar(@nodo1)
      
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
      it 'Existe insercion con cola' do
      @lista1.insertar(@libro1)
        expect(@lista1.cola.value).to equal(@libro1)
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
      

  end
  
  
  
end
 

# https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers expresiones regulares para expect 

