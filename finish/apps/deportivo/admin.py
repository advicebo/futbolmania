from django.contrib import admin
from finish.apps.deportivo.models import deporte,categoria_torneo,tipo_locacion,area,locacion,torneo,equipo,partido,deportista,gol,equipo_participa,deportista_participa

admin.site.register(deporte)
admin.site.register(categoria_torneo)
admin.site.register(tipo_locacion)
admin.site.register(area)
admin.site.register(locacion)
admin.site.register(torneo)
admin.site.register(equipo)
admin.site.register(partido)
admin.site.register(deportista)
admin.site.register(gol)
admin.site.register(equipo_participa)
admin.site.register(deportista_participa)
