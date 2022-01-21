clc; clear all;

d=1:.01:6;
k=1.5;
for n=1:length(d);
    I(n)=40*(d(n)/(2*100))*(pi*10^k)^.5;
end
    
    plot(d,I)
%     2/3.14