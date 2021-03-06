//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/digests/GeneralDigest.java
//

#ifndef _OrgBouncycastleCryptoDigestsGeneralDigest_H_
#define _OrgBouncycastleCryptoDigestsGeneralDigest_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/ExtendedDigest.h"
#include "org/bouncycastle/util/Memoable.h"

@class IOSByteArray;

@interface OrgBouncycastleCryptoDigestsGeneralDigest : NSObject < OrgBouncycastleCryptoExtendedDigest, OrgBouncycastleUtilMemoable >

#pragma mark Public

- (void)finish;

- (jint)getByteLength;

- (void)reset;

- (void)updateWithByte:(jbyte)inArg;

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState;

- (instancetype)initWithOrgBouncycastleCryptoDigestsGeneralDigest:(OrgBouncycastleCryptoDigestsGeneralDigest *)t;

- (void)copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:(OrgBouncycastleCryptoDigestsGeneralDigest *)t OBJC_METHOD_FAMILY_NONE;

- (void)populateStateWithByteArray:(IOSByteArray *)state;

- (void)processBlock;

- (void)processLengthWithLong:(jlong)bitLength;

- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoDigestsGeneralDigest)

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsGeneralDigest_init(OrgBouncycastleCryptoDigestsGeneralDigest *self);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(OrgBouncycastleCryptoDigestsGeneralDigest *self, OrgBouncycastleCryptoDigestsGeneralDigest *t);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsGeneralDigest_initWithByteArray_(OrgBouncycastleCryptoDigestsGeneralDigest *self, IOSByteArray *encodedState);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDigestsGeneralDigest)

#endif // _OrgBouncycastleCryptoDigestsGeneralDigest_H_
