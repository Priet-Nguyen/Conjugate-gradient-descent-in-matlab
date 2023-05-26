A= [[ 3 2]
  [2  6]];
b= transpose([2 -8]);
%The solution x* should be
 %[ 0.5488  0.7152  0.6028]
 x0= transpose([-2, -2]);
 M= [[ 3 0]
  [0  6]];
 C=chol(M);
 invM=inv(M);
 r0=b-A*x0;
 d0=invM*r0;

 alpha0=transpose(r0)*invM*r0/(transpose(d0)*A*d0);
 x1=x0+alpha0*d0;
 r1=r0-alpha0*A*d0;
 beta1=transpose(r1)*invM*r1/(transpose(r0)*invM*r0);
 d1=invM*r1+beta1*d0

 alpha1=transpose(r1)*invM*r1/(transpose(d1)*A*d1);
 x2=x1+alpha1*d1;
 r2=r1-alpha1*A*d1;
 beta2=transpose(r2)*invM*r2/(transpose(r1)*invM*r1);
 d2=invM*r2+beta2*d1

 alpha2=transpose(r2)*invM*r2/(transpose(d2)*A*d2);
 x3=x2+alpha2*d2;
 r3=r2-alpha2*A*d2;
 beta3=transpose(r3)*invM*r3/(transpose(r2)*invM*r2);
 d3=invM*r3+beta3*d2