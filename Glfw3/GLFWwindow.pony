

/*
  Source: /nix/store/rd17pyv1cc63n281wv414xkig6vwadr3-glfw-3.3.4/include/GLFW/glfw3.h:1182
  Original Name: _GLFWwindow
  Struct Size (bits):
  Struct Align (bits):

  Fields (Offset in bits):
*/
struct _GLFWwindow

interface WindowListener
  fun windowPosCallback(xpos: I64 val, ypos: I64 val) => None
  fun windowSizeCallback(width: I64 val, height: I64 val) => None
  fun windowCloseCallback() => None
  fun windowRefreshCallback() => None
  fun windowFocusCallback(focused: I64) => None
  fun windowIconifyCallback(iconified: I64) => None
  fun windowMaximizeCallback(maximized: I64) => None
  fun framebufferSizeCallback(width: I64, height: I64) => None
  fun windowContentScaleCallback(xscale: F64, yscale: F64) => None
  fun keyCallback(key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) => None
  fun charCallback(codepoint: U64) => None
  fun charModsCallback(codepoint: U64, mods: I64) => None
  fun mouseButtonCallback(button: I64, action: I64, mods: I64) => None
  fun cursorPosCallback(xpos: F64, ypos: F64) => None
  fun cursorEnterCallback(entered: I64) => None
  fun scrollCallback(xoffset: F64, yoffset: F64) => None
  fun dropCallback(path_count: I64, paths: String) => None
  fun joystickCallback(jid: I64, event: I64) => None

class DefaultWindowListener is WindowListener

class Window
  let _window: NullablePointer[_GLFWwindow]
  var _listener: WindowListener box = DefaultWindowListener

  new create(width: I32, height: I32, title: String) =>
    _window = @glfwCreateWindow(width, height, title.cstring(), NullablePointer[GLFWmonitor].none(), NullablePointer[_GLFWwindow].none())
    @glfwSetWindowUserPointer(_window, this)

  fun _final() =>
    @glfwDestroyWindow(_window)

  fun ref setListener(listener: WindowListener box) =>
    _listener = listener

  fun makeContextCurrent(): None =>
    @glfwMakeContextCurrent(_window)

  fun enableKeyCallback() =>
    @glfwSetKeyCallback(_window, addressof _keyCallback)

  fun @_keyCallback(window: NullablePointer[_GLFWwindow] tag, key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.keyCallback(key, scancode, action, mods)

  fun enableWindowPosCallback() =>
    @glfwSetWindowPosCallback(_window, addressof _windowPosCallback)

  fun @_windowPosCallback(window: NullablePointer[_GLFWwindow] tag, xpos: I64 val, ypos: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.windowPosCallback(xpos, ypos)

  fun enableWindowSizeCallback() =>
    @glfwSetWindowSizeCallback(_window, addressof _windowSizeCallback)

  fun @_windowSizeCallback(window: NullablePointer[_GLFWwindow] tag, width: I64 val, height: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.windowSizeCallback(width, height)

  fun enableWindowCloseCallback() =>
    @glfwSetWindowCloseCallback(_window, addressof _windowCloseCallback)

  fun @_windowCloseCallback(window: NullablePointer[_GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.windowCloseCallback()

  fun enableWindowRefreshCallback() =>
    @glfwSetWindowRefreshCallback(_window, addressof _windowRefreshCallback)

  fun @_windowRefreshCallback(window: NullablePointer[_GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.windowRefreshCallback()

  fun enableWindowFocusCallback() =>
    @glfwSetWindowFocusCallback(_window, addressof _windowFocusCallback)

  fun @_windowFocusCallback(window: NullablePointer[_GLFWwindow] tag, focused: I64) =>
    @glfwGetWindowUserPointer(window)._listener.windowFocusCallback(focused)

  fun enableWindowIconifyCallback() =>
    @glfwSetWindowIconifyCallback(_window, addressof _windowIconifyCallback)

  fun @_windowIconifyCallback(window: NullablePointer[_GLFWwindow] tag, iconified: I64) =>
    @glfwGetWindowUserPointer(window)._listener.windowIconifyCallback(iconified)

  fun enableWindowMaximizeCallback() =>
    @glfwSetWindowMaximizeCallback(_window, addressof _windowMaximizeCallback)

  fun @_windowMaximizeCallback(window: NullablePointer[_GLFWwindow] tag, maximized: I64) =>
    @glfwGetWindowUserPointer(window)._listener.windowMaximizeCallback(maximized)

  fun framebufferSizeCallback() =>
    @glfwSetFramebufferSizeCallback(_window, addressof _framebufferSizeCallback)

  fun @_framebufferSizeCallback(window: NullablePointer[_GLFWwindow] tag, width: I64, height: I64) =>
    @glfwGetWindowUserPointer(window)._listener.framebufferSizeCallback(width, height)

  fun enableWindowContentScaleCallback() =>
    @glfwSetWindowContentScaleCallback(_window, addressof _windowContentScaleCallback)

  fun @_windowContentScaleCallback(window: NullablePointer[_GLFWwindow] tag, xscale: F64, yscale: F64) =>
    @glfwGetWindowUserPointer(window)._listener.windowContentScaleCallback(xscale, yscale)

  fun enableCharCallback() =>
    @glfwSetCharCallback(_window, addressof _charCallback)

  fun @_charCallback(window: NullablePointer[_GLFWwindow] tag, codepoint: U64) =>
    @glfwGetWindowUserPointer(window)._listener.charCallback(codepoint)

  fun enableCharModsCallback() =>
    @glfwSetCharModsCallback(_window, addressof _charModsCallback)

  fun @_charModsCallback(window: NullablePointer[_GLFWwindow] tag, codepoint: U64, mods: I64) =>
    @glfwGetWindowUserPointer(window)._listener.charModsCallback(codepoint, mods)

  fun enableMouseButtonCallback() =>
    @glfwSetMouseButtonCallback(_window, addressof _mouseButtonCallback)

  fun @_mouseButtonCallback(window: NullablePointer[_GLFWwindow] tag, button: I64, action: I64, mods: I64) =>
    @glfwGetWindowUserPointer(window)._listener.mouseButtonCallback(button, action, mods)

  fun enableCursorPosCallback() =>
    @glfwSetCursorPosCallback(_window, addressof _cursorPosCallback)

  fun @_cursorPosCallback(window: NullablePointer[_GLFWwindow] tag, xpos: F64, ypos: F64) =>
    @glfwGetWindowUserPointer(window)._listener.cursorPosCallback(xpos, ypos)

  fun enableCursorEnterCallback() =>
    @glfwSetCursorEnterCallback(_window, addressof _cursorEnterCallback)

  fun @_cursorEnterCallback(window: NullablePointer[_GLFWwindow] tag, entered: I64) =>
    @glfwGetWindowUserPointer(window)._listener.cursorEnterCallback(entered)

  fun enableScrollCallback() =>
    @glfwSetScrollCallback(_window, addressof _scrollCallback)

  fun @_scrollCallback(window: NullablePointer[_GLFWwindow] tag, xoffset: F64, yoffset: F64) =>
    @glfwGetWindowUserPointer(window)._listener.scrollCallback(xoffset, yoffset)

  fun enableDropCallback() =>
    @glfwSetDropCallback(_window, addressof _dropCallback)

  fun @_dropCallback(window: NullablePointer[_GLFWwindow] tag, path_count: I64, paths: Pointer[U8]) =>
    @glfwGetWindowUserPointer(window)._listener.dropCallback(path_count, String.from_cstring(paths).clone())

  fun enableJoystickCallback() =>
    @glfwSetDropCallback(_window, addressof _joystickCallback)

  fun @_joystickCallback(window: NullablePointer[_GLFWwindow] tag, jid: I64, event: I64) =>
    @glfwGetWindowUserPointer(window)._listener.joystickCallback(jid, event)

  fun shouldClose(): Bool =>
    @glfwWindowShouldClose(_window) != 0

  fun setShouldClose(value: Bool): None =>
    @glfwSetWindowShouldClose(_window, if value then 1 else 0 end)

  fun setWindowTitle(title: String): None =>
    @glfwSetWindowTitle(_window, title.cstring())

  fun setWindowIcon(count: I32, images: NullablePointer[GLFWimage] tag): None =>
    @glfwSetWindowIcon(_window, count, images)

  fun getPos(): (I32, I32) =>
    var xpos: I32 = 0
    var ypos: I32 = 0
    @glfwGetWindowPos(_window, addressof xpos, addressof ypos)
    (xpos, ypos)

  fun setPos(xpos: I32, ypos: I32): None =>
    @glfwSetWindowPos(_window, xpos, ypos)

  fun getSize(): (I32, I32) =>
    var width: I32 = 0
    var height: I32 = 0
    @glfwGetWindowSize(_window, addressof width, addressof height)
    (width, height)

  fun setSizeLimits(minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32): None =>
    @glfwSetWindowSizeLimits(_window, minwidth, minheight, maxwidth, maxheight)

  fun setAspectRatio(numer: I32, denom: I32): None =>
    @glfwSetWindowAspectRatio(_window, numer, denom)

  fun setSize(width: I32, height: I32): None =>
    @glfwSetWindowSize(_window, width, height)

  fun getFramebufferSize(): (I32, I32) =>
    var width: I32 = 0
    var height: I32 = 0
    @glfwGetFramebufferSize(_window, addressof width, addressof height)
    (width, height)

  fun getFrameSize(): (I32, I32, I32, I32) =>
    var left: I32 = 0
    var top: I32 = 0
    var right: I32 = 0
    var bottom: I32 = 0
    @glfwGetWindowFrameSize(_window, addressof left, addressof top, addressof right, addressof bottom)
    (left, top, right, bottom)

  fun getContentScale(): (F32, F32) =>
    var xscale: F32 = 0
    var yscale: F32 = 0
    @glfwGetWindowContentScale(_window, addressof xscale, addressof yscale)
    (xscale, yscale)

  fun getOpacity(): F32 =>
    @glfwGetWindowOpacity(_window)

  fun setOpacity(opacity: F32): None =>
    @glfwSetWindowOpacity(_window, opacity)

  fun iconify(): None =>
    @glfwIconifyWindow(_window)

  fun restore(): None =>
    @glfwRestoreWindow(_window)

  fun maximize(): None =>
    @glfwMaximizeWindow(_window)

  fun show(): None =>
    @glfwShowWindow(_window)

  fun hide(): None =>
    @glfwHideWindow(_window)

  fun focus(): None =>
    @glfwFocusWindow(_window)

  fun requestAttention(): None =>
    @glfwRequestWindowAttention(_window)

  // TODO: return a Monitor object
  fun getMonitor(): NullablePointer[GLFWmonitor] =>
    @glfwGetWindowMonitor(_window)

  // TODO: take a Monitor object
  fun setMonitor(monitor: NullablePointer[GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32): None =>
    @glfwSetWindowMonitor(_window, monitor, xpos, ypos, width, height, refreshRate)

  fun getAttrib(attrib: I32): I32 =>
    @glfwGetWindowAttrib(_window, attrib)

  fun setAttrib(attrib: I32, value: I32): None =>
    @glfwSetWindowAttrib(_window, attrib, value)

  fun getInputMode(mode: I32): I32 =>
    @glfwGetInputMode(_window, mode)

  fun setInputMode(mode: I32, value: I32): None =>
    @glfwSetInputMode(_window, mode, value)

  fun getKey(key: I32): I32 =>
    @glfwGetKey(_window, key)

  fun getMouseButton(button: I32): I32 =>
    @glfwGetMouseButton(_window, button)

  fun getCursorPos(): (F64, F64) =>
    var xpos: F64 = 0
    var ypos: F64 = 0
    @glfwGetCursorPos(_window, addressof xpos, addressof ypos)
    (xpos, ypos)

  fun setCursorPos(xpos: F64, ypos: F64): None =>
    @glfwSetCursorPos(_window, xpos, ypos)

  // TODO: take a Cursor object
  fun setCursor(cursor: NullablePointer[GLFWcursor] tag): None =>
    @glfwSetCursor(_window, cursor)

  fun setClipboardString(string: String): None =>
    @glfwSetClipboardString(_window, string.cstring())

  fun getClipboardString(): String =>
    String.from_cstring(@glfwGetClipboardString(_window)).clone()

  fun glfwGetCurrentContext(): Window =>
    @glfwGetWindowUserPointer(@glfwGetCurrentContext())

  fun swapBuffers(): None =>
    @glfwSwapBuffers(_window)


