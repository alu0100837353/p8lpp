#encoding: UTF-8
class Pregunta 
    include Comparable
    
    attr_reader :enunciado, :respuestas, :dificultad
    
    def initialize (enun, *resp, dificultad)
        @enunciado = enun
        @respuestas = resp 
        @dificultad = dificultad
    end
    
    def to_s
        mostrar = "#{@enunciado}"
        var = 0
        while var < @respuestas.length
            mostrar = mostrar + " \n " + @respuestas[var].to_s 
            var +=1
        end
        mostrar
    end
    
    def <=> (anOther)
        dificultad <=> anOther.dificultad
    end
end




