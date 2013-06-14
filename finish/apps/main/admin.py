from django.contrib import admin
from finish.apps.main.models import autor, posicion, anuncio, caricatura, categoria, video, post, frase, tipo_galeria, imagen_galeria, sponsor, tipo_post

admin.site.register(autor)
admin.site.register(posicion)
admin.site.register(categoria)
admin.site.register(anuncio)
admin.site.register(caricatura)
admin.site.register(video)
admin.site.register(frase)
admin.site.register(tipo_galeria)
admin.site.register(imagen_galeria)
admin.site.register(sponsor)
admin.site.register(tipo_post)


class IncPost(admin.ModelAdmin):
	class Media:
		js  = ('admin/js/tiny_mce/tiny_mce.js',
			   'admin/js/tiny_mce/basic_config.js',)

admin.site.register(post, IncPost)
