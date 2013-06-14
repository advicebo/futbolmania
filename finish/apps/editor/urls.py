from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('finish.apps.editor.views',
	url(r'^editor/$','editor_view',name='vista_editor'),
	url(r'^editor/caricatura/$','caricatura_view',name='vista_caricatura'),
	url(r'^editor/foto/$','foto_view',name='vista_foto'),
	url(r'^editor/frase/$','frase_view',name='vista_frase'),
	url(r'^editor/post/$','post_view',name='vista_post'),
	url(r'^editor/video/$','video_view',name='vista_video'),
	url(r'^editor/timeline/$','timeline_view',name='vista_timeline'),
)	