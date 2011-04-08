LIB"tst.lib";
tst_init();
proc reduceTail(def p,def I) // poly,ideal or vector,module
{
   def q=lead(p);
   p=p-q;
   while(p!=0)
   {
     p=reduce(p,I);
     q=q+lead(p);
     p=p-lead(p);
   }
   return(q);
}

proc completeReduce(def I) // ideal or module
{
  int i;
  for(i=1;i<=ncols(I);i++)
  {
    I[i]=reduceTail(I[i],I);
    attrib(I,"isSB",1);
  }
  return(I);
}

ring r = (integer), (a, b, c), dp;
ideal I = 975020030*a^5*b,130350797*b*c^9,209617295*a^5*b^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c), dp;
ideal I = 919957887*b^3*c^3+1040073502*b^6*c^3+54171906*a^2*b^4*c+975185290*a^4*c^5,996952107*a^4*b^3*c,188142482*a*b^8;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c), dp;
ideal I = 592873613*a*b^6*c^3+78703623*a^3*b*c,809532164*c^8,1029849633*c^4+441271107*b^8*c;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 565338915*b^7*c^3,368594882*b^6*c^3+560418823*a^2*b^6*c^2,748597973*a^3*d^7,104917761*a*b*c^4*d^4+1022994031*a^2*b*c^4;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 647056807*a*c^7*d^2+868942236*a^2*d^5,57354634*b*c^5*d^2,391985936*b*c^2+965185180*b^6*d^3,738558466*b*c^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 235562384*b^3*c*d+627900140*b^4+899154092*a*c^8*d+999144285*a*b*c^2*d^5+1029227246*a^2*b*c^3*d^2+354578961*a^3*b*c^3*d^3+744827323*a^3*b*c^5*d,346428874*a^2*b^5*c^2*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 750566357*b^2*c^3*d^5+392310907*a^4*b^4*d,231589169*a^9*b,230438270*a*c^6*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 3*b*e*f^3+3*b*e^2*g,5*c*e^3*g,2*b^4*c;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 8*a*c*d^2+2*a^3*c^2,5*d*e^3*g+4*a*b*d+5*a*b*c^3+4*a^2*g^3,2*d*f^3+2*a*b*c*f;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 8*b^3*c*f+1*a*c*e*f,9*c^2*e*f^2,10*b*c*e^2,1*a^2*d*f;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 2*a*b^2*e^2,2*c^2*f*g+5*a*b^2*g^2,10*e*f^2*g^2,3*d*f^2*g;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 3*b*e^3+8*a*d^2*e^2,2*e*g^3+8*a*d*f*g^2,3*c*d^2*f^2,9*a*b^3,3*e^2*f^2*g+9*a*e*g^2+9*a*b*d^2*f;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 7*a*c*d*e+1*a^4*d,5*c*e*f+3*b*e*g,6*d^4*e+4*c*g^4+7*c*d*e*g+4*a^2*b*d*e,10*a*c^2*f*g,7*b*c^2*f+5*a*g^2+2*a*c*d*g^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 10*b^2*f^2,5*c*f^2*g+3*a*c*d^2,7*d*e*g^3,10*c^2*d*g+2*b*e*f^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 5*b*e^2*g^2+4*b*d*f^3+6*b^2,8*b^2*d*g^2,2*a*d*f,7*a^3*d*f;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 2*b*e^3*f+1*b*c*e^3,8*a*g,5*b*e^3*f+7*a*b*d*f*g,8*d*g^2+8*b*d^2*e^2+7*b^2*d^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 7*f*g^4+10*b*f*g+1*a*b*e^2*g,1*b^2*e^2+7*a*f*g,10*a^2*f*g,2*d^2*f*g^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d, e, f, g), dp;
ideal I = 5*b*d*f*g+4*b*c*f*g^2+2*a*c*d^3,8*b^2*c*d^2,3*d^3*e*g+8*c^3*f*g+1*a^2*b*e*f,8*b^2*c*e*g;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 243621979*b^3*c*d^4+58301195*a^2+759864976*a^4+496498564*a^5*b^3,372700528*a*b*c;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 636927036*b^4*c*d^4+522282287*a*b*c^2*d^6+657463692*a^3*c^3*d^2+908370043*a^5*c^5,772837741*b^10+406707184*a^2*b^2*c*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 875037397*a*c^4*d^5+104965520*a*b*c^5*d^2+969860947*a^6*d+896050360*a^7*b*c^2,677662692*a*b*c^8+12621727*a^3*c^4*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 694429337*b^5*c*d^2+299365515*a^6*b^3*d,253059870*b^4*c^3*d^3+86139497*b^5*c*d^3+912984172*a*b*c^4*d^3+283177110*a*b^5*d^2+147115232*a^2*b*c^2*d^3+986174428*a^3*b*c*d^4+551662762*a^3*b^2*c*d+941387321*a^4*b*c^4+585900009*a^5*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 85657346*a*c^7*d^2+596164969*a*b^3*c+732122449*a^5*b^3,947071317*c^7*d^2+762165659*b^5*c^4*d+368521444*a*d^4+170051837*a^4*b^4*c*d+296250685*a^6*b*d^3;
ideal G = std(I);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 949293079*a^4*b^2*c^3+322346988*a^6*b^2*c,409562551*b*c^7*d+28050140*a^6*c^2,642750650*b^3*d^5,1048176806*b^3*c^2*d^5,1027180599*a^4*b*c^2,777536543*a*d^5+567725974*a^2*c^2*d^4,692937004*d^2,385209837*a*b^2*d^6;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 52035241*a^8*b*c,492958420*c^5,931778167*a*b^2*c^5*d,803207417*b^5*c^2,862788640*a^3*b^3*c^2,990439484*a^3*b^5*c^2,502362581*b*c*d^3,544410998*a^3*b*c^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 120692688*b^5,186935102*a^2*b^2*d^6+153862090*a^5*c^5,401707962*b*c^4,675587287*a*b^2*d^7,347852240*b^8*c,78452837*a*c*d^5+132803552*a*c^4*d^2,242781194*a^2*b*c^3,510613239*a^4*b^3*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 1061683219*a*c*d,1003279025*a^4*b^3*c^2*d,823457236*a^3*b*c*d^3+142549807*a^4*b*c*d^4+583750899*a^5*b^2*c*d^2,550623875*a^3*c^4*d^3,999318505*a*c^4*d^3+726820016*a^2*b^3,959138422*a^3*b^2*c^4,227756980*a*d^7,624617421*a^5*b*c^4;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 40292610*a*b^3*c*d^4,482735762*a*b^4*c^4+290271447*a*b^4*c^5,1055446125*a^6*c*d,607207249*a^5*b,798340625*a^2*b*c^5*d,592675151*a*b^3*d^3+925764187*a^5*b^4*c,530371804*a^3*b^4*d^2,435905406*a^4*b*c*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 6*c^2+4*c^2*d^4+8*b^4*d,5*b*c*d,1*b,9*a^3*b*c,6*a*b*c^6*d^2+5*a^2*b*c^2,8*a*c+6*a^2*b^3*c^5,4*a^6*c,10*a*c^5*d^2+2*a^8*b*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 598612906493505*a^2*b*d^5+470133892691222*a^3*b^4*d^3,907700056628101*b*d^9+274169795969912*b^2*c*d^5,877308473144711*b*c^6*d^3+582878759663072*a*b*c^3*d^5,604009371631348*b*c*d^2+971320442213273*a*b^2*c^5,839821356509807*a^5*b*d,844184291415725*a^4*c*d^4,274897851939685*a^2*b^7*d,518789859899143*b*c^3*d+523416047124138*a^3*d^3+308975256731775*a^5*c^3;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 674312638689479*b^2*c^3*d^3+936151350608123*a^3*c^4*d,970355660932718*a^3*c^6*d+641520437313777*a^3*b*c^2*d+852212271500679*a^6*b,466711614781990*a^3*b*d,635273771332769*a^2*c^3*d,271618365065097*b^2*d^4+573745816184952*a*b^3*c^6,183824243889717*a*b*c^5,365239289518355*a*c^5+871131835180416*a^2*c^2*d+156939693913435*a^3*b*c^3*d^3+248159236923660*a^3*b^2*c^2*d^3,436224105221864*a^3*c^2*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 553762280191311*a^7*c^3,872465152878197*a*b*d^6+377192393930794*a*b^4*d,92478774364016*a*b*c^2*d^5,91467018080385*c^7*d+744667305819800*a*b^3*d^4+674016328890913*a^3*c^2*d^4+252594248813157*a^5*b^3*c,606612890650914*a^3*b,3281262728072*a*b*c^6*d^2,47268341009260*b^3*d^7,786129724726394*b^6*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 418611806641021*a*b^3*c^2*d+811049113914431*a*b^3*c^3*d^3,893887769572765*c^8*d+226937752954719*a^3*b*c*d^4,483572981439517*a^4*c^5,796461860432047*b^3*d^6+153812029330306*a*c*d^6,603308632963901*b*c^3*d^4+694115641377968*a^4*b*c*d^3,548148941599747*a^6,190227384160968*a*b^5*d^2,837227234720520*a*b*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 777517606518848*b*c^7*d+707829497158257*b^7*d+809030040564123*b^8*d+641682289396513*a^6*b*c,95991756875128*a*b*c^7*d+336036190388253*a^2*b^2*c^2*d^4,756713577265928*a^4*c*d^5,625068745501665*a^7*b^2,6503271821993*b^4*c^3*d,587367685407805*b^2*c^2*d+971420526765941*a^8*b*c,925895570392552*a*c^3*d,822065363758553*a^2*c*d^2+307920000266914*a^2*b*d^6;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 575674124233264*c^6*d^4,910136377461835*a^5*b^2*c*d,254580515324195*b^2*c^6*d^2,734422519417914*a^4*d^3+642926798465818*a^4*b^2*c*d^3+467709203587096*a^5*b*c*d^3,784901495499511*b^2*c^8+898202515487512*a^2*b*c*d^5,573493478366202*a*b^8,454910022226686*a*b^6*c^3,604251297812127*b^3*c^6*d+414468903458801*b^8+518615471666140*a*b^3*c*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 145140008772389*a^3*b*c^2*d^4,49429093596195*a^2*b^2*c^5,932851809720439*a*b*c+394624956529235*a^2*b^4*d^2,324448217663106*b^2*d^5,330855258334436*b*c*d^3,84202669268884*a^3*c^3*d^3+737152880328660*a^3*b^6,462003901433894*a^3*c*d^4,57772006102549*a*b*c^2*d^6+172133351240731*a^3*b*c*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 913000488804358*a*b^5*d,325593143277732*a*b*c^4*d^2,301584777452256*a^4*b*d^5+87253745045616*a^4*b*c+183967341891271*a^5*c^4,546135807159085*a^6*b^2*d^2,88932236851609*a^2*b*c^2*d^2,30869108947998*a*c^3*d^6,560475339355634*a^2*c^3*d^4,616979665624476*b*c^4*d^3+951988078091404*a*b^2*c^3*d^4+900116198311569*a^7*b*c^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 423933397084505*a^2*b^4*c^3,399208617574609*b^2*c^7,526457577436736*b^4*d^3,62295450590372*a^3*c^4,977042256137232*a^3*c^2*d+412182777338277*a^3*c^2*d^3,3847330833746*a*b^2*d^6+957444543980424*a^2*b^3*c^4,925175992043336*c^4*d+159780582343825*b^5*c^4*d,761609128551239*a^2*c^3*d^2;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 47008631616*a^2*b^3*c^5+608957803535268*a^4*b*c*d^2,743383972650833*a*b^3*d^3,921567420965340*a^2*b*c*d^2,799701898068763*b^3*d^2+938643473595108*b^3*c^4,943847834152455*a^5*b*d^2,404591416108469*a^2*b^2*d^6+679336242276639*a^4*b*c^2*d,876374606847131*b^4*c^2+956861774227212*a*b^3*c^5,438399139224886*b^6*c+581160255363795*a^4*b*d^4;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 98547401888640*a*b^6*c*d,190259036717066*a^6*d^3,702405376880056*b*c^8*d+291163472601435*a*b^3*c*d^4+873328982535690*a^3*c,925400397452021*a^4*b^4,573389837439538*c^6*d^2,521295483998901*a^7*b*d^2,930988868347889*a*b*c^2*d^2,770949860985293*a^4*b*c*d^4;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r = (integer), (a, b, c, d), dp;
ideal I = 571236477558863*a^5*b^3*c*d,910715302974676*a^3*c^3*d^2,272338298502597*b^4*c*d,697580440524824*c^5*d^4+195462918419611*a^3*b^5,452472488011098*a^3*b^2*d,321685627769340*d^9+501655837547951*a*c^3,862690638699056*a^2*b^2*c^4,519412369993161*b^4*d;
ideal G = std(I);
lead(G);completeReduce(G);
kill r;
ring r=integer,x,dp;
module m=[2,4],[3,6];
option(prot);
m=std(m);
lead(m);completeReduce(m);
kill r;

tst_status(1),$
