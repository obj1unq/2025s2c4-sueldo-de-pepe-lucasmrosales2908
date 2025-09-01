object pepe {
	var categoria = categoriaGerente
    var bonoResultado = bonoResPorcentaje
    var bonoPresentismo = bonoPresNormal
    var faltas = 0
    method sueldo(){
        return categoria.neto() + self.bonoResultado() + self.bonoPresentismo()

    }
    method categoria(){
        return categoria
    }  
    method bonoResultado(){
        return bonoResultado.valor(self)
    }
    method bonoPresentismo(){
        return bonoPresentismo.valor(self)
    }
    method faltas(){
    return faltas
    }
    method neto(){
        return self.categoria().neto()
    }

    method categoria(_categoria){
        categoria =_categoria
    }
    method bonoResultado(_bonoResultado){
        bonoResultado = _bonoResultado
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo
    }
    method faltas(_faltas){
        faltas = _faltas

    }
}

object categoriaGerente{
    var neto = 15000 
    method neto(){
        return neto
    }
}
object categoriaCadete{
    var neto = 20000 
    method neto(){
        return neto
    }
}
object bonoResPorcentaje{
    method valor(empleado){
        return empleado.neto() * 0.1
    }

}
object bonoResFijo {
    method valor(empleado){
        return 800
    }
}
object bonoNulo{
    method valor(empleado){
        return 0
    }
}   
object bonoPresNormal{
    method valor(empleado){
        if(empleado.faltas()== 0){
            return 1000
        }
        else{
            return 0
        }
    }
}
object bonoPresAjuste{
    var valor = 0
    method valor(empleado){
        if(empleado.faltas() == 0){
            valor = 100
        }
        else {
            valor = 0
        }
        return valor
    }
}

object bonoDemagogico{
    var valor = 0
    method valor(empleado){
        if (empleado.neto() < 18000){
            valor = 500
        }
        else{
            valor = 300
        }
        return valor
    }


}