x=[-15:0.1:15];
y=[-15:0.1:15];
[xm,ym]=meshgrid(x,y);
xi=[0  0  0  5  -6];
yi=[0 -7  7  1  -1];

figure;
zm=xm*0;
for n=1:1,
    rm=sqrt((xm-xi(n)).^2+(ym-yi(n)).^2);
    zm=zm+0.5*real(exp(i*2*pi/2*rm))./(1+rm/3);
end
surf(xm,ym,zm);axis off;lighting phong;shading interp;axis equal tight;

figure;
zm=xm*0;
for n=2:3,
    rm=sqrt((xm-xi(n)).^2+(ym-yi(n)).^2);
    zm=zm+0.5*real(exp(i*2*pi/2*rm))./(1+rm/3);
end
surf(xm,ym,zm);axis off;lighting phong;shading interp;axis equal tight;

figure;
zm=xm*0;
for n=1:5,
    rm=sqrt((xm-xi(n)).^2+(ym-yi(n)).^2);
    zm=zm+0.5*real(exp(i*2*pi/2*rm))./(1+rm/3);
end
surf(xm,ym,zm);axis off;lighting phong;shading interp;axis equal tight;




