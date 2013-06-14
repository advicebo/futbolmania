from django.http import HttpResponse
from finish.apps.main.models import post
#libreria para serializar
from django.core import serializers

def wsPosts_view(request):
	data = serializers.serialize("json",post.objects.filter(visible=True))
	#retorna la informacion en formato python
	return HttpResponse(data,mimetype="aplication/json")