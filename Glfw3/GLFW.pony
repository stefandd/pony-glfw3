use "lib:glfw"

use @glfwInit[I32]()
use @glfwTerminate[None]()
use @glfwInitHint[None](hint: I32, value: I32)
use @glfwGetVersion[None](major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag)
use @glfwGetVersionString[Pointer[U8]]()
use @glfwGetError[I32](description: Pointer[Pointer[U8]] tag)
use @glfwSetErrorCallback[Pointer[None]](callback: Pointer[None] tag)
use @glfwGetMonitors[Array[NullablePointer[GLFWmonitor]]](count: Pointer[I32] tag)
use @glfwGetPrimaryMonitor[NullablePointer[GLFWmonitor]]()
use @glfwGetMonitorPos[None](monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)
use @glfwGetMonitorWorkarea[None](monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwGetMonitorPhysicalSize[None](monitor: NullablePointer[GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag)
use @glfwGetMonitorContentScale[None](monitor: NullablePointer[GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)
use @glfwGetMonitorName[Pointer[U8]](monitor: NullablePointer[GLFWmonitor] tag)
use @glfwSetMonitorUserPointer[None](monitor: NullablePointer[GLFWmonitor] tag, pointer: Pointer[None] tag)
use @glfwGetMonitorUserPointer[Pointer[None]](monitor: NullablePointer[GLFWmonitor] tag)
use @glfwSetMonitorCallback[Pointer[None]](callback: Pointer[None] tag)
use @glfwGetVideoModes[NullablePointer[GLFWvidmode]](monitor: NullablePointer[GLFWmonitor] tag, count: Pointer[I32] tag)
use @glfwGetVideoMode[NullablePointer[GLFWvidmode]](monitor: NullablePointer[GLFWmonitor] tag)
use @glfwSetGamma[None](monitor: NullablePointer[GLFWmonitor] tag, gamma: F32)
use @glfwGetGammaRamp[NullablePointer[GLFWgammaramp]](monitor: NullablePointer[GLFWmonitor] tag)
use @glfwSetGammaRamp[None](monitor: NullablePointer[GLFWmonitor] tag, ramp: NullablePointer[GLFWgammaramp] tag)
use @glfwDefaultWindowHints[None]()
use @glfwWindowHint[None](hint: I32, value: I32)
use @glfwWindowHintString[None](hint: I32, value: Pointer[U8] tag)
use @glfwCreateWindow[NullablePointer[GLFWwindow]](width: I32, height: I32, title: Pointer[U8] tag, monitor: NullablePointer[GLFWmonitor] tag, share: NullablePointer[GLFWwindow] tag)
use @glfwDestroyWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwWindowShouldClose[I32](window: NullablePointer[GLFWwindow] tag)
use @glfwSetWindowShouldClose[None](window: NullablePointer[GLFWwindow] tag, value: I32)
use @glfwSetWindowTitle[None](window: NullablePointer[GLFWwindow] tag, title: Pointer[U8] tag)
use @glfwSetWindowIcon[None](window: NullablePointer[GLFWwindow] tag, count: I32, images: NullablePointer[GLFWimage] tag)
use @glfwGetWindowPos[None](window: NullablePointer[GLFWwindow] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)
use @glfwSetWindowPos[None](window: NullablePointer[GLFWwindow] tag, xpos: I32, ypos: I32)
use @glfwGetWindowSize[None](window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwSetWindowSizeLimits[None](window: NullablePointer[GLFWwindow] tag, minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32)
use @glfwSetWindowAspectRatio[None](window: NullablePointer[GLFWwindow] tag, numer: I32, denom: I32)
use @glfwSetWindowSize[None](window: NullablePointer[GLFWwindow] tag, width: I32, height: I32)
use @glfwGetFramebufferSize[None](window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwGetWindowFrameSize[None](window: NullablePointer[GLFWwindow] tag, left: Pointer[I32] tag, top: Pointer[I32] tag, right: Pointer[I32] tag, bottom: Pointer[I32] tag)
use @glfwGetWindowContentScale[None](window: NullablePointer[GLFWwindow] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)
use @glfwGetWindowOpacity[F32](window: NullablePointer[GLFWwindow] tag)
use @glfwSetWindowOpacity[None](window: NullablePointer[GLFWwindow] tag, opacity: F32)
use @glfwIconifyWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwRestoreWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwMaximizeWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwShowWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwHideWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwFocusWindow[None](window: NullablePointer[GLFWwindow] tag)
use @glfwRequestWindowAttention[None](window: NullablePointer[GLFWwindow] tag)
use @glfwGetWindowMonitor[NullablePointer[GLFWmonitor]](window: NullablePointer[GLFWwindow] tag)
use @glfwSetWindowMonitor[None](window: NullablePointer[GLFWwindow] tag, monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32)
use @glfwGetWindowAttrib[I32](window: NullablePointer[GLFWwindow] tag, attrib: I32)
use @glfwSetWindowAttrib[None](window: NullablePointer[GLFWwindow] tag, attrib: I32, value: I32)
use @glfwSetWindowUserPointer[None](window: NullablePointer[GLFWwindow] tag, listener: WindowCallbackListener tag)
use @glfwGetWindowUserPointer[WindowCallbackListener](window: NullablePointer[GLFWwindow] tag)
use @glfwSetWindowPosCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowSizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowCloseCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowRefreshCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowFocusCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowIconifyCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowMaximizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetFramebufferSizeCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowContentScaleCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwPollEvents[None]()
use @glfwWaitEvents[None]()
use @glfwWaitEventsTimeout[None](timeout: F64)
use @glfwPostEmptyEvent[None]()
use @glfwGetInputMode[I32](window: NullablePointer[GLFWwindow] tag, mode: I32)
use @glfwSetInputMode[None](window: NullablePointer[GLFWwindow] tag, mode: I32, value: I32)
use @glfwRawMouseMotionSupported[I32]()
use @glfwGetKeyName[Pointer[U8]](key: I32, scancode: I32)
use @glfwGetKeyScancode[I32](key: I32)
use @glfwGetKey[I32](window: NullablePointer[GLFWwindow] tag, key: I32)
use @glfwGetMouseButton[I32](window: NullablePointer[GLFWwindow] tag, button: I32)
use @glfwGetCursorPos[None](window: NullablePointer[GLFWwindow] tag, xpos: Pointer[F64] tag, ypos: Pointer[F64] tag)
use @glfwSetCursorPos[None](window: NullablePointer[GLFWwindow] tag, xpos: F64, ypos: F64)
use @glfwCreateCursor[NullablePointer[GLFWcursor]](image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32)
use @glfwCreateStandardCursor[NullablePointer[GLFWcursor]](shape: I32)
use @glfwDestroyCursor[None](cursor: NullablePointer[GLFWcursor] tag)
use @glfwSetCursor[None](window: NullablePointer[GLFWwindow] tag, cursor: NullablePointer[GLFWcursor] tag)
use @glfwSetKeyCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCharCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCharModsCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetMouseButtonCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCursorPosCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCursorEnterCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetScrollCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetDropCallback[Pointer[None]](window: NullablePointer[GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwJoystickPresent[I32](jid: I32)
use @glfwGetJoystickAxes[Pointer[F32]](jid: I32, count: Pointer[I32] tag)
use @glfwGetJoystickButtons[Pointer[U8]](jid: I32, count: Pointer[I32] tag)
use @glfwGetJoystickHats[Pointer[U8]](jid: I32, count: Pointer[I32] tag)
use @glfwGetJoystickName[Pointer[U8]](jid: I32)
use @glfwGetJoystickGUID[Pointer[U8]](jid: I32)
use @glfwSetJoystickUserPointer[None](jid: I32, pointer: Pointer[None] tag)
use @glfwGetJoystickUserPointer[Pointer[None]](jid: I32)
use @glfwJoystickIsGamepad[I32](jid: I32)
use @glfwSetJoystickCallback[Pointer[None]](callback: Pointer[None] tag)
use @glfwUpdateGamepadMappings[I32](string: Pointer[U8] tag)
use @glfwGetGamepadName[Pointer[U8]](jid: I32)
use @glfwGetGamepadState[I32](jid: I32, state: NullablePointer[GLFWgamepadstate] tag)
use @glfwSetClipboardString[None](window: NullablePointer[GLFWwindow] tag, string: Pointer[U8] tag)
use @glfwGetClipboardString[Pointer[U8]](window: NullablePointer[GLFWwindow] tag)
use @glfwGetTime[F64]()
use @glfwSetTime[None](time: F64)
use @glfwGetTimerValue[U64]()
use @glfwGetTimerFrequency[U64]()
use @glfwMakeContextCurrent[None](window: NullablePointer[GLFWwindow] tag)
use @glfwGetCurrentContext[NullablePointer[GLFWwindow]]()
use @glfwSwapBuffers[None](window: NullablePointer[GLFWwindow] tag)
use @glfwSwapInterval[None](interval: I32)
use @glfwExtensionSupported[I32](extension: Pointer[U8] tag)
use @glfwGetProcAddress[Pointer[None]](procname: Pointer[U8] tag)
use @glfwVulkanSupported[I32]()
use @glfwGetRequiredInstanceExtensions[Pointer[Pointer[U8]]](count: Pointer[U32] tag)

primitive GLFW

  fun glfwInit(): I32 =>
    @glfwInit()

  fun glfwTerminate(): None =>
    @glfwTerminate()

  fun glfwInitHint(hint: I32, value: I32): None =>
    @glfwInitHint(hint, value)

  fun glfwGetVersion(major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag): None =>
    @glfwGetVersion(major, minor, rev)

  fun glfwGetVersionString(): String =>
    String.from_cstring(@glfwGetVersionString()).clone()

  fun glfwGetError(description: Pointer[Pointer[U8]] tag): I32 =>
    @glfwGetError(description)

  fun glfwSetErrorCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetErrorCallback(callback)

  fun glfwGetMonitors(count: Pointer[I32] tag): Array[NullablePointer[GLFWmonitor]] =>
    @glfwGetMonitors(count)

  fun glfwGetPrimaryMonitor(): NullablePointer[GLFWmonitor] =>
    @glfwGetPrimaryMonitor()

  fun glfwGetMonitorPos(monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetMonitorPos(monitor, xpos, ypos)

  fun glfwGetMonitorWorkarea(monitor: NullablePointer[GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height)

  fun glfwGetMonitorPhysicalSize(monitor: NullablePointer[GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag): None =>
    @glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM)

  fun glfwGetMonitorContentScale(monitor: NullablePointer[GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetMonitorContentScale(monitor, xscale, yscale)

  fun glfwGetMonitorName(monitor: NullablePointer[GLFWmonitor] tag): String =>
    String.from_cstring(@glfwGetMonitorName(monitor)).clone()

  fun glfwSetMonitorUserPointer(monitor: NullablePointer[GLFWmonitor] tag, pointer: Pointer[None] tag): None =>
    @glfwSetMonitorUserPointer(monitor, pointer)

  fun glfwGetMonitorUserPointer(monitor: NullablePointer[GLFWmonitor] tag): Pointer[None] =>
    @glfwGetMonitorUserPointer(monitor)

  fun glfwSetMonitorCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetMonitorCallback(callback)

  fun glfwGetVideoModes(monitor: NullablePointer[GLFWmonitor] tag, count: Pointer[I32] tag): NullablePointer[GLFWvidmode] =>
    @glfwGetVideoModes(monitor, count)

  fun glfwGetVideoMode(monitor: NullablePointer[GLFWmonitor] tag): NullablePointer[GLFWvidmode] =>
    @glfwGetVideoMode(monitor)

  fun glfwSetGamma(monitor: NullablePointer[GLFWmonitor] tag, gamma: F32): None =>
    @glfwSetGamma(monitor, gamma)

  fun glfwGetGammaRamp(monitor: NullablePointer[GLFWmonitor] tag): NullablePointer[GLFWgammaramp] =>
    @glfwGetGammaRamp(monitor)

  fun glfwSetGammaRamp(monitor: NullablePointer[GLFWmonitor] tag, ramp: NullablePointer[GLFWgammaramp] tag): None =>
    @glfwSetGammaRamp(monitor, ramp)

  fun glfwDefaultWindowHints(): None =>
    @glfwDefaultWindowHints()

  fun glfwWindowHint(hint: I32, value: I32): None =>
    @glfwWindowHint(hint, value)

  fun glfwWindowHintString(hint: I32, value: String): None =>
    @glfwWindowHintString(hint, value.cstring())

  fun glfwCreateWindow(width: I32, height: I32, title: String, monitor: NullablePointer[GLFWmonitor] tag, share: NullablePointer[GLFWwindow] tag, listener: WindowCallbackListener tag): NullablePointer[GLFWwindow] =>
    let window = @glfwCreateWindow(width, height, title.cstring(), monitor, share)
    @glfwSetWindowUserPointer(window, listener)
    window

  fun glfwDestroyWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwDestroyWindow(window)

  fun glfwWindowShouldClose(window: NullablePointer[GLFWwindow] tag): I32 =>
    @glfwWindowShouldClose(window)

  fun glfwSetWindowShouldClose(window: NullablePointer[GLFWwindow] tag, value: I32): None =>
    @glfwSetWindowShouldClose(window, value)

  fun glfwSetWindowTitle(window: NullablePointer[GLFWwindow] tag, title: String): None =>
    @glfwSetWindowTitle(window, title.cstring())

  fun glfwSetWindowIcon(window: NullablePointer[GLFWwindow] tag, count: I32, images: NullablePointer[GLFWimage] tag): None =>
    @glfwSetWindowIcon(window, count, images)

  fun glfwGetWindowPos(window: NullablePointer[GLFWwindow] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetWindowPos(window, xpos, ypos)

  fun glfwSetWindowPos(window: NullablePointer[GLFWwindow] tag, xpos: I32, ypos: I32): None =>
    @glfwSetWindowPos(window, xpos, ypos)

  fun glfwGetWindowSize(window: NullablePointer[GLFWwindow] tag): (I32, I32) =>
    var w: I32 = 0
    var h: I32 = 0
    @glfwGetWindowSize(window, addressof w, addressof h)
    (w, h)

  fun glfwSetWindowSizeLimits(window: NullablePointer[GLFWwindow] tag, minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32): None =>
    @glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight)

  fun glfwSetWindowAspectRatio(window: NullablePointer[GLFWwindow] tag, numer: I32, denom: I32): None =>
    @glfwSetWindowAspectRatio(window, numer, denom)

  fun glfwSetWindowSize(window: NullablePointer[GLFWwindow] tag, width: I32, height: I32): None =>
    @glfwSetWindowSize(window, width, height)

  fun glfwGetFramebufferSize(window: NullablePointer[GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetFramebufferSize(window, width, height)

  fun glfwGetWindowFrameSize(window: NullablePointer[GLFWwindow] tag, left: Pointer[I32] tag, top: Pointer[I32] tag, right: Pointer[I32] tag, bottom: Pointer[I32] tag): None =>
    @glfwGetWindowFrameSize(window, left, top, right, bottom)

  fun glfwGetWindowContentScale(window: NullablePointer[GLFWwindow] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetWindowContentScale(window, xscale, yscale)

  fun glfwGetWindowOpacity(window: NullablePointer[GLFWwindow] tag): F32 =>
    @glfwGetWindowOpacity(window)

  fun glfwSetWindowOpacity(window: NullablePointer[GLFWwindow] tag, opacity: F32): None =>
    @glfwSetWindowOpacity(window, opacity)

  fun glfwIconifyWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwIconifyWindow(window)

  fun glfwRestoreWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwRestoreWindow(window)

  fun glfwMaximizeWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwMaximizeWindow(window)

  fun glfwShowWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwShowWindow(window)

  fun glfwHideWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwHideWindow(window)

  fun glfwFocusWindow(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwFocusWindow(window)

  fun glfwRequestWindowAttention(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwRequestWindowAttention(window)

  fun glfwGetWindowMonitor(window: NullablePointer[GLFWwindow] tag): NullablePointer[GLFWmonitor] =>
    @glfwGetWindowMonitor(window)

  fun glfwSetWindowMonitor(window: NullablePointer[GLFWwindow] tag, monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32): None =>
    @glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refreshRate)

  fun glfwGetWindowAttrib(window: NullablePointer[GLFWwindow] tag, attrib: I32): I32 =>
    @glfwGetWindowAttrib(window, attrib)

  fun glfwSetWindowAttrib(window: NullablePointer[GLFWwindow] tag, attrib: I32, value: I32): None =>
    @glfwSetWindowAttrib(window, attrib, value)

  fun glfwEnableWindowPosCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowPosCallback(window, addressof _windowPosCallback)

  fun @_windowPosCallback(window: NullablePointer[GLFWwindow] tag, xpos: I64 val, ypos: I64 val) =>
    @glfwGetWindowUserPointer(window).windowPosCallback(window, xpos, ypos)

  fun glfwEnableWindowSizeCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowSizeCallback(window, addressof _windowSizeCallback)

  fun @_windowSizeCallback(window: NullablePointer[GLFWwindow] tag, width: I64 val, height: I64 val) =>
    @glfwGetWindowUserPointer(window).windowSizeCallback(window, width, height)

  fun glfwEnableWindowCloseCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowCloseCallback(window, addressof _windowCloseCallback)

  fun @_windowCloseCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window).windowCloseCallback(window)

  fun glfwEnableWindowRefreshCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowRefreshCallback(window, addressof _windowRefreshCallback)

  fun @_windowRefreshCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window).windowRefreshCallback(window)

  fun glfwEnableWindowFocusCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowFocusCallback(window, addressof _windowFocusCallback)

  fun @_windowFocusCallback(window: NullablePointer[GLFWwindow] tag, focused: I64) =>
    @glfwGetWindowUserPointer(window).windowFocusCallback(window, focused)

  fun glfwEnableWindowIconifyCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowIconifyCallback(window, addressof _windowIconifyCallback)

  fun @_windowIconifyCallback(window: NullablePointer[GLFWwindow] tag, iconified: I64) =>
    @glfwGetWindowUserPointer(window).windowIconifyCallback(window, iconified)

  fun glfwEnableWindowMaximizeCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowMaximizeCallback(window, addressof _windowMaximizeCallback)

  fun @_windowMaximizeCallback(window: NullablePointer[GLFWwindow] tag, maximized: I64) =>
    @glfwGetWindowUserPointer(window).windowMaximizeCallback(window, maximized)

  fun glfwEnableFramebufferSizeCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetFramebufferSizeCallback(window, addressof _framebufferSizeCallback)

  fun @_framebufferSizeCallback(window: NullablePointer[GLFWwindow] tag, width: I64, height: I64) =>
    @glfwGetWindowUserPointer(window).framebufferSizeCallback(window, width, height)

  fun glfwEnableWindowContentScaleCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetWindowContentScaleCallback(window, addressof _windowContentScaleCallback)

  fun @_windowContentScaleCallback(window: NullablePointer[GLFWwindow] tag, xscale: F64, yscale: F64) =>
    @glfwGetWindowUserPointer(window).windowContentScaleCallback(window, xscale, yscale)

  fun glfwPollEvents(): None =>
    @glfwPollEvents()

  fun glfwWaitEvents(): None =>
    @glfwWaitEvents()

  fun glfwWaitEventsTimeout(timeout: F64): None =>
    @glfwWaitEventsTimeout(timeout)

  fun glfwPostEmptyEvent(): None =>
    @glfwPostEmptyEvent()

  fun glfwGetInputMode(window: NullablePointer[GLFWwindow] tag, mode: I32): I32 =>
    @glfwGetInputMode(window, mode)

  fun glfwSetInputMode(window: NullablePointer[GLFWwindow] tag, mode: I32, value: I32): None =>
    @glfwSetInputMode(window, mode, value)

  fun glfwRawMouseMotionSupported(): I32 =>
    @glfwRawMouseMotionSupported()

  fun glfwGetKeyName(key: I32, scancode: I32): String =>
    String.from_cstring(@glfwGetKeyName(key, scancode)).clone()

  fun glfwGetKeyScancode(key: I32): I32 =>
    @glfwGetKeyScancode(key)

  fun glfwGetKey(window: NullablePointer[GLFWwindow] tag, key: I32): I32 =>
    @glfwGetKey(window, key)

  fun glfwGetMouseButton(window: NullablePointer[GLFWwindow] tag, button: I32): I32 =>
    @glfwGetMouseButton(window, button)

  fun glfwGetCursorPos(window: NullablePointer[GLFWwindow] tag, xpos: Pointer[F64] tag, ypos: Pointer[F64] tag): None =>
    @glfwGetCursorPos(window, xpos, ypos)

  fun glfwSetCursorPos(window: NullablePointer[GLFWwindow] tag, xpos: F64, ypos: F64): None =>
    @glfwSetCursorPos(window, xpos, ypos)

  fun glfwCreateCursor(image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateCursor(image, xhot, yhot)

  fun glfwCreateStandardCursor(shape: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateStandardCursor(shape)

  fun glfwDestroyCursor(cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwDestroyCursor(cursor)

  fun glfwSetCursor(window: NullablePointer[GLFWwindow] tag, cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwSetCursor(window, cursor)

  fun glfwEnableKeyCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetKeyCallback(window, addressof _keyCallback)

  fun @_keyCallback(window: NullablePointer[GLFWwindow] tag, key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
      @glfwGetWindowUserPointer(window).keyCallback(window, key, scancode, action, mods)

  fun glfwEnableCharCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetCharCallback(window, addressof _charCallback)

  fun @_charCallback(window: NullablePointer[GLFWwindow] tag, codepoint: U64) =>
    @glfwGetWindowUserPointer(window).charCallback(window, codepoint)

  fun glfwEnableCharModsCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetCharModsCallback(window, addressof _charModsCallback)

  fun @_charModsCallback(window: NullablePointer[GLFWwindow] tag, codepoint: U64, mods: I64) =>
    @glfwGetWindowUserPointer(window).charModsCallback(window, codepoint, mods)

  fun glfwEnableMouseButtonCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetMouseButtonCallback(window, addressof _mouseButtonCallback)

  fun @_mouseButtonCallback(window: NullablePointer[GLFWwindow] tag, button: I64, action: I64, mods: I64) =>
    @glfwGetWindowUserPointer(window).mouseButtonCallback(window, button, action, mods)

  fun glfwEnableCursorPosCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetCursorPosCallback(window, addressof _cursorPosCallback)

  fun @_cursorPosCallback(window: NullablePointer[GLFWwindow] tag, xpos: F64, ypos: F64) =>
    @glfwGetWindowUserPointer(window).cursorPosCallback(window, xpos, ypos)

  fun glfwEnableCursorEnterCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetCursorEnterCallback(window, addressof _cursorEnterCallback)

  fun @_cursorEnterCallback(window: NullablePointer[GLFWwindow] tag, entered: I64) =>
    @glfwGetWindowUserPointer(window).cursorEnterCallback(window, entered)

  fun glfwEnableScrollCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetScrollCallback(window, addressof _scrollCallback)

  fun @_scrollCallback(window: NullablePointer[GLFWwindow] tag, xoffset: F64, yoffset: F64) =>
    @glfwGetWindowUserPointer(window).scrollCallback(window, xoffset, yoffset)

  fun glfwEnableDropCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwSetDropCallback(window, addressof _dropCallback)

  fun @_dropCallback(window: NullablePointer[GLFWwindow] tag, path_count: I64, paths: Pointer[U8]) =>
    @glfwGetWindowUserPointer(window).dropCallback(window, path_count, String.from_cstring(paths).clone())

  fun glfwJoystickPresent(jid: I32): I32 =>
    @glfwJoystickPresent(jid)

  fun glfwGetJoystickAxes(jid: I32, count: Pointer[I32] tag): Pointer[F32] =>
    @glfwGetJoystickAxes(jid, count)

  fun glfwGetJoystickButtons(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickButtons(jid, count)).clone()

  fun glfwGetJoystickHats(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickHats(jid, count)).clone()

  fun glfwGetJoystickName(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickName(jid)).clone()

  fun glfwGetJoystickGUID(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickGUID(jid)).clone()

  fun glfwSetJoystickUserPointer(jid: I32, pointer: Pointer[None] tag): None =>
    @glfwSetJoystickUserPointer(jid, pointer)

  fun glfwGetJoystickUserPointer(jid: I32): Pointer[None] =>
    @glfwGetJoystickUserPointer(jid)

  fun glfwJoystickIsGamepad(jid: I32): I32 =>
    @glfwJoystickIsGamepad(jid)

  fun glfwEnableJoystickCallback() =>
    @glfwSetJoystickCallback(addressof _joystickCallback)

  fun @_joystickCallback(window: NullablePointer[GLFWwindow] tag, jid: I64, event: I64) =>
    @glfwGetWindowUserPointer(window).joystickCallback(window, jid, event)

  fun glfwUpdateGamepadMappings(string: String): I32 =>
    @glfwUpdateGamepadMappings(string.cstring())

  fun glfwGetGamepadName(jid: I32): String =>
    String.from_cstring(@glfwGetGamepadName(jid)).clone()

  fun glfwGetGamepadState(jid: I32, state: NullablePointer[GLFWgamepadstate] tag): I32 =>
    @glfwGetGamepadState(jid, state)

  fun glfwSetClipboardString(window: NullablePointer[GLFWwindow] tag, string: String): None =>
    @glfwSetClipboardString(window, string.cstring())

  fun glfwGetClipboardString(window: NullablePointer[GLFWwindow] tag): String =>
    String.from_cstring(@glfwGetClipboardString(window)).clone()

  fun glfwGetTime(): F64 =>
    @glfwGetTime()

  fun glfwSetTime(time: F64): None =>
    @glfwSetTime(time)

  fun glfwGetTimerValue(): U64 =>
    @glfwGetTimerValue()

  fun glfwGetTimerFrequency(): U64 =>
    @glfwGetTimerFrequency()

  fun glfwMakeContextCurrent(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwMakeContextCurrent(window)

  fun glfwGetCurrentContext(): NullablePointer[GLFWwindow] =>
    @glfwGetCurrentContext()

  fun glfwSwapBuffers(window: NullablePointer[GLFWwindow] tag): None =>
    @glfwSwapBuffers(window)

  fun glfwSwapInterval(interval: I32): None =>
    @glfwSwapInterval(interval)

  fun glfwExtensionSupported(extension: String): I32 =>
    @glfwExtensionSupported(extension.cstring())

  fun glfwGetProcAddress(procname: String): Pointer[None] =>
    @glfwGetProcAddress(procname.cstring())

  fun glfwVulkanSupported(): I32 =>
    @glfwVulkanSupported()

  fun glfwGetRequiredInstanceExtensions(count: Pointer[U32] tag): Pointer[Pointer[U8]] =>
    @glfwGetRequiredInstanceExtensions(count)

