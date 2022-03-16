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
use @glfwCreateWindow[NullablePointer[_GLFWwindow]](width: I32, height: I32, title: Pointer[U8] tag, monitor: NullablePointer[GLFWmonitor] tag, share: NullablePointer[_GLFWwindow] tag)
use @glfwDestroyWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwWindowShouldClose[I32](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowShouldClose[None](window: NullablePointer[_GLFWwindow] tag, value: I32)
use @glfwSetWindowTitle[None](window: NullablePointer[_GLFWwindow] tag, title: Pointer[U8] tag)
use @glfwSetWindowIcon[None](window: NullablePointer[_GLFWwindow] tag, count: I32, images: NullablePointer[GLFWimage] tag)
use @glfwGetWindowPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)
use @glfwSetWindowPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: I32, ypos: I32)
use @glfwGetWindowSize[None](window: NullablePointer[_GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwSetWindowSizeLimits[None](window: NullablePointer[_GLFWwindow] tag, minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32)
use @glfwSetWindowAspectRatio[None](window: NullablePointer[_GLFWwindow] tag, numer: I32, denom: I32)
use @glfwSetWindowSize[None](window: NullablePointer[_GLFWwindow] tag, width: I32, height: I32)
use @glfwGetFramebufferSize[None](window: NullablePointer[_GLFWwindow] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwGetWindowFrameSize[None](window: NullablePointer[_GLFWwindow] tag, left: Pointer[I32] tag, top: Pointer[I32] tag, right: Pointer[I32] tag, bottom: Pointer[I32] tag)
use @glfwGetWindowContentScale[None](window: NullablePointer[_GLFWwindow] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)
use @glfwGetWindowOpacity[F32](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowOpacity[None](window: NullablePointer[_GLFWwindow] tag, opacity: F32)
use @glfwIconifyWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwRestoreWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwMaximizeWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwShowWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwHideWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwFocusWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwRequestWindowAttention[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwGetWindowMonitor[NullablePointer[GLFWmonitor]](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowMonitor[None](window: NullablePointer[_GLFWwindow] tag, monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32)
use @glfwGetWindowAttrib[I32](window: NullablePointer[_GLFWwindow] tag, attrib: I32)
use @glfwSetWindowAttrib[None](window: NullablePointer[_GLFWwindow] tag, attrib: I32, value: I32)
use @glfwSetWindowUserPointer[None](window: NullablePointer[_GLFWwindow] tag, pointer: Window)
use @glfwGetWindowUserPointer[Window](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowPosCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowSizeCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowCloseCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowRefreshCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowFocusCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowIconifyCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowMaximizeCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetFramebufferSizeCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetWindowContentScaleCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwPollEvents[None]()
use @glfwWaitEvents[None]()
use @glfwWaitEventsTimeout[None](timeout: F64)
use @glfwPostEmptyEvent[None]()
use @glfwGetInputMode[I32](window: NullablePointer[_GLFWwindow] tag, mode: I32)
use @glfwSetInputMode[None](window: NullablePointer[_GLFWwindow] tag, mode: I32, value: I32)
use @glfwRawMouseMotionSupported[I32]()
use @glfwGetKeyName[Pointer[U8]](key: I32, scancode: I32)
use @glfwGetKeyScancode[I32](key: I32)
use @glfwGetKey[I32](window: NullablePointer[_GLFWwindow] tag, key: I32)
use @glfwGetMouseButton[I32](window: NullablePointer[_GLFWwindow] tag, button: I32)
use @glfwGetCursorPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: Pointer[F64] tag, ypos: Pointer[F64] tag)
use @glfwSetCursorPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: F64, ypos: F64)
use @glfwCreateCursor[NullablePointer[GLFWcursor]](image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32)
use @glfwCreateStandardCursor[NullablePointer[GLFWcursor]](shape: I32)
use @glfwDestroyCursor[None](cursor: NullablePointer[GLFWcursor] tag)
use @glfwSetCursor[None](window: NullablePointer[_GLFWwindow] tag, cursor: NullablePointer[GLFWcursor] tag)
use @glfwSetKeyCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCharCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCharModsCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetMouseButtonCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCursorPosCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetCursorEnterCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetScrollCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
use @glfwSetDropCallback[Pointer[None]](window: NullablePointer[_GLFWwindow] tag, callback: Pointer[None] tag)
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
use @glfwSetClipboardString[None](window: NullablePointer[_GLFWwindow] tag, string: Pointer[U8] tag)
use @glfwGetClipboardString[Pointer[U8]](window: NullablePointer[_GLFWwindow] tag)
use @glfwGetTime[F64]()
use @glfwSetTime[None](time: F64)
use @glfwGetTimerValue[U64]()
use @glfwGetTimerFrequency[U64]()
use @glfwMakeContextCurrent[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwGetCurrentContext[NullablePointer[_GLFWwindow]]()
use @glfwSwapBuffers[None](window: NullablePointer[_GLFWwindow] tag)
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

  fun glfwPollEvents(): None =>
    @glfwPollEvents()

  fun glfwWaitEvents(): None =>
    @glfwWaitEvents()

  fun glfwWaitEventsTimeout(timeout: F64): None =>
    @glfwWaitEventsTimeout(timeout)

  fun glfwPostEmptyEvent(): None =>
    @glfwPostEmptyEvent()

  fun glfwRawMouseMotionSupported(): I32 =>
    @glfwRawMouseMotionSupported()

  fun glfwGetKeyName(key: I32, scancode: I32): String =>
    String.from_cstring(@glfwGetKeyName(key, scancode)).clone()

  fun glfwGetKeyScancode(key: I32): I32 =>
    @glfwGetKeyScancode(key)

  fun glfwCreateCursor(image: NullablePointer[GLFWimage] tag, xhot: I32, yhot: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateCursor(image, xhot, yhot)

  fun glfwCreateStandardCursor(shape: I32): NullablePointer[GLFWcursor] =>
    @glfwCreateStandardCursor(shape)

  fun glfwDestroyCursor(cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwDestroyCursor(cursor)

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

  fun glfwSetJoystickCallback(callback: Pointer[None] tag) =>
    @glfwSetJoystickCallback(callback)

  fun glfwUpdateGamepadMappings(string: String): I32 =>
    @glfwUpdateGamepadMappings(string.cstring())

  fun glfwGetGamepadName(jid: I32): String =>
    String.from_cstring(@glfwGetGamepadName(jid)).clone()

  fun glfwGetGamepadState(jid: I32, state: NullablePointer[GLFWgamepadstate] tag): I32 =>
    @glfwGetGamepadState(jid, state)

  fun glfwGetTime(): F64 =>
    @glfwGetTime()

  fun glfwSetTime(time: F64): None =>
    @glfwSetTime(time)

  fun glfwGetTimerValue(): U64 =>
    @glfwGetTimerValue()

  fun glfwGetTimerFrequency(): U64 =>
    @glfwGetTimerFrequency()

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

