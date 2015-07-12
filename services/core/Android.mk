LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := services.core

LOCAL_SRC_FILES += \
    $(call all-java-files-under,java) \
    java/com/android/server/EventLogTags.logtags \
    java/com/android/server/am/EventLogTags.logtags \
	java/com/android/server/FirewallConfigMessages.proto

LOCAL_JAVA_LIBRARIES := android.policy telephony-common

LOCAL_JAVA_LIBRARIES += libprotobuf-java-2.3.0-lite

include $(BUILD_STATIC_JAVA_LIBRARY)
