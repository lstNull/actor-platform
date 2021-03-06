//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/engines/RSACoreEngine.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/DataLengthException.h"
#include "org/bouncycastle/crypto/engines/RSACoreEngine.h"
#include "org/bouncycastle/crypto/params/ParametersWithRandom.h"
#include "org/bouncycastle/crypto/params/RSAKeyParameters.h"
#include "org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters.h"

@interface OrgBouncycastleCryptoEnginesRSACoreEngine () {
 @public
  OrgBouncycastleCryptoParamsRSAKeyParameters *key_;
  jboolean forEncryption_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoEnginesRSACoreEngine, key_, OrgBouncycastleCryptoParamsRSAKeyParameters *)

@implementation OrgBouncycastleCryptoEnginesRSACoreEngine

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoParamsParametersWithRandom:(OrgBouncycastleCryptoParamsParametersWithRandom *)param {
  key_ = (OrgBouncycastleCryptoParamsRSAKeyParameters *) check_class_cast([((OrgBouncycastleCryptoParamsParametersWithRandom *) nil_chk(param)) getParameters], [OrgBouncycastleCryptoParamsRSAKeyParameters class]);
  self->forEncryption_ = forEncryption;
}

- (jint)getInputBlockSize {
  jint bitSize = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsRSAKeyParameters *) nil_chk(key_)) getModulus])) bitLength];
  if (forEncryption_) {
    return (bitSize + 7) / 8 - 1;
  }
  else {
    return (bitSize + 7) / 8;
  }
}

- (jint)getOutputBlockSize {
  jint bitSize = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsRSAKeyParameters *) nil_chk(key_)) getModulus])) bitLength];
  if (forEncryption_) {
    return (bitSize + 7) / 8;
  }
  else {
    return (bitSize + 7) / 8 - 1;
  }
}

- (JavaMathBigInteger *)convertInputWithByteArray:(IOSByteArray *)inArg
                                          withInt:(jint)inOff
                                          withInt:(jint)inLen {
  if (inLen > ([self getInputBlockSize] + 1)) {
    @throw new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(@"input too large for RSA cipher.");
  }
  else if (inLen == ([self getInputBlockSize] + 1) && !forEncryption_) {
    @throw new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(@"input too large for RSA cipher.");
  }
  IOSByteArray *block;
  if (inOff != 0 || inLen != ((IOSByteArray *) nil_chk(inArg))->size_) {
    block = [IOSByteArray newArrayWithLength:inLen];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, block, 0, inLen);
  }
  else {
    block = inArg;
  }
  JavaMathBigInteger *res = new_JavaMathBigInteger_initWithInt_withByteArray_(1, block);
  if ([res compareToWithId:[((OrgBouncycastleCryptoParamsRSAKeyParameters *) nil_chk(key_)) getModulus]] >= 0) {
    @throw new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(@"input too large for RSA cipher.");
  }
  return res;
}

- (IOSByteArray *)convertOutputWithJavaMathBigInteger:(JavaMathBigInteger *)result {
  IOSByteArray *output = [((JavaMathBigInteger *) nil_chk(result)) toByteArray];
  if (forEncryption_) {
    if (IOSByteArray_Get(nil_chk(output), 0) == 0 && output->size_ > [self getOutputBlockSize]) {
      IOSByteArray *tmp = [IOSByteArray newArrayWithLength:output->size_ - 1];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output, 1, tmp, 0, tmp->size_);
      return tmp;
    }
    if (output->size_ < [self getOutputBlockSize]) {
      IOSByteArray *tmp = [IOSByteArray newArrayWithLength:[self getOutputBlockSize]];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output, 0, tmp, tmp->size_ - output->size_, output->size_);
      return tmp;
    }
  }
  else {
    if (IOSByteArray_Get(nil_chk(output), 0) == 0) {
      IOSByteArray *tmp = [IOSByteArray newArrayWithLength:output->size_ - 1];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output, 1, tmp, 0, tmp->size_);
      return tmp;
    }
  }
  return output;
}

- (JavaMathBigInteger *)processBlockWithJavaMathBigInteger:(JavaMathBigInteger *)input {
  if ([key_ isKindOfClass:[OrgBouncycastleCryptoParamsRSAPrivateCrtKeyParameters class]]) {
    OrgBouncycastleCryptoParamsRSAPrivateCrtKeyParameters *crtKey = (OrgBouncycastleCryptoParamsRSAPrivateCrtKeyParameters *) check_class_cast(key_, [OrgBouncycastleCryptoParamsRSAPrivateCrtKeyParameters class]);
    JavaMathBigInteger *p = [((OrgBouncycastleCryptoParamsRSAPrivateCrtKeyParameters *) nil_chk(crtKey)) getP];
    JavaMathBigInteger *q = [crtKey getQ];
    JavaMathBigInteger *dP = [crtKey getDP];
    JavaMathBigInteger *dQ = [crtKey getDQ];
    JavaMathBigInteger *qInv = [crtKey getQInv];
    JavaMathBigInteger *mP, *mQ, *h, *m;
    mP = [((JavaMathBigInteger *) nil_chk(([((JavaMathBigInteger *) nil_chk(input)) remainderWithJavaMathBigInteger:p]))) modPowWithJavaMathBigInteger:dP withJavaMathBigInteger:p];
    mQ = [((JavaMathBigInteger *) nil_chk(([input remainderWithJavaMathBigInteger:q]))) modPowWithJavaMathBigInteger:dQ withJavaMathBigInteger:q];
    h = [((JavaMathBigInteger *) nil_chk(mP)) subtractWithJavaMathBigInteger:mQ];
    h = [((JavaMathBigInteger *) nil_chk(h)) multiplyWithJavaMathBigInteger:qInv];
    h = [((JavaMathBigInteger *) nil_chk(h)) modWithJavaMathBigInteger:p];
    m = [((JavaMathBigInteger *) nil_chk(h)) multiplyWithJavaMathBigInteger:q];
    m = [((JavaMathBigInteger *) nil_chk(m)) addWithJavaMathBigInteger:mQ];
    return m;
  }
  else {
    return [((JavaMathBigInteger *) nil_chk(input)) modPowWithJavaMathBigInteger:[((OrgBouncycastleCryptoParamsRSAKeyParameters *) nil_chk(key_)) getExponent] withJavaMathBigInteger:[key_ getModulus]];
  }
}

- (instancetype)init {
  OrgBouncycastleCryptoEnginesRSACoreEngine_init(self);
  return self;
}

@end

void OrgBouncycastleCryptoEnginesRSACoreEngine_init(OrgBouncycastleCryptoEnginesRSACoreEngine *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleCryptoEnginesRSACoreEngine *new_OrgBouncycastleCryptoEnginesRSACoreEngine_init() {
  OrgBouncycastleCryptoEnginesRSACoreEngine *self = [OrgBouncycastleCryptoEnginesRSACoreEngine alloc];
  OrgBouncycastleCryptoEnginesRSACoreEngine_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoEnginesRSACoreEngine)
