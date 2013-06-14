from django.db import models

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#GENERALES
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#


class autor(models.Model):

	class Meta:
		verbose_name_plural = "Autores"

	nombre = models.CharField(max_length=50)
	apellidos = models.CharField(max_length=80)
	# nick = models. char(20),
	# password = models. char (20)
	#Hay que extender del USUARIOS

	def __unicode__(self):
		return "%s  %s"%(self.nombre,self.apellidos)

class categoria(models.Model):
	nombre = models.CharField(max_length=80)

	def __unicode__(self):
		return self.nombre

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#PUBLICIDAD
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#

class posicion(models.Model):

	class Meta:
		verbose_name_plural = "Posicion de los anuncios"

	posicion = models.CharField(max_length=40)

	def __unicode__(self):
		return self.posicion

class anuncio(models.Model):
	def url(self,filename):
		ruta =	"uploads/ads/%s"%(filename)
		return ruta
	nombre = models.CharField(max_length=40)
	posicion = models.ForeignKey(posicion)
	tamanio = models.IntegerField()
	fecha_pub = models.DateField()
	imagen = models.ImageField(upload_to=url)

	def __unicode__(self):
		return "%s - %s"%(self.nombre, self.posicion.posicion)
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#PUBLICACION
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#

class caricatura(models.Model):
	def url(self,filename):
		ruta = "uploads/caricaturas/%s"%(filename)
		return ruta

	autor = models.ForeignKey(autor)
	imagen = models.ImageField(upload_to=url)
	titulo = models.CharField(max_length=30)
	fecha =  models.DateField()
	
	def __unicode__(self):
		return self.titulo




class video(models.Model):
	def url_video(self,filename):
		ruta =	"uploads/videos/%s"%(filename)
		return ruta

	def url_preload(self,filename):
		ruta =	"uploads/videos/preloads/%s"%(filename)
		return ruta

	titulo = models.CharField(max_length=60)
	categoria = models.ForeignKey(categoria),
	descripcion = models.CharField(max_length=100)
	video = models.FileField(upload_to=url_video)
	preload = models.ImageField(upload_to=url_preload)

	def __unicode__(self):
		return self.titulo

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#Noticias
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
class tipo_post(models.Model):

	class Meta:
		verbose_name_plural = "Tipos de Post"

	tipo = models.CharField(max_length=50)

	def __unicode__(self):
		return self.tipo




class post(models.Model):
	
	def url(self,filename):
		ruta =	"uploads/posts/images/%s"%(filename)
		return ruta

	titulo = models.CharField(max_length=200)
	autor = models.ForeignKey(autor)
	categoria = models.ForeignKey(categoria)
	contenido = models.TextField(max_length=7500)
	imagen = models.ImageField(upload_to=url)
	fecha = models.DateField()	
	visible = models.BooleanField(default=True)
	tipo = models.ForeignKey(tipo_post)

	def __unicode__(self):
		return self.titulo

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#FRASE DEL DIA
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#

class frase(models.Model):
	autor = models.CharField(max_length=100)
	frase = models.CharField(max_length=120)
	fecha = models.DateField()

	def __unicode__(self):
		return self.frase

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#GALERIAS
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#

class tipo_galeria(models.Model):

	class Meta:
		verbose_name_plural = "Tipos de Galeria"	

	nombre = models.CharField(max_length=60)

	def __unicode__(self):
		return self.nombre


class imagen_galeria(models.Model):

	class Meta:
		verbose_name_plural = "Imagenes"

	def url(self,filename):
		ruta =	"uploads/slides/%s"%(filename)
		return ruta

 	autor = models.ForeignKey(autor)
	categoria = models.ForeignKey(categoria)
	descripcion = models.TextField(max_length=500)
	fecha = models.DateField()
	galeria = models.ForeignKey(tipo_galeria)
	imagen = models.ImageField(upload_to=url)
	titulo = models.CharField(max_length=200)
	visible = models.BooleanField(default=True)

	def __unicode__(self):
		return self.titulo

#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#
#ANUNCIANTE
#------------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------------#

class sponsor(models.Model):
	def url_img(self,filename):
		ruta =	"uploads/videos/preloads/%s"%(filename)

	nombre = models.CharField(max_length=80)
	logo = models.ImageField(upload_to=url_img)
	link = models.CharField(max_length=400)

	def __unicode__(self):
		return self.nombre
