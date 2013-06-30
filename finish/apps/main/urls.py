from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('finish.apps.main.views',
	url(r'^$','main_view',name='vista_main'),
	url(r'^posts/page/(?P<pagina>.*)/$','main_view',name='vista_posts'),
	url(r'^tools/$','tools_view',name='vista_tools'),
	url(r'^post/(?P<id_post>.*)/(?P<color>.*)/$','post_view',name='vista_post'),
	url(r'^contact/','contact_view',name='vista_contact'),
)