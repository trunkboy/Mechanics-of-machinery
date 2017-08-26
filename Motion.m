% This file may not work with the current name, rename this file a name
% starting with a alphabet% 


%script to calculate various parameters of a body undergoing uniform accleration using other parameters%

ch=input('\n What do you want to calculate : \n 1.v \n 2.u \n 3.t \n 4.a \n 5.s \n where : \n v = final velocity \n u = initial velovity \n a = accleration \n s = distnance \n t = time \n     :');

if ch==1
    chx = input('\n Using \n 1. u, a & t \n 2. u, a & s \n 3. a, s & t \n 4. u, s & t    :');
    
    if chx==1;
        u = input('\n u = ');
        a = input('\n a = ');
        t = input('\n t = ');
        v = u + a.*t 
    end
    
    if chx==2;
        u = input('\n u = ');
        a = input('\n a = ');
        s = input('\n s = ');
        v = sqrt(u.*u + 2.*a.*s)
    end
    
    if chx==3
        a = input('\n a = ');
        s = input('\n s = ');
        t = input('\n t = ');
        u = s./t-0.5.*a.*t;
        v = u + a.*t
    end
    
    if chx==4
        u = input('\n u = ');
        s = input('\n s = ');
        t = input('\n t = ');
        a = 2.*(s - u.*t)./(t.*t);
        v = u + a.*t
    end 
end


if ch==2
    chx = input('\n Using \n 1. v, a & t \n 2. v, a & s \n 3. a, s & t \n 4. v, s & t    :');
    
    if chx==1
        v = input('\n v = ');
        a = input('\n a = ');
        t = input('\n t = ');
        u=v-a.*t
    end
    
    if chx==2
        v = input('\n v = ');
        a = input('\n a = ');
        s = input('\n s = ');
        u = sqrt(v.*v - 2.*a.*s)
    end
    
    if chx==3
        a = input('\n a = ');
        s = input('\n s = ');
        t = input('\n t = ');
        u = s./t-0.5.*a.*t
    end
    
    if chx==4
        v = input('\n v = ');
        s = input('\n s = ');
        t = input('\n t = ');
        u = 2.*s./t - v
    end
       
end 

if ch==3
    chx = input('\n Using \n 1. v, a & u \n 2. v, a & s \n 3. a, s & u \n 4. v, s & u    :');
    
    if chx==1
        v = input('\n v = ');
        u = input('\n u = ');
        a = input('\n a = ');
        t= (v-u)./a;
    end
    
    if chx==2
        v = input('\n v = ');
        a = input('\n a = ');
        s = input('\n s = ');
        t1=(v+sqrt(v.*v-2.*a.*s))./a
        t2=(v-sqrt(v.*v-2.*a.*s))./a
    end
    
    if chx==3
        u = input('\n u = ');
        a = input('\n a = ');
        s = input('\n s = ');
        t1=(-u+sqrt(u.*u+2.*a.*s))./a
        t2=(-u-sqrt(u.*u+2.*a.*s))./a
    end
    
    if chx==4
        v = input('\n v = ');
        u = input('\n u = ');
        s = input('\n s = ');
        t= 2.*s./(v+u)
    end    
    
end

if ch==4
    chx = input('\n Using \n 1. v, t & u \n 2. v, u & s \n 3. t, s & u \n 4. v, s & t    :');
    
    if chx==1
        v = input('\n v = ');
        t = input('\n t = ');
        u = input('\n u = ');
        a=(v-u)./t
    end
    
    if chx==2
        v = input('\n v = ');
        u = input('\n u = ');
        s = input('\n s = ');
        a= (v.*v-u.*u)./(2.*s)
    end
    
    if chx==3
        u = input('\n u = ');
        t = input('\n t = ');
        s = input('\n s = ');
        a= 2.*(s-u.*t)./(t.*t)
    end
    
    if chx==4
        v = input('\n v = ');
        t = input('\n t = ');
        s = input('\n s = ');
        a= 2.*(v.*t-s)./(t.*t)
    end
    
end

if ch==5
    chx = input('\n Using \n 1. v, t & u \n 2. v, u & a \n 3. t, a & u \n 4. v, a & t    :');
    
    if chx==1
        u = input('\n u = ');
        v = input('\n v = ');
        t = input('\n t = ');
        s= (1.5*u + 0.5*v).*t
    end
    
    if chx==2
        u = input('\n u = ');
        v = input('\n v = ');
        a = input('\n a = ');
        s= (v.*v - u.*u)./(2*a)
    end
    
    if chx==3
        u = input('\n u = ');
        a = input('\n a = ');
        t = input('\n t = ');
        s= u.*t + 0.5*a.*t.*t
    end
    
    if chx==4
        v = input('\n v = ');
        a = input('\n a = ');
        t = input('\n t = ');
        s= v.*t - 0.5*a.*t.*t
    end
    
end 
    
        
        



