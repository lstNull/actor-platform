//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/typed/messages/TypedFutureError.java
//

#ifndef _ComDroidkitActorsTypedMessagesTypedFutureError_H_
#define _ComDroidkitActorsTypedMessagesTypedFutureError_H_

@class JavaLangThrowable;

#include "J2ObjC_header.h"

@interface ComDroidkitActorsTypedMessagesTypedFutureError : NSObject {
}

- (instancetype)initWithInt:(jint)id_
      withJavaLangThrowable:(JavaLangThrowable *)t;

- (jint)getId;

- (JavaLangThrowable *)getT;

@end

J2OBJC_EMPTY_STATIC_INIT(ComDroidkitActorsTypedMessagesTypedFutureError)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsTypedMessagesTypedFutureError)

#endif // _ComDroidkitActorsTypedMessagesTypedFutureError_H_
