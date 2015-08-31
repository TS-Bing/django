#from django.conf.urls import patterns, include, url
from xss import views
from django.conf import settings
from django.conf.urls import patterns, url

urlpatterns = patterns('',
    url(r'^$', views.login, name='login'),
    url(r'^index/$', views.index, name='index'),
    url(r'^logout/$', views.logout, name='logout'),
    url(r'^search/$', views.search, name='search'),

)

if settings.DEBUG is False:
    urlpatterns += patterns('',url(r'^static/(?P<path>.*)$', 'django.views.static.serve', { 'document_root': settings.STATIC_ROOT,}),)

    #url(r'^test/$', views.test, name='test'),
    #url(r'^$', views.login, name='login'),
    #url(r'^accounts/login/$', views.login_view, name='login_view'), 
    #url(r'^get_check_code_image/$',views.get_check_code_image, name='get_check_code_image'),
