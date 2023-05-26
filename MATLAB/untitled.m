%linear block code(encoding)
k = input("enter the length of dataword : ");
n = input("enter the length of codeword : ");
p = input("enter the parity matrix : ");
g = [eye(k) p];
m = input("enter the dataword : ");
c = encode(m,n,k,'linear',g);
disp(c);
%linear block code(decoding)
h=[p' eye(n-k)];
d_table = syndtable(h);
r_c = input("enter the recived codeword :") ;
s_b = rem(r_c * h',2);
s_d=bi2de(s_b,"left-msb");
e = d_table(s_d + 1, :);
t_c = r_c+e; 



