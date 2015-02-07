//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/log/Log.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/log/LogInterface.h"
#include "java/lang/Throwable.h"

@interface AMLog () {
}
@end

@implementation AMLog

id<AMLogInterface> AMLog_log_;

+ (id<AMLogInterface>)getLog {
  return AMLog_getLog();
}

+ (void)setLogWithAMLogInterface:(id<AMLogInterface>)log {
  AMLog_setLogWithAMLogInterface_(log);
}

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_wWithNSString_withNSString_(tag, message);
}

+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable {
  AMLog_eWithNSString_withJavaLangThrowable_(tag, throwable);
}

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_dWithNSString_withNSString_(tag, message);
}

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_vWithNSString_withNSString_(tag, message);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getLog", NULL, "Lim.actor.model.log.LogInterface;", 0x9, NULL },
    { "setLogWithAMLogInterface:", "setLog", "V", 0x9, NULL },
    { "wWithNSString:withNSString:", "w", "V", 0x9, NULL },
    { "eWithNSString:withJavaLangThrowable:", "e", "V", 0x9, NULL },
    { "dWithNSString:withNSString:", "d", "V", 0x9, NULL },
    { "vWithNSString:withNSString:", "v", "V", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "log_", NULL, 0xa, "Lim.actor.model.log.LogInterface;", &AMLog_log_,  },
  };
  static const J2ObjcClassInfo _AMLog = { 1, "Log", "im.actor.model.log", NULL, 0x1, 7, methods, 1, fields, 0, NULL};
  return &_AMLog;
}

@end

id<AMLogInterface> AMLog_getLog() {
  AMLog_init();
  return AMLog_log_;
}

void AMLog_setLogWithAMLogInterface_(id<AMLogInterface> log) {
  AMLog_init();
  JreStrongAssign(&AMLog_log_, nil, log);
}

void AMLog_wWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ wWithNSString:tag withNSString:message];
  }
}

void AMLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ eWithNSString:tag withJavaLangThrowable:throwable];
  }
}

void AMLog_dWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ dWithNSString:tag withNSString:message];
  }
}

void AMLog_vWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_init();
  if (AMLog_log_ != nil) {
    [AMLog_log_ vWithNSString:tag withNSString:message];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMLog)
