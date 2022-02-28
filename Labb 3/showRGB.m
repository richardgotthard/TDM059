function showRGB(RGB)
% showRGB(RGB)
%
% RGB = Matris med RGB-värden som ska visas på skärmen.
% Matrisen bör se ut som följande:
% RGB=[r1 g1 b1;r2 g2 b2;...]

% Martin Solli, marso@itn.liu.se
% ITN, Linköpings Universitet

r=size(RGB,1);

colors=[];
co=0;
ro=0;
for n=1:r
    if (co==10) co=0; ro=ro+1; end;
    colors(ro*50+1:ro*50+50,co*50+1:co*50+50,1)=RGB(n,1);
    colors(ro*50+1:ro*50+50,co*50+1:co*50+50,2)=RGB(n,2);
    colors(ro*50+1:ro*50+50,co*50+1:co*50+50,3)=RGB(n,3);
    co=co+1;
end;

figure;
imshow(colors);