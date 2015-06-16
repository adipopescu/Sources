LIB "tst.lib";
tst_init();

LIB("primdec.lib");


//Singular Trac #636

ring r=integer,(t,a,b,c,d,e,f,g,h,i,j),ws(1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1);
ideal inI=
3,
gh+2fi+ej,
dh+2ci+bj,
df+2cg+aj,
de+2bg+ai,
ce+2bf+ah;
std(inI);

//Github Adi #39
 

ring rng = (integer),(x,y,z),(ls(3),C);
int trial = 3;
//option(redSB);
system("random", 820791554);
ideal I = 1+7yz3,-4x+2xz+14x2,-9-10z2+8xz;
ideal J = -2xz3+x2yz,3z-2xy-3xy2;
// ideal gI = std(I);
// ideal ggI = std(gI);
ideal gJ = std(J);
"Zweite:";
ideal ggJ = std(gJ);
//ASSUME(0, 0== size( std(reduce (I,gI ) )) );
//ASSUME(0, 0== size( std(reduce (J,gJ ) )) );
//idealsEqual(gI,ggI );
gJ;ggJ;



//Github Adi #32

option(redSB);

ring rng = (integer),(x,y,z),dp;
ideal I = -25*x^3+104*x*y^3-23*y^2*z-128;
ideal J = -118*x*y^3*z+50*x*y^2*z^2-50*x*y*z-49*y,149*x*y^2*z^2-142*y^2-112;
ideal gI =  std(I);
ideal gJ =  std(J);
reduce (I,gI );
reduce (J,gJ );

option(redSB);


ring rng = (integer),(x,y,z),(dp(3),C);
int trial = 0;
system("random", 912758297);
ideal I = -27*x+25*z,-46*x*z+35*x,21*x-42;
       ideal gI =  std(I);
       ideal ggI =  std(gI);

reduce (I,gI );


//Github Adi #33


ring rng = (integer),(x,y,z),dp;
option(redSB);
option(redTail);
ideal I = -5*z^2-y*z^2, x^3*y*z-z^2+1, y^2*z^2+5*x^2*y*z;
ideal gI =  std(I);
ideal ggI =  std(gI);
gI;
ggI;



ring rng = (integer),(x,y,z),(dp(3),C);
option(redSB);
option(redTail);
ideal I = -5*x*z^2-73*y*z^2, 2*x^3*y*z-129*x*z^2+8, 11*y^3*z^2+85*x^2*y*z;
ideal gI =  std(I);
ideal ggI =  std(gI);
size(gI)==size(ggI);


ring rng = (integer),(x,y,z),(dp(3),C);
option(redSB);
option(redTail);
ideal I = -5*x*z^2-73*y*z^2, 68*x^3*y*z-129*x*z^2+98, 11*y^3*z^2+85*x^2*y*z;
ideal gI =  std(I);
ideal ggI =  std(gI);
size(gI)==size(ggI);


option(redSB);


ring rng = (integer),(x,y,z),(dp(3),C);
int trial = 0;
system("random", 784341798);
ideal I = -49*y^2+40*z^2+17,-34*z^2-3,-25*y*z-28*z;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
gI;
ggI;

//Github Adi #36

ring rng = (0),(x,y,z),(ls(3),C);

system("random", 157161605);
ideal I =
(68/23)*z-(142/133)*y*z-(64/37)*x*y+(65/71)*x*y*z^2+(1/3)*x^2*y*z,(-2/7)*x*y*z-(61/91)*x*y^2*z;
ideal J = (3/53)*x*z+(47/44)*x*y^2*z,(-40/107)*x*z^2+22*x*z^3;
ideal gI = std(I);
ideal ggI = std(gI);
ideal gJ = std(J);
ideal ggJ = std(gJ);
0== size( std(reduce (I,gI ) ));
0== size( std(reduce (J,gJ ) ));


//Github Adi #37

ring rng = (integer),(x,y,z),dp;
ideal i = -5*z^2-y*z^2, x^3*y*z-z^2+1, y^2*z^2+5*x^2*y*z;
ideal gI =  std(i);
ideal ggI =  std(gI);
gI;ggI;



//Github Adi #39
//Problem mit ls aber kein problem mit ds,Ds,lp,dp
//ls solved: in posinL11Ring one should take the Fdeg instead of pLmCmp

option(redSB);


ring rng = (integer),(x,y,z),(ls(3),C);
int trial = 3;
system("random", 820791554);
ideal I = 1+7*y*z^3,-4*x+2*x*z+14*x^2,-9-10*z^2+8*x*z;
ideal J = -14*x*z^3+5*x^2*y*z,15*z-7*x*y+12*x*y*z^2-11*x*y^2;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);
       ideal ggJ =  std(gJ);
0== size( std(reduce (I,gI ) )  );
0== size( std(reduce (J,gJ ) )  );
idealsEqual(gI,ggI );
idealsEqual(gJ,ggJ );



//Github Adi #39
//redtail hat Problemen wenn man im posinL11Ring pLmCmp nimmt statt FDeg


ring rng = (integer),(x,y,z),(ls(3),C);
option("redTail");
option(redSB);
system("random", 1022116625);
ideal I = -14*y*z^2+7*x-11*x*y,-15*x*y,-8*y^2*z^2+5*x*y*z,5*y*z^2-15*y^2*z+8*x^2*z^2+3*x^2*y^2;
ideal gI =  std(I);
ideal ggI =  std(gI);
idealsEqual(gI,ggI );
gI;


//Github Adi #40
option(redSB);

ring rng = (integer),(x,y,z),(ls(3),C);
int trial = 3;
system("random", 158291770);
ideal I = -10*x*y*z,12*z^2-8*y-14*x*z+14*x^2*y*z,-7*y^4+4*x^2+9*x^2*y;
ideal J = -1+7*y^3*z,-15+14*x+14*x*y*z,15*z+7*x-10*x*z+5*x*y^2;
       ideal gI =  std(I);
       
 ring rng = (integer),(x,y,z),(ls(3),C);
 intvec op = 67108866,16787537;
  option() ;
//options: intStrategy redefine loadLib usage prompt
  option(set, op) ;
 int trial = 53;
 system("random", 1792192072);
 ideal I = 7*x*z+3*x*z^2-x^2,4*z+6*z^2+2*y;
 ideal J = 5-5*z^2+3*y^2*z;
 ideal gI =  std(I);
       



//Github Adi #27

ring rng = (integer),(y(1..4),x(1..3)),dp;
ideal I  = 12*y(3)*y(4)+19*y(1)+6*y(4),2*x(3)*y(4)-2*y(1)+7,2*y(1)*y(3)+y(1)-7*y(3)+6,7*x(3)*y(3)-6*x(3)-6*y(3)-3,y(1)^2+126*y(3)*y(4)+196*y(1)+60*y(4),x(3)*y(1)-3,x(3)*y(3)*y(4)+30*y(3)*y(4)+48*y(1)+15*y(4)+3,48*y(3)*y(4)^2-76*y(1)*y(4)+24*y(4)^2+266*y(4),48*y(3)^2*y(4)+48*y(3)*y(4)+12*y(4),48*y(1)*y(3)*y(4)+24*y(1)*y(4)-168*y(3)*y(4)-84*y(4),48*x(3)*y(3)*y(4)-76*x(3)*y(1)-48*y(1)*y(3)+24*x(3)*y(4)+266*x(3)-24*y(1)+168*y(3)+84,-266*x(3)*y(4)+168*y(3)*y(4)+84*y(4),266*x(3)*y(3)+168*y(3)^2-228*x(3)-60*y(3)-72,336*x(3)*y(3)*y(4)-60*x(3)*y(4)-144*y(3)*y(4)-72*y(4),-266*x(3)^2-168*x(3)*y(3)+144*x(3)+144*y(3)+72,-168*y(3)^2*y(4)+266*y(1)*y(3)+60*y(3)*y(4)-228*y(1)-931*y(3)+72*y(4)+798,-168*y(3)^3-24*y(3)^2+102*y(3)+36,-168*y(1)*y(3)^2+60*y(1)*y(3)+588*y(3)^2+72*y(1)-210*y(3)-252,168*x(3)*y(3)^2+168*x(3)*y(3)-144*y(3)^2+42*x(3)-144*y(3)-36,28*x(3)*y(3)*y(4)-28*y(1)*y(3)+14*x(3)*y(4)-24*y(3)*y(4)+24*y(1)+98*y(3)-12*y(4)-84,-28*x(3)*y(3)^2+10*x(3)*y(3)+12*x(3),-28*x(3)*y(1)*y(3)+24*x(3)*y(1)+98*x(3)*y(3)-84*x(3),28*x(3)^2*y(3)+14*x(3)^2-24*x(3)*y(3)-12*x(3),48*y(1)*y(4)^2-84*y(4)^2,48*y(1)*y(3)*y(4)+24*y(1)*y(4)-84*y(3)*y(4)+72*y(4),72*y(4)^2,48*x(3)*y(1)*y(4)-84*x(3)*y(4)-72*y(4),-48*y(1)^2*y(3)-24*y(1)^2+252*y(1)*y(3)+72*y(3)*y(4)+12*y(1)-294*y(3)+36*y(4)+252,-8*y(1)^2*y(4)+504*y(3)*y(4)^2-756*y(1)*y(4)+252*y(4)^2+2744*y(4),504*y(3)^2*y(4)+492*y(3)*y(4)+120*y(4),504*y(1)*y(3)*y(4)+240*y(1)*y(4)-1764*y(3)*y(4)-840*y(4),-8*x(3)*y(1)^2+504*x(3)*y(3)*y(4)-756*x(3)*y(1)-504*y(1)*y(3)+252*x(3)*y(4)+2744*x(3)-240*y(1)+1764*y(3)+840,168*y(1)*y(3)*y(4)-144*y(1)*y(4)-294*y(3)*y(4)+252*y(4),168*y(1)*y(3)^2-60*y(1)*y(3)-294*y(3)^2-72*y(1)+504*y(3)-216,252*y(3)*y(4)-216*y(4),-168*x(3)*y(1)*y(3)-84*x(3)*y(1)+294*x(3)*y(3)+144*y(1)*y(3)-252*x(3)+72*y(1)-252*y(3)+216,-28*x(3)*y(1)*y(4)-2744*x(3)*y(4)+24*y(1)*y(4)+1764*y(3)*y(4)+840*y(4),28*x(3)*y(1)*y(3)-24*x(3)*y(1)+2744*x(3)*y(3)+1764*y(3)^2-2352*x(3)-672*y(3)-720,3528*x(3)*y(3)*y(4)-672*x(3)*y(4)-1512*y(3)*y(4)-720*y(4),-28*x(3)^2*y(1)-2744*x(3)^2+24*x(3)*y(1)-1764*x(3)*y(3)+1512*x(3)+1512*y(3)+720,28*y(1)^2*y(3)-1764*y(3)^2*y(4)-24*y(1)^2+2646*y(1)*y(3)+630*y(3)*y(4)-2268*y(1)-9604*y(3)+756*y(4)+8232,-1764*y(3)^3-210*y(3)^2+1056*y(3)+360,-1764*y(1)*y(3)^2+672*y(1)*y(3)+6174*y(3)^2+720*y(1)-2352*y(3)-2520,1764*x(3)*y(3)^2+1722*x(3)*y(3)-1512*y(3)^2+420*x(3)-1476*y(3)-360,24*x(3)*y(4)^2+24*y(1)*y(4),24*x(3)*y(3)*y(4)+38*x(3)*y(1)+24*y(1)*y(3)+12*x(3)*y(4)+12*y(1),24*x(3)*y(1)*y(4),24*x(3)^2*y(4),-24*y(1)*y(3)*y(4)+38*y(1)^2-12*y(1)*y(4)-133*y(1),-24*y(1)*y(3)^2-24*y(1)*y(3)-6*y(1),-24*y(1)^2*y(3)-12*y(1)^2+84*y(1)*y(3)+42*y(1),-24*x(3)*y(1)*y(3)-12*x(3)*y(1)+84*x(3)*y(3)+42*x(3),-4*x(3)*y(1)*y(4)-4*y(1)^2+14*x(3)*y(4)+14*y(1),-4*x(3)*y(1)*y(3)-2*x(3)*y(1),-4*x(3)*y(1)^2+14*x(3)*y(1),-4*x(3)^2*y(1)+14*x(3)^2,84*x(3)*y(3)*y(4)+133*x(3)*y(1)-72*x(3)*y(4)-114*y(1),84*x(3)*y(3)^2-30*x(3)*y(3)-36*x(3),-84*x(3)*y(1)*y(3)-42*x(3)*y(1)+72*y(1)*y(3)+36*y(1),-84*x(3)^2*y(3)-42*x(3)^2+72*x(3)*y(3)+36*x(3),-14*x(3)^2*y(4)-14*x(3)*y(1)+12*x(3)*y(4)+12*y(1),14*x(3)^2*y(3)-12*x(3)^2,-14*x(3)^2*y(1)+12*x(3)*y(1),-14*x(3)^3+12*x(3)^2,28*x(3)*y(1)*y(3)-5*x(3)*y(1)-49*x(3)*y(3)-12*y(1)*y(3)+42*x(3)-6*y(1),-24*y(1)^2*y(4)+42*y(1)*y(4),-24*y(1)^2*y(3)-12*y(1)^2+42*y(1)*y(3)-36*y(1),-36*y(1)*y(4),-36*x(3)*y(4),-252*x(3)*y(4)^2-252*y(1)*y(4),-4*x(3)*y(1)^2-252*x(3)*y(3)*y(4)-392*x(3)*y(1)-252*y(1)*y(3)-120*x(3)*y(4)-120*y(1),-252*x(3)*y(1)*y(4),-252*x(3)^2*y(4),-4*y(1)^3+252*y(1)*y(3)*y(4)-378*y(1)^2+126*y(1)*y(4)+1372*y(1),252*y(1)*y(3)^2+246*y(1)*y(3)+60*y(1),252*y(1)^2*y(3)+120*y(1)^2-882*y(1)*y(3)-420*y(1),252*x(3)*y(1)*y(3)+120*x(3)*y(1)-882*x(3)*y(3)-420*x(3),-14*x(3)*y(1)^2-882*x(3)*y(3)*y(4)-1372*x(3)*y(1)+12*y(1)^2+756*x(3)*y(4)+1176*y(1),-882*x(3)*y(3)^2+336*x(3)*y(3)+360*x(3),882*x(3)*y(1)*y(3)+420*x(3)*y(1)-756*y(1)*y(3)-360*y(1),882*x(3)^2*y(3)+420*x(3)^2-756*x(3)*y(3)-360*x(3),-38*x(3)*y(4)^2+24*y(3)*y(4)^2+12*y(4)^2,24*y(3)^2*y(4)+24*y(3)*y(4)+6*y(4),24*x(3)*y(3)*y(4)^2+12*x(3)*y(4)^2,-38*x(3)^2*y(4),-24*y(3)^2*y(4)^2+38*y(1)*y(3)*y(4)-12*y(3)*y(4)^2-133*y(3)*y(4),-24*y(3)^3*y(4)-24*y(3)^2*y(4)-6*y(3)*y(4),-24*y(1)*y(3)^2*y(4)-12*y(1)*y(3)*y(4)+84*y(3)^2*y(4)+42*y(3)*y(4),38*x(3)*y(1)*y(3)+12*x(3)*y(3)*y(4)-133*x(3)*y(3)-12*y(1)*y(3)+6*x(3)*y(4)-6*y(1)+42*y(3)+21,4*x(3)*y(3)*y(4)^2-4*y(1)*y(3)*y(4)+2*x(3)*y(4)^2+120*y(3)*y(4)^2-192*y(1)*y(4)+14*y(3)*y(4)+60*y(4)^2+672*y(4),120*y(3)^2*y(4)+120*y(3)*y(4)+30*y(4),120*y(1)*y(3)*y(4)+60*y(1)*y(4)-420*y(3)*y(4)-210*y(4),4*x(3)^2*y(3)*y(4)-4*x(3)*y(1)*y(3)+2*x(3)^2*y(4)+120*x(3)*y(3)*y(4)-192*x(3)*y(1)+14*x(3)*y(3)-120*y(1)*y(3)+60*x(3)*y(4)+672*x(3)-60*y(1)+420*y(3)+210,114*x(3)*y(4)-72*y(3)*y(4)-36*y(4),-133*x(3)*y(3)^2+114*x(3)*y(3)+42*y(3)^2-15*y(3)-18,-84*x(3)*y(3)^2*y(4)+72*y(3)^2*y(4)-36*x(3)*y(4)+36*y(3)*y(4),133*x(3)^2*y(3)-156*x(3)*y(3)-21*x(3)+36*y(3)+18,-684*x(3)*y(4)+432*y(3)*y(4)+216*y(4),14*x(3)*y(3)^2+660*x(3)*y(3)+420*y(3)^2-576*x(3)-150*y(3)-180,14*x(3)^2*y(3)*y(4)-12*x(3)^2*y(4)+840*x(3)*y(3)*y(4)-150*x(3)*y(4)-360*y(3)*y(4)-180*y(4),-14*x(3)^2*y(3)-672*x(3)^2-408*x(3)*y(3)+366*x(3)+360*y(3)+180,12*x(3)*y(3)*y(4)-432*y(3)^2*y(4)+672*y(1)*y(3)+6*x(3)*y(4)+144*y(3)*y(4)-576*y(1)-2352*y(3)+180*y(4)+2016,-14*x(3)*y(3)^3+5*x(3)*y(3)^2-420*y(3)^3+6*x(3)*y(3)-60*y(3)^2+255*y(3)+90,-14*x(3)*y(1)*y(3)^2+12*x(3)*y(1)*y(3)+49*x(3)*y(3)^2-420*y(1)*y(3)^2-42*x(3)*y(3)+150*y(1)*y(3)+1470*y(3)^2+180*y(1)-525*y(3)-630,14*x(3)^2*y(3)^2+7*x(3)^2*y(3)+408*x(3)*y(3)^2+414*x(3)*y(3)-360*y(3)^2+105*x(3)-360*y(3)-90,-24*y(1)*y(3)*y(4)^2+42*y(3)*y(4)^2,-24*y(1)*y(3)^2*y(4)-12*y(1)*y(3)*y(4)+42*y(3)^2*y(4)-36*y(3)*y(4),-36*y(3)*y(4)^2,12*x(3)*y(1)*y(4)+36*x(3)*y(4)-18*y(4),4*x(3)*y(1)*y(4)^2+392*x(3)*y(4)^2+120*y(1)*y(4)^2-252*y(3)*y(4)^2-336*y(4)^2,120*y(1)*y(3)*y(4)-252*y(3)^2*y(4)+60*y(1)*y(4)-456*y(3)*y(4)+120*y(4),-252*x(3)*y(3)*y(4)^2-120*x(3)*y(4)^2+180*y(4)^2,4*x(3)^2*y(1)*y(4)+392*x(3)^2*y(4)+120*x(3)*y(1)*y(4)-216*x(3)*y(4)-180*y(4),-4*y(1)^2*y(3)*y(4)+252*y(3)^2*y(4)^2-378*y(1)*y(3)*y(4)+126*y(3)*y(4)^2+1372*y(3)*y(4),252*y(3)^3*y(4)+246*y(3)^2*y(4)+60*y(3)*y(4),252*y(1)*y(3)^2*y(4)+120*y(1)*y(3)*y(4)-882*y(3)^2*y(4)-420*y(3)*y(4),-4*x(3)*y(1)^2*y(3)-378*x(3)*y(1)*y(3)-120*y(1)^2*y(3)-120*x(3)*y(3)*y(4)-60*y(1)^2+1372*x(3)*y(3)+756*y(1)*y(3)-60*x(3)*y(4)+180*y(3)*y(4)+90*y(1)-1176*y(3)+90*y(4)+420,-12*x(3)*y(1)*y(4)+432*y(1)*y(3)*y(4)-1176*x(3)*y(4)-360*y(1)*y(4)+1008*y(4),14*x(3)*y(1)*y(3)^2-12*x(3)*y(1)*y(3)+1372*x(3)*y(3)^2+420*y(1)*y(3)^2-1176*x(3)*y(3)-150*y(1)*y(3)-1176*y(3)^2-180*y(1)+1428*y(3)-360,882*x(3)*y(3)^2*y(4)-756*y(3)^2*y(4)+360*x(3)*y(4)+270*y(3)*y(4)-540*y(4),-14*x(3)^2*y(1)*y(3)-1372*x(3)^2*y(3)-408*x(3)*y(1)*y(3)-210*x(3)*y(1)+2352*x(3)*y(3)+360*y(1)*y(3)-420*x(3)+180*y(1)-1008*y(3)+360,-12*x(3)*y(3)*y(4)^2-19*x(3)*y(1)*y(4)+6*y(1)*y(4),-12*x(3)*y(3)^2*y(4)-19*x(3)*y(1)*y(3)-6*x(3)*y(3)*y(4)+6*y(1)*y(3)+3*y(1),6*x(3)*y(1)*y(4),6*x(3)^2*y(4),2*x(3)^2*y(4)^2+2*x(3)*y(1)*y(4)+60*x(3)*y(4)^2+60*y(1)*y(4),2*x(3)*y(1)*y(3)+60*x(3)*y(3)*y(4)+96*x(3)*y(1)+60*y(1)*y(3)+30*x(3)*y(4)+30*y(1),2*x(3)^2*y(1)*y(4)+60*x(3)*y(1)*y(4),2*x(3)^3*y(4)+60*x(3)^2*y(4),-4*x(3)*y(1)*y(3)*y(4)-x(3)*y(1)*y(4)+7*x(3)*y(3)*y(4)-60*y(1)*y(3)*y(4)+96*y(1)^2-30*y(1)*y(4)-336*y(1),-2*x(3)*y(1)*y(3)^2-x(3)*y(1)*y(3)-60*y(1)*y(3)^2-60*y(1)*y(3)-15*y(1),-2*x(3)*y(1)^2*y(3)+7*x(3)*y(1)*y(3)-60*y(1)^2*y(3)-30*y(1)^2+210*y(1)*y(3)+105*y(1),-2*x(3)^2*y(1)*y(3)+7*x(3)^2*y(3)-60*x(3)*y(1)*y(3)-30*x(3)*y(1)+210*x(3)*y(3)+105*x(3),-6*x(3)^2*y(4)+216*x(3)*y(3)*y(4)+336*x(3)*y(1)-180*x(3)*y(4)-288*y(1),7*x(3)^2*y(3)^2-6*x(3)^2*y(3)+210*x(3)*y(3)^2-75*x(3)*y(3)-90*x(3),-7*x(3)^2*y(1)*y(3)-204*x(3)*y(1)*y(3)-105*x(3)*y(1)+180*y(1)*y(3)+90*y(1),-7*x(3)^3*y(3)-204*x(3)^2*y(3)-105*x(3)^2+180*x(3)*y(3)+90*x(3),-2*x(3)*y(1)^2*y(4)-126*x(3)*y(3)*y(4)^2-196*x(3)*y(1)*y(4)-60*y(1)^2*y(4)+168*y(1)*y(4),-2*x(3)*y(1)^2*y(3)-126*x(3)*y(3)^2*y(4)-196*x(3)*y(1)*y(3)-60*y(1)^2*y(3)-60*x(3)*y(3)*y(4)-30*y(1)^2+168*y(1)*y(3)-60*y(1),60*x(3)*y(1)*y(4)-90*y(1)*y(4),60*x(3)^2*y(4)-90*x(3)*y(4);
ideal J  = std(I);




//Github Adi #20
ring rng = (integer),(xw,xq,xk),(lp(2),lp(1),C);
ideal I = -4*xk+10;
ideal J = -7*xw+4*xk,-13;
idealsEqual( intersect(I,J) , intersect(std(I),std(J) ) );







//Github Adi #42
ring rng = (integer),(x,y,z),(dp(1),dp(2),C);
intvec op = 100663296,16787537;
 option() ;
 option(set, op) ;
int trial = 0;
system("random", 1310165262);
ideal I = 20*x*z+7*y^2;
ideal J = 6*x*y+20*z+6,-5*x-16*y-11,8*x*y+2*y^2;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);
       ideal ggJ =  std(gJ);
std(reduce (I,gI )  );
std(reduce (J,gJ )  );
size(gJ)== size(ggJ );
   




//Github Adi #38
  ring rng =  (integer),(x(1),x(3),x(4),x(5)),(dp(4),C);
ideal Q = x(4)^2-x(3)*x(5),
x(3)*x(4)-x(5),
x(3)^2-x(4),
x(1)^2-121*x(5)^2-11*x(5)-1;

Q = std(Q);
Q;
qring qr = Q;

 ideal a = x(5)-2;
 ideal j = 6,x(5)-2,x(4)+2,x(3)-2,x(1)+3;
 ideal aJJ = quotient(a*j,j); // ?
 aJJ;
 std(aJJ);
 aJJ;

option(redSB);

//segfaults


//# segfaults

//ok mit neue posinL11Ring

ring rng = (integer),(x(1),x(2),x(3)),(ls(3),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 96;
system("random", 970755877);
ideal I = -3*x(1)-10*x(1)*x(3);
ideal J = -9*x(2)+9*x(1)*x(2),-3*x(2)*x(3)^2+10*x(1)*x(3)^2+10*x(1)^2*x(2);
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);
       ideal ggJ =  std(gJ);


//ok now
ring rng = (integer),(x(1),x(2)),(ls(2),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 4;
system("random", 960625435);
ideal I = -41*x(1)-10*x(1)^3*x(2),-22*x(2)^2-12*x(1)^3;
ideal J = 14,35*x(1)*x(2)+12*x(1)*x(2)^3;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);

//ok now

ring rng = (integer),(x(1),x(2)),(ls(2),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 29;
system("random", 550741380);
ideal I = -22-24*x(1)^3,4*x(1)*x(2)^2-19*x(1)^2*x(2);
ideal J = 16*x(1)*x(2),12-31*x(1)-43*x(1)*x(2);
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);

//in the new posinL11Ring works smooth, in the opther one takes forever

ring rng = (integer),(x(1),x(2)),(ls(2),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 15;
system("random", 1976068534);
ideal I = -11*x(2),3*x(2)^2+8*x(1)*x(2)+3*x(1)*x(2)^2+12*x(1)^3,8*x(1)*x(2)^2-15*x(1)^3;
ideal J = -2*x(1)-11*x(1)^2+10*x(1)^2*x(2),-13*x(1)*x(2)-10*x(1)^3;
       ideal gI =  std(I);

//ok now

ring rng = (integer),(x(1),x(2)),(ls(2),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 68;
system("random", 1702067426);
ideal I = -10,15*x(1)*x(2)+8*x(1)*x(2)^2;
ideal J = 2*x(1)^2*x(2),-3+2*x(1)*x(2);
       ideal gI =  std(I);


//ok now

ring rng = (integer),(x(1)),(ls(1),C);
short = 0 ;
minpoly = 0;
intvec op = 67108864,16787537;
 option(set, op) ;
 option() ;
 // option() ;//options: intStrategy redefine loadLib usage prompt warn
int trial = 65;
system("random", 907801360);
ideal I = -12+2*x(1)^2;
ideal J = -6*x(1)^2+11*x(1)^4,-15;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
       ideal gJ =  std(J);



//Github Adi #47

ring R = integer,x,dp;
reduce(x,std(2*x));

ring S = integer,x,ls;
reduce(x,std(2*x));



//Github Adi #46

ring rng = integer,x,ds;
short = 0 ;
ideal J = -7, -3-15*x^2, -6+18*x-x^2;
ideal gJ =  std(J);

//Github Adi #49

ring rng = (integer),(x,y,z),(dp(3),C);
ideal Q = x,yz2+5;
qring QR = std(Q);
poly a = z;
ideal J = 5,z,x;
ideal aJJ =  quotient( a*J, J );
aJJ;

//Github Adi #50

ring rng = (integer),(x(1)),(lp(1),C);
ideal I = 4*x(1)^3+35*x(1)^2+24*x(1),45*x(1),35;
ideal J = 18*x(1)^3+43*x(1)^2,-7*x(1)-10,-12*x(1)^2-20*x(1)+13;
ideal I_J =  intersect(I,J);
size(I_J);

//Github Adi #21

ring r = integer,(a,d,g,h,i,j),ws(-1,-1,-1,-1,-1,-1);
ideal inI= gh+2i, dh+j, d+2g+aj, d+2g+ai;
ideal g= std(inI);
/// 
ring rng = (integer),(x,y,z),(ws(-1,-1,-1),C);
ideal I  = 6yz-6,6xy-6yz-8y;
ideal gI  =std(I);
///
ring rng = (integer),(x,y,z),(ws(-1,-1,-1),C);
ideal I  = -10x+15y,4y-7;
ideal gI  =std(I);
///
ring rng = (integer),(x,y,z),(ws(-1,-1,-1),C);
ideal I  = 9x-14y,15z-2;
ideal gI  =std(I);
///
ring rng = (integer),(x,y),(ws(-1,-1),C);
ideal I  = 8x+7,-6x-13y;
ideal gI  =std(I);

// Singular bug #648

ring r=integer,(t,x(1..4)),ws(1,-1,-11,-3,-19);
option(prot);
ideal inJ = 
 3,
 t*x(3)*x(4)+2*t*x(1)*x(2),
 t*x(1)*x(2)^2+2*t^3*x(1)*x(2)*x(3),
 x(1)^2*x(2)*x(3)*x(4)+2*t^2*x(1)^3*x(2)*x(3);
ideal J = 
 x(1)^2*x(2)*x(3)*x(4)-t*x(1)^2*x(2)^3+5*t*x(1)^2*x(2)*x(3)*x(4)+16*t^3*x(1)*x(2)*x(3)^2*x(4)-2*x(1)^3*x(2)^2-1536*x(1)^3*x(3)*x(4)+32*t^2*x(1)^2*x(3)^2*x(4),
 t*x(1)*x(2)^2+2*x(1)^2*x(2)+2*t^3*x(1)*x(2)*x(3)-192*x(1)^3+4*t^2*x(1)^2*x(3),
 t*x(3)*x(4)-3*t^2*x(3)*x(4)-t*x(1)*x(2)-2*x(1)^2,
 3-t;
reduce(inJ,J);

//Github Adi #48

ring rng = integer,x,ds;
ideal I = -8*x+2*x^2, -16+9*x^2-x^3;
ideal gI =  std(I);
gI;
std(gI);

//Github Adi #43

LIB "primdec.lib";
ring rng = integer,(x),lp;
short = 0 ;
ideal J = -10*x^2-9*x,-8*x^2-4;
       ideal gJ =  std(J);
       ideal ggJ =  std(gJ);
ASSUME(0, 0== size( std(reduce (J,gJ ) ))  );
ASSUME(0, idealsEqual(gJ,ggJ ));
gJ;
ggJ;

ring rng = integer,x,lp;
short = 0 ;
option(noredSB) ;
option(noredTail) ;
ideal I   = -8*x^3+7*x^2-7*x, 8*x^2+10*x-2;
ideal gI  =  std(I);
ideal ggI =  std(gI);
reduce (I,gI ); // <>0 !!
gI;
ggI;

LIB("primdec.lib");
ring rng = integer,x,lp;
short = 0 ;
ideal I = 8*x^3-4,-10*x^3+9*x;
       ideal gI =  std(I);
       ideal ggI =  std(gI);
ASSUME(0, 0== size( std(reduce (I,gI ) ))  );
ASSUME(0, idealsEqual(gI,ggI ));
size(gI)== size(ggI) ;
gI;
ggI;




 
       
tst_status(1);$;      

