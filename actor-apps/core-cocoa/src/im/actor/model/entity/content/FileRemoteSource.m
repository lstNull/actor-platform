//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/FileRemoteSource.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "im/actor/model/entity/content/FileSource.h"

@interface AMFileRemoteSource () {
 @public
  AMFileReference *fileReference_;
}

@end

J2OBJC_FIELD_SETTER(AMFileRemoteSource, fileReference_, AMFileReference *)

@implementation AMFileRemoteSource

- (instancetype)initWithAMFileReference:(AMFileReference *)fileReference {
  AMFileRemoteSource_initWithAMFileReference_(self, fileReference);
  return self;
}

- (AMFileReference *)getFileReference {
  return fileReference_;
}

- (jint)getSize {
  return [((AMFileReference *) nil_chk(fileReference_)) getFileSize];
}

- (NSString *)getFileName {
  return [((AMFileReference *) nil_chk(fileReference_)) getFileName];
}

@end

void AMFileRemoteSource_initWithAMFileReference_(AMFileRemoteSource *self, AMFileReference *fileReference) {
  (void) AMFileSource_init(self);
  self->fileReference_ = fileReference;
}

AMFileRemoteSource *new_AMFileRemoteSource_initWithAMFileReference_(AMFileReference *fileReference) {
  AMFileRemoteSource *self = [AMFileRemoteSource alloc];
  AMFileRemoteSource_initWithAMFileReference_(self, fileReference);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileRemoteSource)
