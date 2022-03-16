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

primitive GLFW

  fun key_unknown(): I64 => -1

  /* Printable keys */
  fun key_space(): I64 => 32
  fun key_apostrophe(): I64 => 39  /* ' */
  fun key_comma(): I64 => 44  /* , */
  fun key_minus(): I64 => 45  /* - */
  fun key_period(): I64 => 46  /* . */
  fun key_slash(): I64 => 47  /* / */
  fun key_0(): I64 => 48
  fun key_1(): I64 => 49
  fun key_2(): I64 => 50
  fun key_3(): I64 => 51
  fun key_4(): I64 => 52
  fun key_5(): I64 => 53
  fun key_6(): I64 => 54
  fun key_7(): I64 => 55
  fun key_8(): I64 => 56
  fun key_9(): I64 => 57
  fun key_semicolon(): I64 => 59  /* ; */
  fun key_equal(): I64 => 61  /* = */
  fun key_a(): I64 => 65
  fun key_b(): I64 => 66
  fun key_c(): I64 => 67
  fun key_d(): I64 => 68
  fun key_e(): I64 => 69
  fun key_f(): I64 => 70
  fun key_g(): I64 => 71
  fun key_h(): I64 => 72
  fun key_i(): I64 => 73
  fun key_j(): I64 => 74
  fun key_k(): I64 => 75
  fun key_l(): I64 => 76
  fun key_m(): I64 => 77
  fun key_n(): I64 => 78
  fun key_o(): I64 => 79
  fun key_p(): I64 => 80
  fun key_q(): I64 => 81
  fun key_r(): I64 => 82
  fun key_s(): I64 => 83
  fun key_t(): I64 => 84
  fun key_u(): I64 => 85
  fun key_v(): I64 => 86
  fun key_w(): I64 => 87
  fun key_x(): I64 => 88
  fun key_y(): I64 => 89
  fun key_z(): I64 => 90
  fun key_left_bracket(): I64 => 91  /* [ */
  fun key_backslash(): I64 => 92  /* \ */
  fun key_right_bracket(): I64 => 93  /* ] */
  fun key_grave_accent(): I64 => 96  /* ` */
  fun key_world_1(): I64 => 161 /* non-US #1 */
  fun key_world_2(): I64 => 162 /* non-US #2 */

  /* Function keys */
  fun key_escape(): I64 => 256
  fun key_enter(): I64 => 257
  fun key_tab(): I64 => 258
  fun key_backspace(): I64 => 259
  fun key_insert(): I64 => 260
  fun key_delete(): I64 => 261
  fun key_right(): I64 => 262
  fun key_left(): I64 => 263
  fun key_down(): I64 => 264
  fun key_up(): I64 => 265
  fun key_page_up(): I64 => 266
  fun key_page_down(): I64 => 267
  fun key_home(): I64 => 268
  fun key_end(): I64 => 269
  fun key_caps_lock(): I64 => 280
  fun key_scroll_lock(): I64 => 281
  fun key_num_lock(): I64 => 282
  fun key_print_screen(): I64 => 283
  fun key_pause(): I64 => 284
  fun key_f1(): I64 => 290
  fun key_f2(): I64 => 291
  fun key_f3(): I64 => 292
  fun key_f4(): I64 => 293
  fun key_f5(): I64 => 294
  fun key_f6(): I64 => 295
  fun key_f7(): I64 => 296
  fun key_f8(): I64 => 297
  fun key_f9(): I64 => 298
  fun key_f10(): I64 => 299
  fun key_f11(): I64 => 300
  fun key_f12(): I64 => 301
  fun key_f13(): I64 => 302
  fun key_f14(): I64 => 303
  fun key_f15(): I64 => 304
  fun key_f16(): I64 => 305
  fun key_f17(): I64 => 306
  fun key_f18(): I64 => 307
  fun key_f19(): I64 => 308
  fun key_f20(): I64 => 309
  fun key_f21(): I64 => 310
  fun key_f22(): I64 => 311
  fun key_f23(): I64 => 312
  fun key_f24(): I64 => 313
  fun key_f25(): I64 => 314
  fun key_kp_0(): I64 => 320
  fun key_kp_1(): I64 => 321
  fun key_kp_2(): I64 => 322
  fun key_kp_3(): I64 => 323
  fun key_kp_4(): I64 => 324
  fun key_kp_5(): I64 => 325
  fun key_kp_6(): I64 => 326
  fun key_kp_7(): I64 => 327
  fun key_kp_8(): I64 => 328
  fun key_kp_9(): I64 => 329
  fun key_kp_decimal(): I64 => 330
  fun key_kp_divide(): I64 => 331
  fun key_kp_multiply(): I64 => 332
  fun key_kp_subtract(): I64 => 333
  fun key_kp_add(): I64 => 334
  fun key_kp_enter(): I64 => 335
  fun key_kp_equal(): I64 => 336
  fun key_left_shift(): I64 => 340
  fun key_left_control(): I64 => 341
  fun key_left_alt(): I64 => 342
  fun key_left_super(): I64 => 343
  fun key_right_shift(): I64 => 344
  fun key_right_control(): I64 => 345
  fun key_right_alt(): I64 => 346
  fun key_right_super(): I64 => 347
  fun key_menu(): I64 => 348

  fun mouse_button_1(): I64 => 0
  fun mouse_button_2(): I64 => 1
  fun mouse_button_3(): I64 => 2
  fun mouse_button_4(): I64 => 3
  fun mouse_button_5(): I64 => 4
  fun mouse_button_6(): I64 => 5
  fun mouse_button_7(): I64 => 6
  fun mouse_button_8(): I64 => 7
  fun mouse_button_last(): I64 => mouse_button_8()
  fun mouse_button_left(): I64 => mouse_button_1()
  fun mouse_button_right(): I64 => mouse_button_2()
  fun mouse_button_middle(): I64 => mouse_button_3()

  fun gamepad_button_a(): I64 => 0
  fun gamepad_button_b(): I64 => 1
  fun gamepad_button_x(): I64 => 2
  fun gamepad_button_y(): I64 => 3
  fun gamepad_button_left_bumper(): I64 => 4
  fun gamepad_button_right_bumper(): I64 => 5
  fun gamepad_button_back(): I64 => 6
  fun gamepad_button_start(): I64 => 7
  fun gamepad_button_guide(): I64 => 8
  fun gamepad_button_left_thumb(): I64 => 9
  fun gamepad_button_right_thumb(): I64 => 10
  fun gamepad_button_dpad_up(): I64 => 11
  fun gamepad_button_dpad_right(): I64 => 12
  fun gamepad_button_dpad_down(): I64 => 13
  fun gamepad_button_dpad_left(): I64 => 14
  fun gamepad_button_last(): I64 => gamepad_button_dpad_left()
  fun gamepad_button_cross(): I64 => gamepad_button_a()
  fun gamepad_button_circle(): I64 => gamepad_button_b()
  fun gamepad_button_square(): I64 => gamepad_button_x()
  fun gamepad_button_triangle(): I64 => gamepad_button_y()
  fun gamepad_axis_left_x(): I64 => 0
  fun gamepad_axis_left_y(): I64 => 1
  fun gamepad_axis_right_x(): I64 => 2
  fun gamepad_axis_right_y(): I64 => 3
  fun gamepad_axis_left_trigger(): I64 => 4
  fun gamepad_axis_right_trigger(): I64 => 5

  fun joystick_1(): I64 => 0
  fun joystick_2(): I64 => 1
  fun joystick_3(): I64 => 2
  fun joystick_4(): I64 => 3
  fun joystick_5(): I64 => 4
  fun joystick_6(): I64 => 5
  fun joystick_7(): I64 => 6
  fun joystick_8(): I64 => 7
  fun joystick_9(): I64 => 8
  fun joystick_10(): I64 => 9
  fun joystick_11(): I64 => 10
  fun joystick_12(): I64 => 11
  fun joystick_13(): I64 => 12
  fun joystick_14(): I64 => 13
  fun joystick_15(): I64 => 14
  fun joystick_16(): I64 => 15

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

  fun glfwGetMonitors(count: Pointer[I32] tag): Array[NullablePointer[_GLFWmonitor]] =>
    @glfwGetMonitors(count)

  fun glfwGetPrimaryMonitor(): NullablePointer[_GLFWmonitor] =>
    @glfwGetPrimaryMonitor()

  fun glfwGetMonitorPos(monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag): None =>
    @glfwGetMonitorPos(monitor, xpos, ypos)

  fun glfwGetMonitorWorkarea(monitor: NullablePointer[_GLFWmonitor] tag, xpos: Pointer[I32] tag, ypos: Pointer[I32] tag, width: Pointer[I32] tag, height: Pointer[I32] tag): None =>
    @glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height)

  fun glfwGetMonitorPhysicalSize(monitor: NullablePointer[_GLFWmonitor] tag, widthMM: Pointer[I32] tag, heightMM: Pointer[I32] tag): None =>
    @glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM)

  fun glfwGetMonitorContentScale(monitor: NullablePointer[_GLFWmonitor] tag, xscale: Pointer[F32] tag, yscale: Pointer[F32] tag): None =>
    @glfwGetMonitorContentScale(monitor, xscale, yscale)

  fun glfwGetMonitorName(monitor: NullablePointer[_GLFWmonitor] tag): String =>
    String.from_cstring(@glfwGetMonitorName(monitor)).clone()

  fun glfwSetMonitorUserPointer(monitor: NullablePointer[_GLFWmonitor] tag, pointer: Pointer[None] tag): None =>
    @glfwSetMonitorUserPointer(monitor, pointer)

  fun glfwGetMonitorUserPointer(monitor: NullablePointer[_GLFWmonitor] tag): Pointer[None] =>
    @glfwGetMonitorUserPointer(monitor)

  fun glfwSetMonitorCallback(callback: Pointer[None] tag): Pointer[None] =>
    @glfwSetMonitorCallback(callback)

  fun glfwGetVideoModes(monitor: NullablePointer[_GLFWmonitor] tag, count: Pointer[I32] tag): NullablePointer[_GLFWvidmode] =>
    @glfwGetVideoModes(monitor, count)

  fun glfwGetVideoMode(monitor: NullablePointer[_GLFWmonitor] tag): NullablePointer[_GLFWvidmode] =>
    @glfwGetVideoMode(monitor)

  fun glfwSetGamma(monitor: NullablePointer[_GLFWmonitor] tag, gamma: F32): None =>
    @glfwSetGamma(monitor, gamma)

  fun glfwGetGammaRamp(monitor: NullablePointer[_GLFWmonitor] tag): NullablePointer[_GLFWgammaramp] =>
    @glfwGetGammaRamp(monitor)

  fun glfwSetGammaRamp(monitor: NullablePointer[_GLFWmonitor] tag, ramp: NullablePointer[_GLFWgammaramp] tag): None =>
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

  fun glfwCreateCursor(image: NullablePointer[_GLFWimage] tag, xhot: I32, yhot: I32): NullablePointer[_GLFWcursor] =>
    @glfwCreateCursor(image, xhot, yhot)

  fun glfwCreateStandardCursor(shape: I32): NullablePointer[_GLFWcursor] =>
    @glfwCreateStandardCursor(shape)

  fun glfwDestroyCursor(cursor: NullablePointer[_GLFWcursor] tag): None =>
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

  fun glfwGetGamepadState(jid: I32, state: NullablePointer[_GLFWgamepadstate] tag): I32 =>
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

