//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/crypto/encoding/X509RsaPublicKey.java
//

#ifndef _BCX509RsaPublicKey_H_
#define _BCX509RsaPublicKey_H_

@class IOSByteArray;
@class JavaMathBigInteger;

#include "J2ObjC_header.h"

@interface BCX509RsaPublicKey : NSObject {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (JavaMathBigInteger *)getModulus;

- (JavaMathBigInteger *)getExponent;

- (IOSByteArray *)serialize;

@end

J2OBJC_EMPTY_STATIC_INIT(BCX509RsaPublicKey)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *BCX509RsaPublicKey_ALGO_TYPE_;
J2OBJC_STATIC_FIELD_GETTER(BCX509RsaPublicKey, ALGO_TYPE_, NSString *)
CF_EXTERN_C_END

typedef BCX509RsaPublicKey ImActorModelCryptoEncodingX509RsaPublicKey;

J2OBJC_TYPE_LITERAL_HEADER(BCX509RsaPublicKey)

#endif // _BCX509RsaPublicKey_H_