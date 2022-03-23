primitive Glfw3


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1794
  Original Name: glfwInit/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1794

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun glfwInit(): I32 =>
    @glfwInit()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1828
  Original Name: glfwTerminate/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1828

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun glfwTerminate(): None =>
    @glfwTerminate()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1860
  Original Name: glfwInitHint/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1860

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwInitHint(hint: I32, value: I32): None =>
    @glfwInitHint(hint, value)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1887
  Original Name: glfwGetVersion/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1887

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetVersion(major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag): None =>
    @glfwGetVersion(major, minor, rev)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1918
  Original Name: glfwGetVersionString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1918

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
*/
  fun glfwGetVersionString(): String =>
    String.from_cstring(@glfwGetVersionString()).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1949
  Original Name: glfwGetError/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1949

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwGetError(description: Pointer[Pointer[U8 val] tag] tag): I32 =>
    @glfwGetError(description)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1995
  Original Name: glfwSetErrorCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1995

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetErrorCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetErrorCallback(callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2024
  Original Name: glfwGetMonitors/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2024

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetMonitors(count: Pointer[I32] tag): Array[NullablePointer[GLFWmonitor]] =>
    @glfwGetMonitors(count)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2048
  Original Name: glfwGetPrimaryMonitor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2048

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
*/
  fun glfwGetPrimaryMonitor(): NullablePointer[GLFWmonitor] =>
    @glfwGetPrimaryMonitor()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2073
  Original Name: glfwGetMonitorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2073

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetMonitorPos(monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetMonitorPos(monitor, xpos, ypos)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2104
  Original Name: glfwGetMonitorWorkarea/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2104

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetMonitorWorkarea(monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2138
  Original Name: glfwGetMonitorPhysicalSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2138

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetMonitorPhysicalSize(monitor: NullablePointer[GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag): None =>
    @glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2170
  Original Name: glfwGetMonitorContentScale/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2170

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(float) size=32]
    [PointerType size=64]->[FundamentalType(float) size=32]
*/
  fun glfwGetMonitorContentScale(monitor: NullablePointer[GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetMonitorContentScale(monitor, xscale, yscale)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2196
  Original Name: glfwGetMonitorName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2196

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetMonitorName(monitor: NullablePointer[GLFWmonitor] tag): String =>
    String.from_cstring(@glfwGetMonitorName(monitor)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2222
  Original Name: glfwSetMonitorUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2222

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun glfwSetMonitorUserPointer(monitor: NullablePointer[GLFWmonitor] tag, pointer: Pointer[None] tag): None =>
    @glfwSetMonitorUserPointer(monitor, pointer)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2246
  Original Name: glfwGetMonitorUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2246

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetMonitorUserPointer(monitor: NullablePointer[GLFWmonitor] tag): Pointer[None] =>
    @glfwGetMonitorUserPointer(monitor)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2276
  Original Name: glfwSetMonitorCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2276

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetMonitorCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetMonitorCallback(callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2309
  Original Name: glfwGetVideoModes/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2309

  Return Value: [PointerType size=64]->[Struct size=192,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetVideoModes(monitor: NullablePointer[GLFWmonitor] tag, count: Pointer[I32] tag): NullablePointer[GLFWvidmode] =>
    @glfwGetVideoModes(monitor, count)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2337
  Original Name: glfwGetVideoMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2337

  Return Value: [PointerType size=64]->[Struct size=192,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetVideoMode(monitor: NullablePointer[GLFWmonitor] tag): NullablePointer[GLFWvidmode] =>
    @glfwGetVideoMode(monitor)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2370
  Original Name: glfwSetGamma/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2370

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(float) size=32]
*/
  fun glfwSetGamma(monitor: NullablePointer[GLFWmonitor] tag, gamma: F32): None =>
    @glfwSetGamma(monitor, gamma)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2400
  Original Name: glfwGetGammaRamp/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2400

  Return Value: [PointerType size=64]->[Struct size=256,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetGammaRamp(monitor: NullablePointer[GLFWmonitor] tag): NullablePointer[GLFWgammaramp] =>
    @glfwGetGammaRamp(monitor)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2441
  Original Name: glfwSetGammaRamp/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2441

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=256,fid: f10]
*/
  fun glfwSetGammaRamp(monitor: NullablePointer[GLFWmonitor] tag, ramp: NullablePointer[GLFWgammaramp] tag): None =>
    @glfwSetGammaRamp(monitor, ramp)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2460
  Original Name: glfwDefaultWindowHints/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun glfwDefaultWindowHints(): None =>
    @glfwDefaultWindowHints()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2495
  Original Name: glfwWindowHint/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2495

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwWindowHint(hint: I32, value: I32): None =>
    @glfwWindowHint(hint, value)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2533
  Original Name: glfwWindowHintString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2533

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwWindowHintString(hint: I32, value: String): None =>
    @glfwWindowHintString(hint, value.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2687
  Original Name: glfwCreateWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2687

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwCreateWindow(width: I32, height: I32, title: String, monitor: NullablePointer[GLFWmonitor] tag = NullablePointer[GLFWmonitor].none(), share: NullablePointer[GLFWwindow] tag = NullablePointer[GLFWwindow].none()): NullablePointer[GLFWwindow] =>
    @glfwCreateWindow(width, height, title.cstring(), monitor, share)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2716
  Original Name: glfwDestroyWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2716

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwDestroyWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwDestroyWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2736
  Original Name: glfwWindowShouldClose/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwWindowShouldClose(window: NullablePointer[GLFWwindow] tag): I32 =>
    @glfwWindowShouldClose(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2758
  Original Name: glfwSetWindowShouldClose/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2758

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowShouldClose(window: NullablePointer[GLFWwindow] tag, value: I32): None =>
    @glfwSetWindowShouldClose(window, value)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2783
  Original Name: glfwSetWindowTitle/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2783

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwSetWindowTitle(window: NullablePointer[GLFWwindow] tag, title: String): None =>
    @glfwSetWindowTitle(window, title.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2830
  Original Name: glfwSetWindowIcon/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2830

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f10]
*/
  fun glfwSetWindowIcon(window: NullablePointer[GLFWwindow] tag, count: I32, images: NullablePointer[GLFWimage] tag): None =>
    @glfwSetWindowIcon(window, count, images)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2862
  Original Name: glfwGetWindowPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2862

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetWindowPos(window: NullablePointer[GLFWwindow] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetWindowPos(window, xpos, ypos)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2897
  Original Name: glfwSetWindowPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2897

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowPos(window: NullablePointer[GLFWwindow] tag, xpos: I32, ypos: I32): None =>
    @glfwSetWindowPos(window, xpos, ypos)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2927
  Original Name: glfwGetWindowSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2927

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetWindowSize(window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetWindowSize(window, width, height)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2970
  Original Name: glfwSetWindowSizeLimits/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2970

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowSizeLimits(window: NullablePointer[GLFWwindow] tag, minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32): None =>
    @glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3013
  Original Name: glfwSetWindowAspectRatio/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3013

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowAspectRatio(window: NullablePointer[GLFWwindow] tag, numer: I32, denom: I32): None =>
    @glfwSetWindowAspectRatio(window, numer, denom)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3054
  Original Name: glfwSetWindowSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3054

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowSize(window: NullablePointer[GLFWwindow] tag, width: I32, height: I32): None =>
    @glfwSetWindowSize(window, width, height)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3083
  Original Name: glfwGetFramebufferSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3083

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetFramebufferSize(window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetFramebufferSize(window, width, height)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3120
  Original Name: glfwGetWindowFrameSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3120

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetWindowFrameSize(window: NullablePointer[GLFWwindow] tag, left: Pointer[I32] tag, top: Pointer[I32] tag, right: Pointer[I32] tag, bottom: Pointer[I32] tag): None =>
    @glfwGetWindowFrameSize(window, left, top, right, bottom)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3153
  Original Name: glfwGetWindowContentScale/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3153

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(float) size=32]
    [PointerType size=64]->[FundamentalType(float) size=32]
*/
  fun glfwGetWindowContentScale(window: NullablePointer[GLFWwindow] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetWindowContentScale(window, xscale, yscale)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3180
  Original Name: glfwGetWindowOpacity/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3180

  Return Value: [FundamentalType(float) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetWindowOpacity(window: NullablePointer[GLFWwindow] tag): F32 =>
    @glfwGetWindowOpacity(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3209
  Original Name: glfwSetWindowOpacity/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3209

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(float) size=32]
*/
  fun glfwSetWindowOpacity(window: NullablePointer[GLFWwindow] tag, opacity: F32): None =>
    @glfwSetWindowOpacity(window, opacity)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3240
  Original Name: glfwIconifyWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3240

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwIconifyWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwIconifyWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3267
  Original Name: glfwRestoreWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3267

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwRestoreWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwRestoreWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3292
  Original Name: glfwMaximizeWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3292

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwMaximizeWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwMaximizeWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3319
  Original Name: glfwShowWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3319

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwShowWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwShowWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3341
  Original Name: glfwHideWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3341

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwHideWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwHideWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3380
  Original Name: glfwFocusWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3380

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwFocusWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwFocusWindow(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3407
  Original Name: glfwRequestWindowAttention/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3407

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwRequestWindowAttention(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwRequestWindowAttention(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3429
  Original Name: glfwGetWindowMonitor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3429

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetWindowMonitor(window: NullablePointer[GLFWwindow] tag): NullablePointer[GLFWmonitor] =>
    @glfwGetWindowMonitor(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3488
  Original Name: glfwSetWindowMonitor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3488

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowMonitor(window: NullablePointer[GLFWwindow] tag, monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32): None =>
    @glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refreshRate)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3522
  Original Name: glfwGetWindowAttrib/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3522

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
  fun glfwGetWindowAttrib(window: NullablePointer[GLFWwindow] tag, attrib: I32): I32 =>
    @glfwGetWindowAttrib(window, attrib)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3559
  Original Name: glfwSetWindowAttrib/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3559

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetWindowAttrib(window: NullablePointer[GLFWwindow] tag, attrib: I32, value: I32): None =>
    @glfwSetWindowAttrib(window, attrib, value)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3638
  Original Name: glfwSetWindowPosCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3638

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowPosCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowPosCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3670
  Original Name: glfwSetWindowSizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3670

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowSizeCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowSizeCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3710
  Original Name: glfwSetWindowCloseCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3710

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowCloseCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowCloseCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3746
  Original Name: glfwSetWindowRefreshCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3746

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowRefreshCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowRefreshCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3781
  Original Name: glfwSetWindowFocusCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3781

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowFocusCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowFocusCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3814
  Original Name: glfwSetWindowIconifyCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3814

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowIconifyCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowIconifyCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3844
  Original Name: glfwSetWindowMaximizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3844

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowMaximizeCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowMaximizeCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3874
  Original Name: glfwSetFramebufferSizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3874

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetFramebufferSizeCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetFramebufferSizeCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3905
  Original Name: glfwSetWindowContentScaleCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3905

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetWindowContentScaleCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetWindowContentScaleCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3943
  Original Name: glfwPollEvents/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3943

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun glfwPollEvents(): None =>
    @glfwPollEvents()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3988
  Original Name: glfwWaitEvents/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun glfwWaitEvents(): None =>
    @glfwWaitEvents()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4037
  Original Name: glfwWaitEventsTimeout/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4037

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun glfwWaitEventsTimeout(timeout: F64): None =>
    @glfwWaitEventsTimeout(timeout)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4057
  Original Name: glfwPostEmptyEvent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4057

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun glfwPostEmptyEvent(): None =>
    @glfwPostEmptyEvent()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4082
  Original Name: glfwGetInputMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4082

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
  fun glfwGetInputMode(window: NullablePointer[GLFWwindow] tag, mode: I32): I32 =>
    @glfwGetInputMode(window, mode)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4144
  Original Name: glfwSetInputMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4144

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwSetInputMode(window: NullablePointer[GLFWwindow] tag, mode: I32, value: I32): None =>
    @glfwSetInputMode(window, mode, value)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4173
  Original Name: glfwRawMouseMotionSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4173

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun glfwRawMouseMotionSupported(): I32 =>
    @glfwRawMouseMotionSupported()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4241
  Original Name: glfwGetKeyName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4241

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwGetKeyName(key: I32, scancode: I32): String =>
    String.from_cstring(@glfwGetKeyName(key, scancode)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4265
  Original Name: glfwGetKeyScancode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4265

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwGetKeyScancode(key: I32): I32 =>
    @glfwGetKeyScancode(key)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4305
  Original Name: glfwGetKey/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4305

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
  fun glfwGetKey(window: NullablePointer[GLFWwindow] tag, key: I32): I32 =>
    @glfwGetKey(window, key)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4334
  Original Name: glfwGetMouseButton/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4334

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
  fun glfwGetMouseButton(window: NullablePointer[GLFWwindow] tag, button: I32): I32 =>
    @glfwGetMouseButton(window, button)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4372
  Original Name: glfwGetCursorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4372

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(double) size=64]
    [PointerType size=64]->[FundamentalType(double) size=64]
*/
  fun glfwGetCursorPos(window: NullablePointer[GLFWwindow] tag, xpos: Pointer[F64] tag, ypos: Pointer[F64] tag): None =>
    @glfwGetCursorPos(window, xpos, ypos)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4412
  Original Name: glfwSetCursorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4412

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(double) size=64]
    [FundamentalType(double) size=64]
*/
  fun glfwSetCursorPos(window: NullablePointer[GLFWwindow] tag, xpos: F64, ypos: F64): None =>
    @glfwSetCursorPos(window, xpos, ypos)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4450
  Original Name: glfwCreateCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4450

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun glfwCreateCursor(image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateCursor(image, xhot, yhot)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4473
  Original Name: glfwCreateStandardCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4473

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwCreateStandardCursor(shape: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateStandardCursor(shape)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4500
  Original Name: glfwDestroyCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4500

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwDestroyCursor(cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwDestroyCursor(cursor)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4527
  Original Name: glfwSetCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4527

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwSetCursor(window: NullablePointer[GLFWwindow] tag, cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwSetCursor(window, cursor)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4577
  Original Name: glfwSetKeyCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4577

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetKeyCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetKeyCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4620
  Original Name: glfwSetCharCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4620

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetCharCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetCharCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4662
  Original Name: glfwSetCharModsCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4662

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetCharModsCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetCharModsCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4699
  Original Name: glfwSetMouseButtonCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4699

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetMouseButtonCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetMouseButtonCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4731
  Original Name: glfwSetCursorPosCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4731

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetCursorPosCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetCursorPosCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4762
  Original Name: glfwSetCursorEnterCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4762

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetCursorEnterCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetCursorEnterCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4796
  Original Name: glfwSetScrollCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4796

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetScrollCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetScrollCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4833
  Original Name: glfwSetDropCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4833

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetDropCallback(window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetDropCallback(window, callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4857
  Original Name: glfwJoystickPresent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4857

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwJoystickPresent(jid: I32): I32 =>
    @glfwJoystickPresent(jid)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4890
  Original Name: glfwGetJoystickAxes/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4890

  Return Value: [PointerType size=64]->[FundamentalType(float) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetJoystickAxes(jid: I32, count: Pointer[I32] tag): Pointer[F32] =>
    @glfwGetJoystickAxes(jid, count)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4931
  Original Name: glfwGetJoystickButtons/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4931

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetJoystickButtons(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickButtons(jid, count)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4988
  Original Name: glfwGetJoystickHats/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4988

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun glfwGetJoystickHats(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickHats(jid, count)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5019
  Original Name: glfwGetJoystickName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5019

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwGetJoystickName(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickName(jid)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5060
  Original Name: glfwGetJoystickGUID/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5060

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwGetJoystickGUID(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickGUID(jid)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5086
  Original Name: glfwSetJoystickUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5086

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
  fun glfwSetJoystickUserPointer(jid: I32, pointer: Pointer[None] tag): None =>
    @glfwSetJoystickUserPointer(jid, pointer)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5110
  Original Name: glfwGetJoystickUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5110

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwGetJoystickUserPointer(jid: I32): Pointer[None] =>
    @glfwGetJoystickUserPointer(jid)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5138
  Original Name: glfwJoystickIsGamepad/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwJoystickIsGamepad(jid: I32): I32 =>
    @glfwJoystickIsGamepad(jid)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5174
  Original Name: glfwSetJoystickCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5174

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
  fun glfwSetJoystickCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetJoystickCallback(callback)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5208
  Original Name: glfwUpdateGamepadMappings/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5208

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwUpdateGamepadMappings(string: String): I32 =>
    @glfwUpdateGamepadMappings(string.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5238
  Original Name: glfwGetGamepadName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5238

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwGetGamepadName(jid: I32): String =>
    String.from_cstring(@glfwGetGamepadName(jid)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5276
  Original Name: glfwGetGamepadState/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5276

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=320,fid: f10]
*/
  fun glfwGetGamepadState(jid: I32, state: NullablePointer[GLFWgamepadstate] tag): I32 =>
    @glfwGetGamepadState(jid, state)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5301
  Original Name: glfwSetClipboardString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5301

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwSetClipboardString(window: NullablePointer[GLFWwindow] tag, string: String): None =>
    @glfwSetClipboardString(window, string.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5331
  Original Name: glfwGetClipboardString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5331

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwGetClipboardString(window: NullablePointer[GLFWwindow] tag): String =>
    String.from_cstring(@glfwGetClipboardString(window)).clone()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5361
  Original Name: glfwGetTime/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5361

  Return Value: [FundamentalType(double) size=64]

  Arguments:
*/
  fun glfwGetTime(): F64 =>
    @glfwGetTime()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5391
  Original Name: glfwSetTime/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5391

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(double) size=64]
*/
  fun glfwSetTime(time: F64): None =>
    @glfwSetTime(time)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5413
  Original Name: glfwGetTimerValue/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5413

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
  fun glfwGetTimerValue(): U64 =>
    @glfwGetTimerValue()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5433
  Original Name: glfwGetTimerFrequency/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5433

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
  fun glfwGetTimerFrequency(): U64 =>
    @glfwGetTimerFrequency()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5471
  Original Name: glfwMakeContextCurrent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5471

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwMakeContextCurrent(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwMakeContextCurrent(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5492
  Original Name: glfwGetCurrentContext/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5492

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
*/
  fun glfwGetCurrentContext(): NullablePointer[GLFWwindow] =>
    @glfwGetCurrentContext()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5526
  Original Name: glfwSwapBuffers/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5526

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
  fun glfwSwapBuffers(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwSwapBuffers(window)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5572
  Original Name: glfwSwapInterval/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5572

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun glfwSwapInterval(interval: I32): None =>
    @glfwSwapInterval(interval)


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5610
  Original Name: glfwExtensionSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5610

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwExtensionSupported(extension: String): I32 =>
    @glfwExtensionSupported(extension.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5652
  Original Name: glfwGetProcAddress/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5652

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun glfwGetProcAddress(procname: String): Pointer[None] =>
    @glfwGetProcAddress(procname.cstring())


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5680
  Original Name: glfwVulkanSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5680

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
  fun glfwVulkanSupported(): I32 =>
    @glfwVulkanSupported()


/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5728
  Original Name: glfwGetRequiredInstanceExtensions/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5728

  Return Value: [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
  fun glfwGetRequiredInstanceExtensions(count: Pointer[U32] tag): Pointer[Pointer[U8]] =>
    @glfwGetRequiredInstanceExtensions(count)
