from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from finish.apps.main.models import post, imagen_galeria, tipo_galeria, frase, caricatura, anuncio
#paginador
from django.core.paginator import Paginator,EmptyPage,InvalidPage

def main_view(request):
	#posicion de los anuncios 
	# 1 Superior
	# 2 Inferior
	# 3 Izquierdo
	# 4 Derecho
	# 5 Central Grande
	# 6 Central Menor

	# Lista de Anuncios
	anuncio_sup = anuncio.objects.filter(posicion=1).order_by('-id')[0]
	anuncio_central = anuncio.objects.filter(posicion=5).order_by('-id')[0]

	lista_anuncios_inf = anuncio.objects.filter(posicion=2).order_by('-id')
	lista_anuncios_izq = anuncio.objects.filter(posicion=3).order_by('-id')
	lista_anuncios_der = anuncio.objects.filter(posicion=4).order_by('-id')
	lista_anuncios_central_inf = anuncio.objects.filter(posicion=6).order_by('-id')


	frase_dia = frase.objects.order_by('-id')[0]
	caricatura_dia = caricatura.objects.order_by('-id')[0]

	#lista los post que sean visibles de forma descendente
	
	lista_post = post.objects.order_by('-id').filter(visible=True)

	# Paginators de anuncios
	paginator_inf = Paginator(lista_post,16) 
	paginator_izq = Paginator(lista_anuncios_izq,14)
	paginator_der = Paginator(lista_anuncios_der,14)
	paginator_central_inf = Paginator(lista_anuncios_central_inf,3) 
	
	#paginator de posts
	paginator_post = Paginator(lista_post,16) #Paginador con nro de post por pagina

	try:
		page = int(pagina)
	except:
		page = 1
	try:
		posts = paginator_post.page(page)
	except (EmptyPage,InvalidPage):
		posts = paginator_post.page(paginator_post.num_pages)

	anuncios_inf = paginator_inf.page(1)
	anuncios_izq = paginator_izq.page(1)
	anuncios_der = paginator_der.page(1)
	anuncios_central_inf = paginator_central_inf.page(1)

	lista_semana = imagen_galeria.objects.filter(galeria_id=1, visible =True)
	lista_chicas = imagen_galeria.objects.filter(galeria_id=2, visible =True)

	ctx = { 'posts' : posts,
			'semana' : lista_semana,
			'chicas' : lista_chicas,
			'frase' : frase_dia,
			'caricatura' : caricatura_dia,
			'top' : anuncio_sup,
			'bottom' : anuncios_inf,	
			'izq' : anuncios_izq,
			'der' : anuncios_der,
			'central' : anuncio_central,
			'central_min' : anuncios_central_inf
		  }

	return render_to_response('main/main.html', ctx, context_instance=RequestContext(request))

def tools_view(request):
	return render_to_response('main/tools.html', context_instance=RequestContext(request))	

def contact_view(request):
	#posicion de los anuncios 
	# 1 Superior
	# 2 Inferior
	# 3 Izquierdo
	# 4 Derecho
	# 5 Central Grande
	# 6 Central Menor

	# Lista de Anuncios
	anuncio_sup = anuncio.objects.filter(posicion=1).order_by('-id')[0]
	anuncio_central = anuncio.objects.filter(posicion=5).order_by('-id')[0]

	lista_anuncios_inf = anuncio.objects.filter(posicion=2).order_by('-id')
	lista_anuncios_izq = anuncio.objects.filter(posicion=3).order_by('-id')
	lista_anuncios_der = anuncio.objects.filter(posicion=4).order_by('-id')
	lista_anuncios_central_inf = anuncio.objects.filter(posicion=6).order_by('-id')


	frase_dia = frase.objects.order_by('-id')[0]
	caricatura_dia = caricatura.objects.order_by('-id')[0]

	#lista los post que sean visibles de forma descendente
	
	lista_post = post.objects.order_by('-id').filter(visible=True)

	# Paginators de anuncios
	paginator_inf = Paginator(lista_post,16) 
	paginator_izq = Paginator(lista_anuncios_izq,14)
	paginator_der = Paginator(lista_anuncios_der,14)
	paginator_central_inf = Paginator(lista_anuncios_central_inf,3) 
	
	#paginator de posts
	paginator_post = Paginator(lista_post,16) #Paginador con nro de post por pagina

	try:
		page = int(pagina)
	except:
		page = 1
	try:
		posts = paginator_post.page(page)
	except (EmptyPage,InvalidPage):
		posts = paginator_post.page(paginator_post.num_pages)

	anuncios_inf = paginator_inf.page(1)
	anuncios_izq = paginator_izq.page(1)
	anuncios_der = paginator_der.page(1)
	anuncios_central_inf = paginator_central_inf.page(1)

	lista_semana = imagen_galeria.objects.filter(galeria_id=1, visible =True)
	lista_chicas = imagen_galeria.objects.filter(galeria_id=2, visible =True)

	ctx = { 'posts' : posts,
			'semana' : lista_semana,
			'chicas' : lista_chicas,
			'frase' : frase_dia,
			'caricatura' : caricatura_dia,
			'top' : anuncio_sup,
			'bottom' : anuncios_inf,	
			'izq' : anuncios_izq,
			'der' : anuncios_der,
			'central' : anuncio_central,
			'central_min' : anuncios_central_inf
		  }

	return render_to_response('main/contact.html', ctx, context_instance=RequestContext(request))

def post_view(request, id_post,color):
	
	singlePost = post.objects.get(id=id_post)

	lista_anuncios_izq = anuncio.objects.filter(posicion=3).order_by('-id')
	lista_anuncios_der = anuncio.objects.filter(posicion=4).order_by('-id')
	paginator_izq = Paginator(lista_anuncios_izq,4)
	paginator_der = Paginator(lista_anuncios_der,4)
	anuncios_izq = paginator_izq.page(1)
	anuncios_der = paginator_der.page(1)
	
	ctx = { 'post': singlePost, 'color' : color, 'izq' : anuncios_izq, 'der' : anuncios_der,}

	return render_to_response('main/post.html',ctx,context_instance=RequestContext(request))