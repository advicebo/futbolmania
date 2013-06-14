from django.conf.urls import patterns, include, url
import settings
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'finish.views.home', name='home'),
    # url(r'^finish/', include('finish.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),

    # url(r'^', include('finish.apps.inicio.urls')),
    url(r'^', include('finish.apps.main.urls')),
    url(r'^', include('finish.apps.editor.urls')),
    url(r'^', include('finish.apps.webServices.wsPosts.urls')),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',{ 'document_root': settings.MEDIA_ROOT }),
    #url(r'^', include('finish.apps.deportivo.urls')),
)
