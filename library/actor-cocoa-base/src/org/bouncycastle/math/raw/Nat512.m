//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/raw/Nat512.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/raw/Nat512.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/math/raw/Nat256.h"
#include "org/bouncycastle/math/raw/Nat512.h"


#line 4
@implementation OrgBouncycastleMathRawNat512

+ (void)mulWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathRawNat512_mulWithIntArray_withIntArray_withIntArray_(x, y, zz);
}


#line 25
+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)zz {
  OrgBouncycastleMathRawNat512_squareWithIntArray_withIntArray_(x, zz);
}

- (instancetype)init {
  OrgBouncycastleMathRawNat512_init(self);
  return self;
}

@end


#line 6
void OrgBouncycastleMathRawNat512_mulWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz) {
  OrgBouncycastleMathRawNat512_initialize();
  OrgBouncycastleMathRawNat256_mulWithIntArray_withIntArray_withIntArray_(x, y, zz);
  OrgBouncycastleMathRawNat256_mulWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 8, y, 8, zz, 16);
  
#line 11
  jint c24 = OrgBouncycastleMathRawNat256_addToEachOtherWithIntArray_withInt_withIntArray_withInt_(zz, 8, zz, 16);
  jint c16 = c24 + OrgBouncycastleMathRawNat256_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 0, zz, 8, 0);
  c24 += OrgBouncycastleMathRawNat256_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 24, zz, 16, c16);
  
#line 15
  IOSIntArray *dx = OrgBouncycastleMathRawNat256_create(), *dy = OrgBouncycastleMathRawNat256_create();
  jboolean neg = OrgBouncycastleMathRawNat256_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 8, x, 0, dx, 0) != OrgBouncycastleMathRawNat256_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(y, 8, y, 0, dy, 0);
  
#line 18
  IOSIntArray *tt = OrgBouncycastleMathRawNat256_createExt();
  OrgBouncycastleMathRawNat256_mulWithIntArray_withIntArray_withIntArray_(dx, dy, tt);
  
#line 21
  c24 += neg ? OrgBouncycastleMathRawNat_addToWithInt_withIntArray_withInt_withIntArray_withInt_(16, tt, 0, zz, 8) : OrgBouncycastleMathRawNat_subFromWithInt_withIntArray_withInt_withIntArray_withInt_(16, tt, 0, zz, 8);
  OrgBouncycastleMathRawNat_addWordAtWithInt_withInt_withIntArray_withInt_(32, c24, zz, 24);
}


#line 25
void OrgBouncycastleMathRawNat512_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *zz) {
  OrgBouncycastleMathRawNat512_initialize();
  OrgBouncycastleMathRawNat256_squareWithIntArray_withIntArray_(x, zz);
  OrgBouncycastleMathRawNat256_squareWithIntArray_withInt_withIntArray_withInt_(x, 8, zz, 16);
  
#line 30
  jint c24 = OrgBouncycastleMathRawNat256_addToEachOtherWithIntArray_withInt_withIntArray_withInt_(zz, 8, zz, 16);
  jint c16 = c24 + OrgBouncycastleMathRawNat256_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 0, zz, 8, 0);
  c24 += OrgBouncycastleMathRawNat256_addToWithIntArray_withInt_withIntArray_withInt_withInt_(zz, 24, zz, 16, c16);
  
#line 34
  IOSIntArray *dx = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathRawNat256_diffWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(x, 8, x, 0, dx, 0);
  
#line 37
  IOSIntArray *tt = OrgBouncycastleMathRawNat256_createExt();
  OrgBouncycastleMathRawNat256_squareWithIntArray_withIntArray_(dx, tt);
  
#line 40
  c24 += OrgBouncycastleMathRawNat_subFromWithInt_withIntArray_withInt_withIntArray_withInt_(16, tt, 0, zz, 8);
  OrgBouncycastleMathRawNat_addWordAtWithInt_withInt_withIntArray_withInt_(32, c24, zz, 24);
}

void OrgBouncycastleMathRawNat512_init(OrgBouncycastleMathRawNat512 *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathRawNat512)