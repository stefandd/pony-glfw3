use "lib:glfw"

use @glfwInit[I32]()
use @glfwTerminate[None]()
use @glfwInitHint[None](hint: I32, value: I32)
use @glfwGetVersion[None](major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag)
use @glfwGetVersionString[Pointer[U8]]()
use @glfwGetError[I32](description: Pointer[Pointer[U8]] tag)
use @glfwSetErrorCallback[Pointer[None]](callback: Pointer[None] tag)
use @glfwGetMonitors[Array[NullablePointer[_GLFWmonitor]]](count: Pointer[I32] tag)
use @glfwGetPrimaryMonitor[NullablePointer[_GLFWmonitor]]()
use @glfwGetMonitorPos[None](monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag)
use @glfwGetMonitorWorkarea[None](monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag)
use @glfwGetMonitorPhysicalSize[None](monitor: NullablePointer[_GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag)
use @glfwGetMonitorContentScale[None](monitor: NullablePointer[_GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag)
use @glfwGetMonitorName[Pointer[U8]](monitor: NullablePointer[_GLFWmonitor] tag)
use @glfwSetMonitorUserPointer[None](monitor: NullablePointer[_GLFWmonitor] tag, pointer: Pointer[None] tag)
use @glfwGetMonitorUserPointer[Pointer[None]](monitor: NullablePointer[_GLFWmonitor] tag)
use @glfwSetMonitorCallback[Pointer[None]](callback: Pointer[None] tag)
use @glfwGetVideoModes[NullablePointer[_GLFWvidmode]](monitor: NullablePointer[_GLFWmonitor] tag, count: Pointer[I32] tag)
use @glfwGetVideoMode[NullablePointer[_GLFWvidmode]](monitor: NullablePointer[_GLFWmonitor] tag)
use @glfwSetGamma[None](monitor: NullablePointer[_GLFWmonitor] tag, gamma: F32)
use @glfwGetGammaRamp[NullablePointer[_GLFWgammaramp]](monitor: NullablePointer[_GLFWmonitor] tag)
use @glfwSetGammaRamp[None](monitor: NullablePointer[_GLFWmonitor] tag, ramp: NullablePointer[_GLFWgammaramp] tag)
use @glfwDefaultWindowHints[None]()
use @glfwWindowHint[None](hint: I32, value: I32)
use @glfwWindowHintString[None](hint: I32, value: Pointer[U8] tag)
use @glfwCreateWindow[NullablePointer[_GLFWwindow]](width: I32, height: I32, title: Pointer[U8] tag, monitor: NullablePointer[_GLFWmonitor] tag, share: NullablePointer[_GLFWwindow] tag)
use @glfwDestroyWindow[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwWindowShouldClose[I32](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowShouldClose[None](window: NullablePointer[_GLFWwindow] tag, value: I32)
use @glfwSetWindowTitle[None](window: NullablePointer[_GLFWwindow] tag, title: Pointer[U8] tag)
use @glfwSetWindowIcon[None](window: NullablePointer[_GLFWwindow] tag, count: I32, images: NullablePointer[_GLFWimage] tag)
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
use @glfwGetWindowMonitor[NullablePointer[_GLFWmonitor]](window: NullablePointer[_GLFWwindow] tag)
use @glfwSetWindowMonitor[None](window: NullablePointer[_GLFWwindow] tag, monitor: NullablePointer[_GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32)
use @glfwGetWindowAttrib[I32](window: NullablePointer[_GLFWwindow] tag, attrib: I32)
use @glfwSetWindowAttrib[None](window: NullablePointer[_GLFWwindow] tag, attrib: I32, value: I32)
use @glfwSetWindowUserPointer[None](window: NullablePointer[_GLFWwindow] tag, pointer: GLFWWindow)
use @glfwGetWindowUserPointer[GLFWWindow](window: NullablePointer[_GLFWwindow] tag)
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
use @glfwWaitEventsTimeout[None](timeout: F32)
use @glfwPostEmptyEvent[None]()
use @glfwGetInputMode[I32](window: NullablePointer[_GLFWwindow] tag, mode: I32)
use @glfwSetInputMode[None](window: NullablePointer[_GLFWwindow] tag, mode: I32, value: I32)
use @glfwRawMouseMotionSupported[I32]()
use @glfwGetKeyName[Pointer[U8]](key: I32, scancode: I32)
use @glfwGetKeyScancode[I32](key: I32)
use @glfwGetKey[I32](window: NullablePointer[_GLFWwindow] tag, key: I32)
use @glfwGetMouseButton[I32](window: NullablePointer[_GLFWwindow] tag, button: I32)
use @glfwGetCursorPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: Pointer[F32] tag, ypos: Pointer[F32] tag)
use @glfwSetCursorPos[None](window: NullablePointer[_GLFWwindow] tag, xpos: F32, ypos: F32)
use @glfwCreateCursor[NullablePointer[_GLFWcursor]](image: NullablePointer[_GLFWimage] tag, xhot: I32, yhot: I32)
use @glfwCreateStandardCursor[NullablePointer[_GLFWcursor]](shape: I32)
use @glfwDestroyCursor[None](cursor: NullablePointer[_GLFWcursor] tag)
use @glfwSetCursor[None](window: NullablePointer[_GLFWwindow] tag, cursor: NullablePointer[_GLFWcursor] tag)
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
use @glfwGetGamepadState[I32](jid: I32, state: NullablePointer[_GLFWgamepadstate] tag)
use @glfwSetClipboardString[None](window: NullablePointer[_GLFWwindow] tag, string: Pointer[U8] tag)
use @glfwGetClipboardString[Pointer[U8]](window: NullablePointer[_GLFWwindow] tag)
use @glfwGetTime[F32]()
use @glfwSetTime[None](time: F32)
use @glfwGetTimerValue[U32]()
use @glfwGetTimerFrequency[U32]()
use @glfwMakeContextCurrent[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwGetCurrentContext[NullablePointer[_GLFWwindow]]()
use @glfwSwapBuffers[None](window: NullablePointer[_GLFWwindow] tag)
use @glfwSwapInterval[None](interval: I32)
use @glfwExtensionSupported[I32](extension: Pointer[U8] tag)
use @glfwGetProcAddress[Pointer[None]](procname: Pointer[U8] tag)
use @glfwVulkanSupported[I32]()
use @glfwGetRequiredInstanceExtensions[Pointer[Pointer[U8]]](count: Pointer[U32] tag)

struct _GLFWvidmode
  var width: I32 = I32(0)
  var height: I32 = I32(0)
  var redBits: I32 = I32(0)
  var greenBits: I32 = I32(0)
  var blueBits: I32 = I32(0)
  var refreshRate: I32 = I32(0)

struct _GLFWimage
  var width: I32 = I32(0)
  var height: I32 = I32(0)
  var pixels: Pointer[U8] = Pointer[U8]

struct _GLFWgammaramp
  var red: Pointer[U16] = Pointer[U16]
  var green: Pointer[U16] = Pointer[U16]
  var blue: Pointer[U16] = Pointer[U16]
  var size: U32 = U32(0)

struct _GLFWgamepadstate
  var buttons: Pointer[U8] = Pointer[U8]
  var axes: Pointer[F32] = Pointer[F32]

struct _GLFWcursor
struct _GLFWwindow
struct _GLFWmonitor

primitive GLFWTrue  fun apply(): I32 => 1
primitive GLFWFalse fun apply(): I32 => 0

primitive GLFWRelease fun apply(): I32 => 0
primitive GLFWPress   fun apply(): I32 => 1
primitive GLFWRepeat  fun apply(): I32 => 2

primitive GLFWHatCentered  fun apply(): I32 => 0
primitive GLFWHatUp        fun apply(): I32 => 1
primitive GLFWHatRight     fun apply(): I32 => 2
primitive GLFWHatDown      fun apply(): I32 => 4
primitive GLFWHatLeft      fun apply(): I32 => 8
primitive GLFWHatRightUp   fun apply(): I32 => (GLFWHatRight().op_or(GLFWHatUp()))
primitive GLFWHatRightDown fun apply(): I32 => (GLFWHatRight().op_or(GLFWHatDown()))
primitive GLFWHatLeftUp    fun apply(): I32 => (GLFWHatLeft().op_or(GLFWHatUp()))
primitive GLFWHatLeftDown  fun apply(): I32 => (GLFWHatLeft().op_or(GLFWHatDown()))

primitive GLFWNoError            fun apply(): I32 => 0
primitive GLFWNotInitialized     fun apply(): I32 => 0x00010001
primitive GLFWNoCurrentContext   fun apply(): I32 => 0x00010002
primitive GLFWInvalidEnum        fun apply(): I32 => 0x00010003
primitive GLFWInvalidValue       fun apply(): I32 => 0x00010004
primitive GLFWOutOfMemory        fun apply(): I32 => 0x00010005
primitive GLFWApiUnavailable     fun apply(): I32 => 0x00010006
primitive GLFWVersionUnavailable fun apply(): I32 => 0x00010007
primitive GLFWPlatformError      fun apply(): I32 => 0x00010008
primitive GLFWFormatUnavailable  fun apply(): I32 => 0x00010009
primitive GLFWNoWindowContext    fun apply(): I32 => 0x0001000A

primitive GLFWFocused                fun apply(): I32 => 0x00020001
primitive GLFWIconified              fun apply(): I32 => 0x00020002
primitive GLFWResizable              fun apply(): I32 => 0x00020003
primitive GLFWVisible                fun apply(): I32 => 0x00020004
primitive GLFWDecorated              fun apply(): I32 => 0x00020005
primitive GLFWAutoIconify            fun apply(): I32 => 0x00020006
primitive GLFWFloating               fun apply(): I32 => 0x00020007
primitive GLFWMaximized              fun apply(): I32 => 0x00020008
primitive GLFWCenterCursor           fun apply(): I32 => 0x00020009
primitive GLFWTransparentFramebuffer fun apply(): I32 => 0x0002000A
primitive GLFWHovered                fun apply(): I32 => 0x0002000B
primitive GLFWFocusOnShow            fun apply(): I32 => 0x0002000C

primitive GLFWRedBits        fun apply(): I32 => 0x00021001
primitive GLFWGreenBits      fun apply(): I32 => 0x00021002
primitive GLFWBlueBits       fun apply(): I32 => 0x00021003
primitive GLFWAlphaBits      fun apply(): I32 => 0x00021004
primitive GLFWDepthBits      fun apply(): I32 => 0x00021005
primitive GLFWStencilBits    fun apply(): I32 => 0x00021006
primitive GLFWAccumRedBits   fun apply(): I32 => 0x00021007
primitive GLFWAccumGreenBits fun apply(): I32 => 0x00021008
primitive GLFWAccumBlueBits  fun apply(): I32 => 0x00021009
primitive GLFWAccumAlphaBits fun apply(): I32 => 0x0002100A
primitive GLFWAuxBuffers     fun apply(): I32 => 0x0002100B
primitive GLFWStereo         fun apply(): I32 => 0x0002100C
primitive GLFWSamples        fun apply(): I32 => 0x0002100D
primitive GLFWSrgbCapable    fun apply(): I32 => 0x0002100E
primitive GLFWRefreshRate    fun apply(): I32 => 0x0002100F
primitive GLFWDoublebuffer   fun apply(): I32 => 0x00021010

primitive GLFWClientApi              fun apply(): I32 => 0x00022001
primitive GLFWContextVersionMajor    fun apply(): I32 => 0x00022002
primitive GLFWContextVersionMinor    fun apply(): I32 => 0x00022003
primitive GLFWContextRevision        fun apply(): I32 => 0x00022004
primitive GLFWContextRobustness      fun apply(): I32 => 0x00022005
primitive GLFWOpenglForwardCompat    fun apply(): I32 => 0x00022006
primitive GLFWOpenglDebugContext     fun apply(): I32 => 0x00022007
primitive GLFWOpenglProfile          fun apply(): I32 => 0x00022008
primitive GLFWContextReleaseBehavior fun apply(): I32 => 0x00022009
primitive GLFWContextNoError         fun apply(): I32 => 0x0002200A
primitive GLFWContextCreationApi     fun apply(): I32 => 0x0002200B
primitive GLFWScaleToMonitor         fun apply(): I32 => 0x0002200C
primitive GLFWCocoaRetinaFramebuffer fun apply(): I32 => 0x00023001
primitive GLFWCocoaFrameName         fun apply(): I32 => 0x00023002
primitive GLFWCocoaGraphicsSwitching fun apply(): I32 => 0x00023003
primitive GLFWX11ClassName           fun apply(): I32 => 0x00024001
primitive GLFWX11InstanceName        fun apply(): I32 => 0x00024002

primitive GLFWNoApi       fun apply(): I32 => 0
primitive GLFWOpenglApi   fun apply(): I32 => 0x00030001
primitive GLFWOpenglEsApi fun apply(): I32 => 0x00030002

primitive GLFWNoRobustness        fun apply(): I32 => 0
primitive GLFWNoResetNotification fun apply(): I32 => 0x00031001
primitive GLFWLoseContextOnReset  fun apply(): I32 => 0x00031002

primitive GLFWOpenglAnyProfile    fun apply(): I32 => 0
primitive GLFWOpenglCoreProfile   fun apply(): I32 => 0x00032001
primitive GLFWOpenglCompatProfile fun apply(): I32 => 0x00032002

primitive GLFWCursor             fun apply(): I32 => 0x00033001
primitive GLFWStickyKeys         fun apply(): I32 => 0x00033002
primitive GLFWStickyMouseButtons fun apply(): I32 => 0x00033003
primitive GLFWLockKeyMods        fun apply(): I32 => 0x00033004
primitive GLFWRawMouseMotion     fun apply(): I32 => 0x00033005

primitive GLFWCursorNormal   fun apply(): I32 => 0x00034001
primitive GLFWCursorHidden   fun apply(): I32 => 0x00034002
primitive GLFWCursorDisabled fun apply(): I32 => 0x00034003

primitive GLFWAnyReleaseBehavior   fun apply(): I32 => 0
primitive GLFWReleaseBehaviorFlush fun apply(): I32 => 0x00035001
primitive GLFWReleaseBehaviorNone  fun apply(): I32 => 0x00035002

primitive GLFWNativeContextApi fun apply(): I32 => 0x00036001
primitive GLFWEglContextApi    fun apply(): I32 => 0x00036002
primitive GLFWOsmesaContextApi fun apply(): I32 => 0x00036003

primitive GLFWArrowCursor     fun apply(): I32 => 0x00036001
primitive GLFWIbeamCursor     fun apply(): I32 => 0x00036002
primitive GLFWCrosshairCursor fun apply(): I32 => 0x00036003
primitive GLFWHandCursor      fun apply(): I32 => 0x00036004
primitive GLFWHresizeCursor   fun apply(): I32 => 0x00036005
primitive GLFWVresizeCursor   fun apply(): I32 => 0x00036006

primitive GLFWConnected    fun apply(): I32 => 0x00040001
primitive GLFWDisconnected fun apply(): I32 => 0x00040002

primitive GLFWJoystickHatButtons  fun apply(): I32 => 0x00050001
primitive GLFWCocoaChdirResources fun apply(): I32 => 0x00051001
primitive GLFWCocoaMenubar        fun apply(): I32 => 0x00051002

primitive GLFWDontCare fun apply(): I32 => -1

primitive GLFWKeyUnknown fun apply(): I32 => -1

primitive GLFWKeySpace fun apply(): I32 => 32
primitive GLFWKey0     fun apply(): I32 => 48
primitive GLFWKey1     fun apply(): I32 => 49
primitive GLFWKey2     fun apply(): I32 => 50
primitive GLFWKey3     fun apply(): I32 => 51
primitive GLFWKey4     fun apply(): I32 => 52
primitive GLFWKey5     fun apply(): I32 => 53
primitive GLFWKey6     fun apply(): I32 => 54
primitive GLFWKey7     fun apply(): I32 => 55
primitive GLFWKey8     fun apply(): I32 => 56
primitive GLFWKey9     fun apply(): I32 => 57
primitive GLFWKeyA     fun apply(): I32 => 65
primitive GLFWKeyB     fun apply(): I32 => 66
primitive GLFWKeyC     fun apply(): I32 => 67
primitive GLFWKeyD     fun apply(): I32 => 68
primitive GLFWKeyE     fun apply(): I32 => 69
primitive GLFWKeyF     fun apply(): I32 => 70
primitive GLFWKeyG     fun apply(): I32 => 71
primitive GLFWKeyH     fun apply(): I32 => 72
primitive GLFWKeyI     fun apply(): I32 => 73
primitive GLFWKeyJ     fun apply(): I32 => 74
primitive GLFWKeyK     fun apply(): I32 => 75
primitive GLFWKeyL     fun apply(): I32 => 76
primitive GLFWKeyM     fun apply(): I32 => 77
primitive GLFWKeyN     fun apply(): I32 => 78
primitive GLFWKeyO     fun apply(): I32 => 79
primitive GLFWKeyP     fun apply(): I32 => 80
primitive GLFWKeyQ     fun apply(): I32 => 81
primitive GLFWKeyR     fun apply(): I32 => 82
primitive GLFWKeyS     fun apply(): I32 => 83
primitive GLFWKeyT     fun apply(): I32 => 84
primitive GLFWKeyU     fun apply(): I32 => 85
primitive GLFWKeyV     fun apply(): I32 => 86
primitive GLFWKeyW     fun apply(): I32 => 87
primitive GLFWKeyX     fun apply(): I32 => 88
primitive GLFWKeyY     fun apply(): I32 => 89
primitive GLFWKeyZ     fun apply(): I32 => 90

primitive GLFWKeyEscape       fun apply(): I32 => 256
primitive GLFWKeyEnter        fun apply(): I32 => 257
primitive GLFWKeyTab          fun apply(): I32 => 258
primitive GLFWKeyBackspace    fun apply(): I32 => 259
primitive GLFWKeyInsert       fun apply(): I32 => 260
primitive GLFWKeyDelete       fun apply(): I32 => 261
primitive GLFWKeyRight        fun apply(): I32 => 262
primitive GLFWKeyLeft         fun apply(): I32 => 263
primitive GLFWKeyDown         fun apply(): I32 => 232
primitive GLFWKeyUp           fun apply(): I32 => 265
primitive GLFWKeyPageUp       fun apply(): I32 => 266
primitive GLFWKeyPageDown     fun apply(): I32 => 267
primitive GLFWKeyHome         fun apply(): I32 => 268
primitive GLFWKeyEnd          fun apply(): I32 => 269
primitive GLFWKeyCapsLock     fun apply(): I32 => 280
primitive GLFWKeyScrollLock   fun apply(): I32 => 281
primitive GLFWKeyNumLock      fun apply(): I32 => 282
primitive GLFWKeyPrintScreen  fun apply(): I32 => 283
primitive GLFWKeyPause        fun apply(): I32 => 284
primitive GLFWKeyF1           fun apply(): I32 => 290
primitive GLFWKeyF2           fun apply(): I32 => 291
primitive GLFWKeyF3           fun apply(): I32 => 292
primitive GLFWKeyF4           fun apply(): I32 => 293
primitive GLFWKeyF5           fun apply(): I32 => 294
primitive GLFWKeyF6           fun apply(): I32 => 295
primitive GLFWKeyF7           fun apply(): I32 => 296
primitive GLFWKeyF8           fun apply(): I32 => 297
primitive GLFWKeyF9           fun apply(): I32 => 298
primitive GLFWKeyF10          fun apply(): I32 => 299
primitive GLFWKeyF11          fun apply(): I32 => 300
primitive GLFWKeyF12          fun apply(): I32 => 301
primitive GLFWKeyF13          fun apply(): I32 => 302
primitive GLFWKeyF14          fun apply(): I32 => 303
primitive GLFWKeyF15          fun apply(): I32 => 304
primitive GLFWKeyF16          fun apply(): I32 => 305
primitive GLFWKeyF17          fun apply(): I32 => 306
primitive GLFWKeyF18          fun apply(): I32 => 307
primitive GLFWKeyF19          fun apply(): I32 => 308
primitive GLFWKeyF20          fun apply(): I32 => 309
primitive GLFWKeyF21          fun apply(): I32 => 310
primitive GLFWKeyF22          fun apply(): I32 => 311
primitive GLFWKeyF23          fun apply(): I32 => 312
primitive GLFWKeyF24          fun apply(): I32 => 313
primitive GLFWKeyF25          fun apply(): I32 => 314
primitive GLFWKeyKp0          fun apply(): I32 => 320
primitive GLFWKeyKp1          fun apply(): I32 => 321
primitive GLFWKeyKp2          fun apply(): I32 => 322
primitive GLFWKeyKp3          fun apply(): I32 => 323
primitive GLFWKeyKp4          fun apply(): I32 => 324
primitive GLFWKeyKp5          fun apply(): I32 => 325
primitive GLFWKeyKp6          fun apply(): I32 => 326
primitive GLFWKeyKp7          fun apply(): I32 => 327
primitive GLFWKeyKp8          fun apply(): I32 => 328
primitive GLFWKeyKp9          fun apply(): I32 => 329
primitive GLFWKeyKpDecimal    fun apply(): I32 => 330
primitive GLFWKeyKpDivide     fun apply(): I32 => 331
primitive GLFWKeyKpMultiply   fun apply(): I32 => 332
primitive GLFWKeyKpSubtract   fun apply(): I32 => 333
primitive GLFWKeyKpAdd        fun apply(): I32 => 334
primitive GLFWKeyKpEnter      fun apply(): I32 => 335
primitive GLFWKeyKpEqual      fun apply(): I32 => 336
primitive GLFWKeyLeftShift    fun apply(): I32 => 340
primitive GLFWKeyLeftControl  fun apply(): I32 => 341
primitive GLFWKeyLeftAlt      fun apply(): I32 => 342
primitive GLFWKeyLeftSuper    fun apply(): I32 => 343
primitive GLFWKeyRightShift   fun apply(): I32 => 344
primitive GLFWKeyRightControl fun apply(): I32 => 345
primitive GLFWKeyRightAlt     fun apply(): I32 => 346
primitive GLFWKeyRightSuper   fun apply(): I32 => 347
primitive GLFWKeyMenu         fun apply(): I32 => 348

primitive GLFWMouseButton1      fun apply(): I32 => 0
primitive GLFWMouseButton2      fun apply(): I32 => 1
primitive GLFWMouseButton3      fun apply(): I32 => 2
primitive GLFWMouseButton4      fun apply(): I32 => 3
primitive GLFWMouseButton5      fun apply(): I32 => 4
primitive GLFWMouseButton6      fun apply(): I32 => 5
primitive GLFWMouseButton7      fun apply(): I32 => 6
primitive GLFWMouseButton8      fun apply(): I32 => 7
primitive GLFWMouseButtonLast   fun apply(): I32 => GLFWMouseButton8()
primitive GLFWMouseButtonLeft   fun apply(): I32 => GLFWMouseButton1()
primitive GLFWMouseButtonRight  fun apply(): I32 => GLFWMouseButton2()
primitive GLFWMouseButtonMiddle fun apply(): I32 => GLFWMouseButton3()

primitive GLFWGamepadButtonA           fun apply(): I32 => 0
primitive GLFWGamepadButtonB           fun apply(): I32 => 1
primitive GLFWGamepadButtonX           fun apply(): I32 => 2
primitive GLFWGamepadButtonY           fun apply(): I32 => 3
primitive GLFWGamepadButtonLeftBumper  fun apply(): I32 => 4
primitive GLFWGamepadButtonRightBumper fun apply(): I32 => 5
primitive GLFWGamepadButtonBack        fun apply(): I32 => 6
primitive GLFWGamepadButtonStart       fun apply(): I32 => 7
primitive GLFWGamepadButtonGuide       fun apply(): I32 => 8
primitive GLFWGamepadButtonLeftThumb   fun apply(): I32 => 9
primitive GLFWGamepadButtonRightThumb  fun apply(): I32 => 10
primitive GLFWGamepadButtonDpadUp      fun apply(): I32 => 11
primitive GLFWGamepadButtonDpadRight   fun apply(): I32 => 12
primitive GLFWGamepadButtonDpadDown    fun apply(): I32 => 13
primitive GLFWGamepadButtonDpadLeft    fun apply(): I32 => 14
primitive GLFWGamepadButtonLast        fun apply(): I32 => GLFWGamepadButtonDpadLeft()
primitive GLFWGamepadButtonCross       fun apply(): I32 => GLFWGamepadButtonA()
primitive GLFWGamepadButtonCircle      fun apply(): I32 => GLFWGamepadButtonB()
primitive GLFWGamepadButtonSquare      fun apply(): I32 => GLFWGamepadButtonX()
primitive GLFWGamepadButtonTriangle    fun apply(): I32 => GLFWGamepadButtonY()
primitive GLFWGamepadAxisLeftX         fun apply(): I32 => 0
primitive GLFWGamepadAxisLeftY         fun apply(): I32 => 1
primitive GLFWGamepadAxisRightX        fun apply(): I32 => 2
primitive GLFWGamepadAxisRightY        fun apply(): I32 => 3
primitive GLFWGamepadAxisLeftTrigger   fun apply(): I32 => 4
primitive GLFWGamepadAxisRightTrigger  fun apply(): I32 => 5

primitive GLFWJoystick1  fun apply(): I32 => 0
primitive GLFWJoystick2  fun apply(): I32 => 1
primitive GLFWJoystick3  fun apply(): I32 => 2
primitive GLFWJoystick4  fun apply(): I32 => 3
primitive GLFWJoystick5  fun apply(): I32 => 4
primitive GLFWJoystick6  fun apply(): I32 => 5
primitive GLFWJoystick7  fun apply(): I32 => 6
primitive GLFWJoystick8  fun apply(): I32 => 7
primitive GLFWJoystick9  fun apply(): I32 => 8
primitive GLFWJoystick10 fun apply(): I32 => 9
primitive GLFWJoystick11 fun apply(): I32 => 10
primitive GLFWJoystick12 fun apply(): I32 => 11
primitive GLFWJoystick13 fun apply(): I32 => 12
primitive GLFWJoystick14 fun apply(): I32 => 13
primitive GLFWJoystick15 fun apply(): I32 => 14
primitive GLFWJoystick16 fun apply(): I32 => 15

primitive GLFW
  fun init(): I32 =>
    @glfwInit()

  fun terminate(): None =>
    @glfwTerminate()

  fun init_hint(hint: I32, value: I32): None =>
    @glfwInitHint(hint, value)

  fun get_version(major: Pointer[I32] tag, minor: Pointer[I32] tag, rev: Pointer[I32] tag): None =>
    @glfwGetVersion(major, minor, rev)

  fun get_version_string(): String =>
    String.from_cstring(@glfwGetVersionString()).clone()

  fun get_error(description: Pointer[Pointer[U8]] tag): I32 =>
    @glfwGetError(description)

  fun set_error_callback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetErrorCallback(callback)

  fun get_monitors(count: Pointer[I32] tag): Array[NullablePointer[_GLFWmonitor]] =>
    @glfwGetMonitors(count)

  fun get_primary_monitor(): NullablePointer[_GLFWmonitor] =>
    @glfwGetPrimaryMonitor()

  fun get_monitor_pos(monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetMonitorPos(monitor, xpos, ypos)

  fun get_monitor_workarea(monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height)

  fun get_monitor_physical_size(monitor: NullablePointer[_GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag): None =>
    @glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM)

  fun get_monitor_content_scale(monitor: NullablePointer[_GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetMonitorContentScale(monitor, xscale, yscale)

  fun get_monitor_name(monitor: NullablePointer[_GLFWmonitor] tag): String =>
    String.from_cstring(@glfwGetMonitorName(monitor)).clone()

  fun set_monitor_user_pointer(monitor: NullablePointer[_GLFWmonitor] tag, pointer: Pointer[None] tag): None =>
    @glfwSetMonitorUserPointer(monitor, pointer)

  fun get_monitor_user_pointer(monitor: NullablePointer[_GLFWmonitor] tag): Pointer[None] =>
    @glfwGetMonitorUserPointer(monitor)

  fun set_monitor_callback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetMonitorCallback(callback)

  fun get_video_modes(monitor: NullablePointer[_GLFWmonitor] tag, count: Pointer[I32] tag): NullablePointer[_GLFWvidmode] =>
    @glfwGetVideoModes(monitor, count)

  fun get_video_mode(monitor: NullablePointer[_GLFWmonitor] tag): NullablePointer[_GLFWvidmode] =>
    @glfwGetVideoMode(monitor)

  fun set_gamma(monitor: NullablePointer[_GLFWmonitor] tag, gamma: F32): None =>
    @glfwSetGamma(monitor, gamma)

  fun get_gamma_ramp(monitor: NullablePointer[_GLFWmonitor] tag): NullablePointer[_GLFWgammaramp] =>
    @glfwGetGammaRamp(monitor)

  fun set_gamma_ramp(monitor: NullablePointer[_GLFWmonitor] tag, ramp: NullablePointer[_GLFWgammaramp] tag): None =>
    @glfwSetGammaRamp(monitor, ramp)

  fun default_window_hints(): None =>
    @glfwDefaultWindowHints()

  fun window_hint(hint: I32, value: I32): None =>
    @glfwWindowHint(hint, value)

  fun window_hint_string(hint: I32, value: String): None =>
    @glfwWindowHintString(hint, value.cstring())

  fun poll_events(): None =>
    @glfwPollEvents()

  fun wait_events(): None =>
    @glfwWaitEvents()

  fun wait_events_timeout(timeout: F32): None =>
    @glfwWaitEventsTimeout(timeout)

  fun post_empty_event(): None =>
    @glfwPostEmptyEvent()

  fun raw_mouse_motion_supported(): I32 =>
    @glfwRawMouseMotionSupported()

  fun get_key_name(key: I32, scancode: I32): String =>
    String.from_cstring(@glfwGetKeyName(key, scancode)).clone()

  fun get_key_scancode(key: I32): I32 =>
    @glfwGetKeyScancode(key)

  fun create_cursor(image: NullablePointer[_GLFWimage] tag, xhot: I32, yhot: I32): NullablePointer[_GLFWcursor] =>
    @glfwCreateCursor(image, xhot, yhot)

  fun create_standard_cursor(shape: I32): NullablePointer[_GLFWcursor] =>
    @glfwCreateStandardCursor(shape)

  fun destroy_cursor(cursor: NullablePointer[_GLFWcursor] tag): None =>
    @glfwDestroyCursor(cursor)

  fun joystick_present(jid: I32): I32 =>
    @glfwJoystickPresent(jid)

  fun get_joystick_axes(jid: I32, count: Pointer[I32] tag): Pointer[F32] =>
    @glfwGetJoystickAxes(jid, count)

  fun get_joystick_buttons(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickButtons(jid, count)).clone()

  fun get_joystick_hats(jid: I32, count: Pointer[I32] tag): String =>
    String.from_cstring(@glfwGetJoystickHats(jid, count)).clone()

  fun get_joystick_name(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickName(jid)).clone()

  fun get_joystick_guid(jid: I32): String =>
    String.from_cstring(@glfwGetJoystickGUID(jid)).clone()

  fun set_joystick_user_pointer(jid: I32, pointer: Pointer[None] tag): None =>
    @glfwSetJoystickUserPointer(jid, pointer)

  fun get_joystick_user_pointer(jid: I32): Pointer[None] =>
    @glfwGetJoystickUserPointer(jid)

  fun joystick_is_gamepad(jid: I32): I32 =>
    @glfwJoystickIsGamepad(jid)

  fun set_joystick_callback(callback: Pointer[None] tag) =>
    @glfwSetJoystickCallback(callback)

  fun update_gamepad_mappings(string: String): I32 =>
    @glfwUpdateGamepadMappings(string.cstring())

  fun get_gamepad_name(jid: I32): String =>
    String.from_cstring(@glfwGetGamepadName(jid)).clone()

  fun get_gamepad_state(jid: I32, state: NullablePointer[_GLFWgamepadstate] tag): I32 =>
    @glfwGetGamepadState(jid, state)

  fun get_time(): F32 =>
    @glfwGetTime()

  fun set_time(time: F32): None =>
    @glfwSetTime(time)

  fun get_timer_value(): U32 =>
    @glfwGetTimerValue()

  fun get_timer_frequency(): U32 =>
    @glfwGetTimerFrequency()

  fun swap_interval(interval: I32): None =>
    @glfwSwapInterval(interval)

  fun extension_supported(extension: String): I32 =>
    @glfwExtensionSupported(extension.cstring())

  fun get_proc_address(procname: String): Pointer[None] =>
    @glfwGetProcAddress(procname.cstring())

  fun vulkan_supported(): I32 =>
    @glfwVulkanSupported()

  fun get_required_instance_extensions(count: Pointer[U32] tag): Pointer[Pointer[U8]] =>
    @glfwGetRequiredInstanceExtensions(count)

