from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect


def editor_view(request):
	return render_to_response('editor/inicio.html', context_instance=RequestContext(request))

def caricatura_view(request):
	return render_to_response('editor/caricatura.html', context_instance=RequestContext(request))

def foto_view(request):
	return render_to_response('editor/foto.html', context_instance=RequestContext(request))

def frase_view(request):
	return render_to_response('editor/frase.html', context_instance=RequestContext(request))

def post_view(request):
	return render_to_response('editor/post.html', context_instance=RequestContext(request))

def video_view(request):
	return render_to_response('editor/video.html', context_instance=RequestContext(request))

def timeline_view(request):
	return render_to_response('editor/timeline.html', context_instance=RequestContext(request))