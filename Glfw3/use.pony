/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1794
  Original Name: glfwInit/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1794

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @glfwInit[I32]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1828
  Original Name: glfwTerminate/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1828

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @glfwTerminate[None]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1860
  Original Name: glfwInitHint/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1860

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwInitHint[None](hint: I32, value: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1887
  Original Name: glfwGetVersion/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1887

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetVersion[None](major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1918
  Original Name: glfwGetVersionString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1918

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
*/
use @glfwGetVersionString[Pointer[U8]]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1949
  Original Name: glfwGetError/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1949

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwGetError[I32](description: Pointer[Pointer[U8 val] tag] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1995
  Original Name: glfwSetErrorCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1995

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetErrorCallback[Pointer[None]](callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2024
  Original Name: glfwGetMonitors/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2024

  Return Value: [PointerType size=64]->[PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetMonitors[Array[NullablePointer[GLFWmonitor]]](count: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2048
  Original Name: glfwGetPrimaryMonitor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2048

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
*/
use @glfwGetPrimaryMonitor[NullablePointer[GLFWmonitor]]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2073
  Original Name: glfwGetMonitorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2073

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetMonitorPos[None](monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)



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
use @glfwGetMonitorWorkarea[None](monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2138
  Original Name: glfwGetMonitorPhysicalSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2138

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetMonitorPhysicalSize[None](monitor: NullablePointer[GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2170
  Original Name: glfwGetMonitorContentScale/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2170

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(float) size=32]
    [PointerType size=64]->[FundamentalType(float) size=32]
*/
use @glfwGetMonitorContentScale[None](monitor: NullablePointer[GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2196
  Original Name: glfwGetMonitorName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2196

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetMonitorName[Pointer[U8]](monitor: NullablePointer[GLFWmonitor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2222
  Original Name: glfwSetMonitorUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2222

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @glfwSetMonitorUserPointer[None](monitor: NullablePointer[GLFWmonitor] tag, pointer: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2246
  Original Name: glfwGetMonitorUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2246

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetMonitorUserPointer[Pointer[None]](monitor: NullablePointer[GLFWmonitor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2276
  Original Name: glfwSetMonitorCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2276

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetMonitorCallback[Pointer[None]](callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2309
  Original Name: glfwGetVideoModes/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2309

  Return Value: [PointerType size=64]->[Struct size=192,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetVideoModes[NullablePointer[GLFWvidmode]](monitor: NullablePointer[GLFWmonitor] tag, count: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2337
  Original Name: glfwGetVideoMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2337

  Return Value: [PointerType size=64]->[Struct size=192,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetVideoMode[NullablePointer[GLFWvidmode]](monitor: NullablePointer[GLFWmonitor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2370
  Original Name: glfwSetGamma/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2370

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(float) size=32]
*/
use @glfwSetGamma[None](monitor: NullablePointer[GLFWmonitor] tag, gamma: F32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2400
  Original Name: glfwGetGammaRamp/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2400

  Return Value: [PointerType size=64]->[Struct size=256,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetGammaRamp[NullablePointer[GLFWgammaramp]](monitor: NullablePointer[GLFWmonitor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2441
  Original Name: glfwSetGammaRamp/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2441

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=256,fid: f10]
*/
use @glfwSetGammaRamp[None](monitor: NullablePointer[GLFWmonitor] tag, ramp: NullablePointer[GLFWgammaramp] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2460
  Original Name: glfwDefaultWindowHints/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2460

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @glfwDefaultWindowHints[None]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2495
  Original Name: glfwWindowHint/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2495

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwWindowHint[None](hint: I32, value: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2533
  Original Name: glfwWindowHintString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2533

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwWindowHintString[None](hint: I32, value: Pointer[U8] tag)



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
use @glfwCreateWindow[NullablePointer[GLFWwindow]](width: I32, height: I32, title: Pointer[U8] tag, monitor: NullablePointer[GLFWmonitor] tag, share: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2716
  Original Name: glfwDestroyWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2716

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwDestroyWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2736
  Original Name: glfwWindowShouldClose/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwWindowShouldClose[I32](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2758
  Original Name: glfwSetWindowShouldClose/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2758

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
use @glfwSetWindowShouldClose[None](window: NullablePointer[GLFWwindow] tag, value: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2783
  Original Name: glfwSetWindowTitle/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2783

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwSetWindowTitle[None](window: NullablePointer[GLFWwindow] tag, title: Pointer[U8] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2830
  Original Name: glfwSetWindowIcon/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2830

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f10]
*/
use @glfwSetWindowIcon[None](window: NullablePointer[GLFWwindow] tag, count: I32, images: NullablePointer[GLFWimage] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2862
  Original Name: glfwGetWindowPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2862

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetWindowPos[None](window: NullablePointer[GLFWwindow] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2897
  Original Name: glfwSetWindowPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2897

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwSetWindowPos[None](window: NullablePointer[GLFWwindow] tag, xpos: I32, ypos: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2927
  Original Name: glfwGetWindowSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:2927

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetWindowSize[None](window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)



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
use @glfwSetWindowSizeLimits[None](window: NullablePointer[GLFWwindow] tag, minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3013
  Original Name: glfwSetWindowAspectRatio/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3013

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwSetWindowAspectRatio[None](window: NullablePointer[GLFWwindow] tag, numer: I32, denom: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3054
  Original Name: glfwSetWindowSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3054

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwSetWindowSize[None](window: NullablePointer[GLFWwindow] tag, width: I32, height: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3083
  Original Name: glfwGetFramebufferSize/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3083

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetFramebufferSize[None](window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)



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
use @glfwGetWindowFrameSize[None](window: NullablePointer[GLFWwindow] tag, left: Pointer[I32] tag, top: Pointer[I32] tag, right: Pointer[I32] tag, bottom: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3153
  Original Name: glfwGetWindowContentScale/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3153

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(float) size=32]
    [PointerType size=64]->[FundamentalType(float) size=32]
*/
use @glfwGetWindowContentScale[None](window: NullablePointer[GLFWwindow] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3180
  Original Name: glfwGetWindowOpacity/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3180

  Return Value: [FundamentalType(float) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetWindowOpacity[F32](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3209
  Original Name: glfwSetWindowOpacity/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3209

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(float) size=32]
*/
use @glfwSetWindowOpacity[None](window: NullablePointer[GLFWwindow] tag, opacity: F32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3240
  Original Name: glfwIconifyWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3240

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwIconifyWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3267
  Original Name: glfwRestoreWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3267

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwRestoreWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3292
  Original Name: glfwMaximizeWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3292

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwMaximizeWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3319
  Original Name: glfwShowWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3319

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwShowWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3341
  Original Name: glfwHideWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3341

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwHideWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3380
  Original Name: glfwFocusWindow/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3380

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwFocusWindow[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3407
  Original Name: glfwRequestWindowAttention/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3407

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwRequestWindowAttention[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3429
  Original Name: glfwGetWindowMonitor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3429

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetWindowMonitor[NullablePointer[GLFWmonitor]](window: NullablePointer[GLFWwindow] tag)



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
use @glfwSetWindowMonitor[None](window: NullablePointer[GLFWwindow] tag, monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3522
  Original Name: glfwGetWindowAttrib/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3522

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
use @glfwGetWindowAttrib[I32](window: NullablePointer[GLFWwindow] tag, attrib: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3559
  Original Name: glfwSetWindowAttrib/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3559

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwSetWindowAttrib[None](window: NullablePointer[GLFWwindow] tag, attrib: I32, value: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3582
  Original Name: glfwSetWindowUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3582

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @glfwSetWindowUserPointer[None](window: NullablePointer[GLFWwindow] tag, pointer: GLFWWindowUserObject tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3603
  Original Name: glfwGetWindowUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3603

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetWindowUserPointer[GLFWWindowUserObject](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3638
  Original Name: glfwSetWindowPosCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3638

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowPosCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3670
  Original Name: glfwSetWindowSizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3670

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowSizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3710
  Original Name: glfwSetWindowCloseCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3710

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowCloseCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3746
  Original Name: glfwSetWindowRefreshCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3746

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowRefreshCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3781
  Original Name: glfwSetWindowFocusCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3781

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowFocusCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3814
  Original Name: glfwSetWindowIconifyCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3814

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowIconifyCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3844
  Original Name: glfwSetWindowMaximizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3844

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowMaximizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3874
  Original Name: glfwSetFramebufferSizeCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3874

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetFramebufferSizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3905
  Original Name: glfwSetWindowContentScaleCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3905

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetWindowContentScaleCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3943
  Original Name: glfwPollEvents/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3943

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @glfwPollEvents[None]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3988
  Original Name: glfwWaitEvents/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:3988

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @glfwWaitEvents[None]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4037
  Original Name: glfwWaitEventsTimeout/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4037

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @glfwWaitEventsTimeout[None](timeout: F64)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4057
  Original Name: glfwPostEmptyEvent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4057

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @glfwPostEmptyEvent[None]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4082
  Original Name: glfwGetInputMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4082

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
use @glfwGetInputMode[I32](window: NullablePointer[GLFWwindow] tag, mode: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4144
  Original Name: glfwSetInputMode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4144

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwSetInputMode[None](window: NullablePointer[GLFWwindow] tag, mode: I32, value: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4173
  Original Name: glfwRawMouseMotionSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4173

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @glfwRawMouseMotionSupported[I32]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4241
  Original Name: glfwGetKeyName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4241

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwGetKeyName[Pointer[U8]](key: I32, scancode: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4265
  Original Name: glfwGetKeyScancode/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4265

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwGetKeyScancode[I32](key: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4305
  Original Name: glfwGetKey/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4305

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
use @glfwGetKey[I32](window: NullablePointer[GLFWwindow] tag, key: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4334
  Original Name: glfwGetMouseButton/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4334

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(int) size=32]
*/
use @glfwGetMouseButton[I32](window: NullablePointer[GLFWwindow] tag, button: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4372
  Original Name: glfwGetCursorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4372

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(double) size=64]
    [PointerType size=64]->[FundamentalType(double) size=64]
*/
use @glfwGetCursorPos[None](window: NullablePointer[GLFWwindow] tag, xpos: Pointer[F64] tag, ypos: Pointer[F64] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4412
  Original Name: glfwSetCursorPos/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4412

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [FundamentalType(double) size=64]
    [FundamentalType(double) size=64]
*/
use @glfwSetCursorPos[None](window: NullablePointer[GLFWwindow] tag, xpos: F64, ypos: F64)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4450
  Original Name: glfwCreateCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4450

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f10]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @glfwCreateCursor[NullablePointer[GLFWcursor]](image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4473
  Original Name: glfwCreateStandardCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4473

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwCreateStandardCursor[NullablePointer[GLFWcursor]](shape: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4500
  Original Name: glfwDestroyCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4500

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwDestroyCursor[None](cursor: NullablePointer[GLFWcursor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4527
  Original Name: glfwSetCursor/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4527

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwSetCursor[None](window: NullablePointer[GLFWwindow] tag, cursor: NullablePointer[GLFWcursor] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4577
  Original Name: glfwSetKeyCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4577

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetKeyCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4620
  Original Name: glfwSetCharCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4620

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetCharCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4662
  Original Name: glfwSetCharModsCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4662

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetCharModsCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4699
  Original Name: glfwSetMouseButtonCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4699

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetMouseButtonCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4731
  Original Name: glfwSetCursorPosCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4731

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetCursorPosCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4762
  Original Name: glfwSetCursorEnterCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4762

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetCursorEnterCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4796
  Original Name: glfwSetScrollCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4796

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetScrollCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4833
  Original Name: glfwSetDropCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4833

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetDropCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4857
  Original Name: glfwJoystickPresent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4857

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwJoystickPresent[I32](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4890
  Original Name: glfwGetJoystickAxes/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4890

  Return Value: [PointerType size=64]->[FundamentalType(float) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetJoystickAxes[Pointer[F32]](jid: I32, count: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4931
  Original Name: glfwGetJoystickButtons/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4931

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetJoystickButtons[Pointer[U8]](jid: I32, count: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4988
  Original Name: glfwGetJoystickHats/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:4988

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @glfwGetJoystickHats[Pointer[U8]](jid: I32, count: Pointer[I32] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5019
  Original Name: glfwGetJoystickName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5019

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwGetJoystickName[Pointer[U8]](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5060
  Original Name: glfwGetJoystickGUID/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5060

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwGetJoystickGUID[Pointer[U8]](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5086
  Original Name: glfwSetJoystickUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5086

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
use @glfwSetJoystickUserPointer[None](jid: I32, pointer: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5110
  Original Name: glfwGetJoystickUserPointer/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5110

  Return Value: [PointerType size=64]->[FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwGetJoystickUserPointer[Pointer[None]](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5138
  Original Name: glfwJoystickIsGamepad/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5138

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwJoystickIsGamepad[I32](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5174
  Original Name: glfwSetJoystickCallback/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5174

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
*/
use @glfwSetJoystickCallback[Pointer[None]](callback: Pointer[None] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5208
  Original Name: glfwUpdateGamepadMappings/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5208

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwUpdateGamepadMappings[I32](string: Pointer[U8] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5238
  Original Name: glfwGetGamepadName/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5238

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwGetGamepadName[Pointer[U8]](jid: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5276
  Original Name: glfwGetGamepadState/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5276

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=320,fid: f10]
*/
use @glfwGetGamepadState[I32](jid: I32, state: NullablePointer[GLFWgamepadstate] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5301
  Original Name: glfwSetClipboardString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5301

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwSetClipboardString[None](window: NullablePointer[GLFWwindow] tag, string: Pointer[U8] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5331
  Original Name: glfwGetClipboardString/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5331

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwGetClipboardString[Pointer[U8]](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5361
  Original Name: glfwGetTime/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5361

  Return Value: [FundamentalType(double) size=64]

  Arguments:
*/
use @glfwGetTime[F64]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5391
  Original Name: glfwSetTime/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5391

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(double) size=64]
*/
use @glfwSetTime[None](time: F64)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5413
  Original Name: glfwGetTimerValue/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5413

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
use @glfwGetTimerValue[U64]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5433
  Original Name: glfwGetTimerFrequency/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5433

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
use @glfwGetTimerFrequency[U64]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5471
  Original Name: glfwMakeContextCurrent/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5471

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwMakeContextCurrent[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5492
  Original Name: glfwGetCurrentContext/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5492

  Return Value: [PointerType size=64]->[Struct size=,fid: f10]

  Arguments:
*/
use @glfwGetCurrentContext[NullablePointer[GLFWwindow]]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5526
  Original Name: glfwSwapBuffers/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5526

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f10]
*/
use @glfwSwapBuffers[None](window: NullablePointer[GLFWwindow] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5572
  Original Name: glfwSwapInterval/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5572

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @glfwSwapInterval[None](interval: I32)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5610
  Original Name: glfwExtensionSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5610

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwExtensionSupported[I32](extension: Pointer[U8] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5652
  Original Name: glfwGetProcAddress/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5652

  Return Value: [PointerType size=64]->[FunctionType]  WRITE MANUALLY

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @glfwGetProcAddress[Pointer[None]](procname: Pointer[U8] tag)



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5680
  Original Name: glfwVulkanSupported/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5680

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
use @glfwVulkanSupported[I32]()



/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5728
  Original Name: glfwGetRequiredInstanceExtensions/nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:5728

  Return Value: [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
use @glfwGetRequiredInstanceExtensions[Pointer[Pointer[U8]]](count: Pointer[U32] tag)

