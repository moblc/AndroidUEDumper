# Application.mk
# 指定目标 ABI 架构，您可以根据需要修改
APP_ABI := arm64-v8a

# 指定 Android API 级别 (与 CMakeLists 中的 21 相对应)
APP_PLATFORM := android-21

# 若需要使用 C++ STL，则可选择 c++_static 或 c++_shared
APP_STL := c++_static

# 指定构建类型 (可选 debug 或 release)
APP_OPTIM := debug
APP_CPPFLAGS += -fexceptions