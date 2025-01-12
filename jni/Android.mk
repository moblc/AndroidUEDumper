# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# 模块名称 (编译输出的可执行文件名称)
LOCAL_MODULE := UE5Dumper

# 需要编译的源文件列表
LOCAL_SRC_FILES := \
    dumper.cpp \
    engine.cpp \
    file.cpp \
    generic.cpp \
    main.cpp \
    Mem.cpp

# 包含头文件所在的路径
LOCAL_C_INCLUDES := $(LOCAL_PATH)

# 设置编译选项 (指定 C++17 标准并启用调试信息)
LOCAL_CPPFLAGS := -std=c++17 -g
LOCAL_CPP_FEATURES := exceptions
# 声明这是一个可执行文件 (如需生成动态库/静态库，请使用相应宏)
include $(BUILD_EXECUTABLE)