from django.db import models

class deporte(models.Model):
	nombre = models.CharField(max_length=30)

	def __unicode__(self):
			return self.nombre

class categoria_torneo(models.Model):
	categoria = models.CharField(max_length=30)

	def __unicode__(self):
			return self.categoria

class tipo_locacion(models.Model):
	tipo = models.CharField(max_length=30)

	def __unicode__(self):
		return self.tipo

class area(models.Model):
	nombre = models.CharField(max_length=30)

	def __unicode__(self):
		return self.nombre
		
class locacion(models.Model):
	nombre = models.CharField(max_length=30)
	area = models.ForeignKey(area)
	tipo = models.ForeignKey(tipo_locacion)

	def __unicode__(self):
		return self.nombre

class torneo(models.Model):
	nombre = models.CharField(max_length=50)
	fini = models.DateField()
	ffin = models.DateField()
	categoria = models.ForeignKey(categoria_torneo)

	def __unicode__(self):
		return self.nombre

class equipo(models.Model):
	nombre = models.CharField(max_length=30)
	director = models.CharField(max_length=30)
	area = models.ForeignKey(area)
	torneos = models.ManyToManyField(torneo, through='equipo_participa')

	def __unicode__(self):
		return self.nombre

class partido(models.Model):
	local = models.ForeignKey(equipo, related_name='local')
	visitante = models.ForeignKey(equipo, related_name='visitor')
	fecha = models.DateField()
	locacion = models.ForeignKey(locacion)
	resultado = models.CharField(max_length=10)
	hora = models.TimeField()
	torneo = models.ForeignKey(torneo)	

	def __unicode__(self):
		return (self.local.nombre + ' vs '  + self.visitante.nombre + ' | ' + str(self.fecha))




class deportista(models.Model):
	nombre = models.CharField(max_length=50)
	paterno = models.CharField(max_length=50)
	materno = models.CharField(max_length=50)
	sexo = models.CharField(max_length=50)
	nacionalidad = models.CharField(max_length=50)
	deporte = models.ForeignKey(deporte)
	fnac = models.DateField()
	equipo = models.ForeignKey(equipo)
	goles = models.ManyToManyField(partido, through='gol', related_name='gol')
	partidos = models.ManyToManyField(partido, through='deportista_participa', related_name='parts')

	def __unicode__(self):
			return (self.nombre + ' ' + self.paterno + ' ' + self.materno)


class gol(models.Model):
	deportista = models.ForeignKey(deportista)
	partido = models.ForeignKey(partido, related_name='part')
	minuto = models.TimeField()
	
	def __unicode__(self):
		return self.minuto

class equipo_participa(models.Model):
	equipo = models.ForeignKey(equipo)
	torneo = models.ForeignKey(torneo)
	posicion = models.CharField(max_length=10)
	puntos = models.IntegerField()

	def __unicode__(self):
		return "%s  --->  %s"%(self.equipo,self.torneo)

class deportista_participa(models.Model):

	deportista = models.ForeignKey(deportista)
	partido = models.ForeignKey(partido)
	rol = models.CharField(max_length=10)

	def __unicode__(self):
		return "%s - %s - %s"%(self.deportista,self.rol,self.partido)

