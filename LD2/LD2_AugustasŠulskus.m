%{
1 Vienmačiai vektoriai
a=(-5:0.6:5)'

b=sqrt(a)

c=sqrt(a);
c(17,:)=[]

c2=sqrt(a);
c2(1:16,:)=[];
d=(a.*b)/c2
%}

%{
2 Dvimačiai masyvai
Xmn=[2*sqrt(2) log10(2); 2.^(5) 2*pi; 3*sqrt(2) exp(2)]

Xm2=[2*sqrt(2); 5; 2.^(-2)];
X=[Xmn Xm2]

d=det(X)
%}

%{
3 Praktinis veiksmu su masyvais taikymas
t=0:0.005:1.5;    
A=8;              
f=5;              
p=1.8;            
U1=5;              
U2=3;              

s=A*cos(2*pi*f*t);        
n=p*randn(size(t));       
x=s+n;                  
atrinktos_reiksmes=x(x>U1)

x_filtruotas = x;
x_filtruotas(abs(x_filtruotas)<U2) = 0

cdydis=length(x)
ddydis=length(atrinktos_reiksmes)

max_reiksme=max(x_filtruotas)
min_reiksme=min(x_filtruotas)
%}

%{
P1 Masyvo elementų indeksavimas
A=input('Įveskite vektorių A: ');

B=[A fliplr(A(1:end-1))];

disp('B yra');
disp(B);
%}
