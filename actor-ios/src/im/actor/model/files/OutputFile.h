//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/files/OutputFile.java
//

#ifndef _AMOutputFile_H_
#define _AMOutputFile_H_

@class IOSByteArray;

#include "J2ObjC_header.h"

@protocol AMOutputFile < NSObject, JavaObject >

- (jboolean)writeWithOffset:(jint)fileOffset withData:(IOSByteArray *)data withDataOffset:(jint)dataOffset withDataLen:(jint)dataLen;

- (jboolean)close;

@end

J2OBJC_EMPTY_STATIC_INIT(AMOutputFile)

#define ImActorModelFilesOutputFile AMOutputFile

J2OBJC_TYPE_LITERAL_HEADER(AMOutputFile)

#endif // _AMOutputFile_H_