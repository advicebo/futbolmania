from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('finish.apps.webServices.wsPosts.views',
	url(r'^post/$','wsPosts_view',name='vista_wsPosts'),
)