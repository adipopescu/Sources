  ring r  = 31991,(t,x,y,z,w),ls;
  ideal M = t2x2+tx2y+x2yz,t2y2+ty2z+y2zw,
            t2z2+tz2w+xz2w,t2w2+txw2+xyw2;
  list L  = nres(M,0);
  size(L);
LIB "tst.lib";tst_status(1);$
