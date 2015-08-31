#from django import forms
#from models import User
#from django.template import RquestContext

#from django.db import connection, models
#from django.contrib.auth.models import User
#import time
#curtime = time.strftime("%Y-%m-%d %H:%M:%S",time.localtime());
#coding=utf-8
from django.shortcuts import render,render_to_response
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib import auth
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required

from xss.models import User,User2
import time

@csrf_exempt
def login(request):
    if request.method == 'POST':
	    username = request.POST.get('username', '').strip()
	    password = request.POST.get('password', '').strip()
	    user = auth.authenticate(username=username, password=password)
	    if user is not None and user.is_active:
		# Correct password, and the user is marked "active"
		auth.login(request, user)
		return HttpResponseRedirect("index/")
		#response = HttpResponseRedirect('index/')
		#response.set_cookie('username',username,3600)
		#return response
	    else:
		# Show an error page
		message = "Sorry, that's not a valid username or password!"
		return render_to_response('user/login.html',locals())
    return render_to_response('user/login.html')


@login_required(login_url="/")
@csrf_exempt
def index(request):
    if request.user.is_authenticated():
        return render_to_response('user/index.html' ,{'username':request.user.username})
        #username = request.COOKIES.get('username','')
        #request.user.message_set.create(message="c") 
        #return render_to_response('user/index.html', context_instance=RequestContext(request)) 
    else:
        return HttpResponseRedirect('/')




@login_required(login_url="/")
def search(request):
    time1 = time.time()
    if request.method == "GET":
        choie = request.GET.get('l','').strip()
        col = request.GET.get('t','').strip()
        key = request.GET.get('q','').strip()
        if key == '':
             return render_to_response('user/index.html',{'username':request.user.username})
        elif choie == 'like':
            #user = User2.objects.filter(aa__name__icontains=key)
            user = User.objects.filter(**{col + '__icontains':key})
            count = len(user)
            time2 = time.time()
            return render_to_response('user/index.html' ,{'username':request.user.username,'count': count,'test':user,'time':int(time2-time1)})
        else:
            user = User.objects.filter(**{col + '__iexact':key})
            count = len(user)
            time2 = time.time()
            return render_to_response('user/index.html' ,{'username':request.user.username,'count': count,'test':user,'time':int(time2-time1)})
    else:
        return render_to_response('user/index.html',{'username':request.user.username})



def logout(request):
    response = HttpResponse('logout !!')
    auth.logout(request)
    return HttpResponseRedirect("/")
    #response.delete_cookie('username')
    #return response
    #return render_to_response('user/login.html')




















#cookie 

'''

class UserForm(forms.Form): 
	username = forms.CharField(label='User',max_length=100)
	password = forms.CharField(label='Pwd',widget=forms.PasswordInput())



def login(req):
    if req.method == 'POST':
	uf = UserForm(req.POST)
	if uf.is_valid():
	    username = uf.cleaned_data['username']
	    password = uf.cleaned_data['password']
	    user = User.objects.filter(username__exact = username,password__exact = password)
	    if user:
	        response = HttpResponseRedirect('index/')
	        response.set_cookie('username',username,3600)
	        return response
	    else:
	        return HttpResponseRedirect('/')
    else:
	uf = UserForm()
    #return render_to_response('user/login.html',{'uf':uf})#,context_instance=RequestContext(req)
    return render_to_response('user/login.html')

def index(request):
    #return render_to_response('user/login.html')
    username = request.COOKIES.get('username','')
    return render_to_response('index.html' ,{'username':username})

def logout(request):
    response = HttpResponse('logout !!')
    response.delete_cookie('username')
    return response

select_list:

def test(request):
    TutorialList = [{"yuyan":"HTML","yuyan1":"CSS"},{"yuyan":"jQuery","yuyan3":"Python"}]
    count = len(TutorialList)
    #return render(request,'user/list.html',{'TutorialList': TutorialList,'count': count})
    user = User.objects.all()
    return render_to_response('user/list.html',{'TutorialList': TutorialList,'count': count,'test':user})





check_code:
def get_check_code_image(request,image='media/images/checkcode.gif'):    
    import Image, ImageDraw, ImageFont, random    
    im = Image.open(image)    
    draw = ImageDraw.Draw(im)    
    mp = md5.new()    
    mp_src = mp.update(str(datetime.now()))    
    mp_src = mp.hexdigest()    
    rand_str = mp_src[0:4]       
    draw.text((10,10), rand_str[0], font=ImageFont.truetype("ARIAL.TTF", random.randrange(25,50)))    
    draw.text((48,10), rand_str[1], font=ImageFont.truetype("ARIAL.TTF", random.randrange(25,50)))    
    draw.text((85,10), rand_str[2], font=ImageFont.truetype("ARIAL.TTF", random.randrange(25,50)))    
    draw.text((120,10), rand_str[3], font=ImageFont.truetype("ARIAL.TTF", random.randrange(25,50)))    
    del draw    
    request.session['checkcode'] = rand_str    
    buf = cStringIO.StringIO()    
    im.save(buf, 'gif')    
    return HttpResponse(buf.getvalue(),'image/gif') 




data:

def test(request):
    q = request.GET['q']
    #user = User.objects.filter(mail__iexact=q)
    user = User.objects.filter(mail__icontains=q)
    count = len(user)
    return render_to_response('user/list.html',{'count': count,'test':user})

    #user = User.objects.filter(name__icontains=q)
    #user2 = User2.objects.filter(name__icontains=q)

    #cursor = connection.cursor()
    #cursor.execute("select * from xss_user where name like '%%%s%%'" % q)
    #result = cursor.fetchall()
'''




