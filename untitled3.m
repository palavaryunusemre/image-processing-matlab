rK=imread("kirmizi_kare.png")
bK=imread("mavi_kare.png")
bU=imread("mavi_ucgen.png")
yD=imread("sari_daire.png")
gU=imread("yesil_ucgen.png")
resim=imread("resim.png")

% kırmızı kare

subplot(1,2,1)
imshow(rK)
xlabel('orijinal resim')
hsvI = rgb2hsv(rK);
I=rK;
   hueI = round(hsvI(:,:,1)*360);
   satI = hsvI(:,:,2);
   valI = hsvI(:,:,3); 
red = ((hueI<=30)|(hueI>330));
Id1=double(I(:,:,1)).*red;
Id2=double(I(:,:,2)).*red;
Id3=double(I(:,:,3)).*red;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
subplot(1,2,2)
imshow(Id)
xlabel('Kırmızı Kare Tespiti')



% mavi kare
subplot(1,2,1)
imshow(bK)
xlabel('orijinal resim')
hsvI = rgb2hsv(bK);
I=bK;
   hueI = round(hsvI(:,:,1)*360);
   satI = hsvI(:,:,2);
   valI = hsvI(:,:,3); 
blue = ((hueI<=270)&(hueI>210));
Id1=double(I(:,:,1)).*blue;
Id2=double(I(:,:,2)).*blue;
Id3=double(I(:,:,3)).*blue;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
subplot(1,2,2)
imshow(Id)
xlabel('mavi kare tespiti')



% mavi üçgen
subplot(1,2,1)
imshow(bU)
xlabel('orijinal resim')
hsvI = rgb2hsv(bU);
I=bU;
   hueI = round(hsvI(:,:,1)*360);
   satI = hsvI(:,:,2);
   valI = hsvI(:,:,3); 
blue = ((hueI<=270) & (hueI>210));
Id1=double(I(:,:,1)).*blue;
Id2=double(I(:,:,2)).*blue;
Id3=double(I(:,:,3)).*blue;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
subplot(1,2,2)
imshow(Id)
xlabel('mavi üçgen tespiti')

% sarı daire
subplot(1,2,1)
imshow(yD)
xlabel('orijinal resim')
hsvI = rgb2hsv(yD);
I=yD;
   hueI = round(hsvI(:,:,1)*360);
   satI = hsvI(:,:,2);
   valI = hsvI(:,:,3); 
yellow = ((hueI<=90) & (hueI>30));
Id1=double(I(:,:,1)).*yellow;
Id2=double(I(:,:,2)).*yellow;
Id3=double(I(:,:,3)).*yellow;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
subplot(1,2,2)
imshow(Id)
xlabel('sarı daire tespiti')



% yesil üçgen
subplot(1,2,1)
imshow(gU)
xlabel('orijinal resim')
hsvI = rgb2hsv(gU);
I=gU;
   hueI = round(hsvI(:,:,1)*360);
   satI = hsvI(:,:,2);
   valI = hsvI(:,:,3); 
green = ((hueI<=150) & (hueI>30));
Id1=double(I(:,:,1)).*green;
Id2=double(I(:,:,2)).*green;
Id3=double(I(:,:,3)).*green;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
subplot(1,2,2)
imshow(Id)
xlabel('yeşil üçgen tespiti')



