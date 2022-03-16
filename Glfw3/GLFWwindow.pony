class GLFWWindow
  let _window: NullablePointer[_GLFWwindow]
  var _listener: WindowListener box = DefaultWindowListener

  new create(width: I32, height: I32, title: String) =>
    _window = @glfwCreateWindow(width, height, title.cstring(), NullablePointer[_GLFWmonitor].none(), NullablePointer[_GLFWwindow].none())
    @glfwSetWindowUserPointer(_window, this)

  fun _final() =>
    @glfwDestroyWindow(_window)

  fun ref set_listener(listener: WindowListener box) =>
    _listener = listener

  fun make_context_current(): None =>
    @glfwMakeContextCurrent(_window)

  fun enable_key_callback() =>
    @glfwSetKeyCallback(_window, addressof _keyCallback)

  fun @_keyCallback(window: NullablePointer[_GLFWwindow] tag, key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.key_callback(key, scancode, action, mods)

  fun enable_pos_callback() =>
    @glfwSetWindowPosCallback(_window, addressof _windowPosCallback)

  fun @_windowPosCallback(window: NullablePointer[_GLFWwindow] tag, xpos: I64 val, ypos: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.pos_callback(xpos, ypos)

  fun enable_size_callback() =>
    @glfwSetWindowSizeCallback(_window, addressof _windowSizeCallback)

  fun @_windowSizeCallback(window: NullablePointer[_GLFWwindow] tag, width: I64 val, height: I64 val) =>
    @glfwGetWindowUserPointer(window)._listener.size_callback(width, height)

  fun enable_close_callback() =>
    @glfwSetWindowCloseCallback(_window, addressof _windowCloseCallback)

  fun @_windowCloseCallback(window: NullablePointer[_GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.close_callback()

  fun enable_refresh_callback() =>
    @glfwSetWindowRefreshCallback(_window, addressof _windowRefreshCallback)

  fun @_windowRefreshCallback(window: NullablePointer[_GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.refresh_callback()

  fun enable_focus_callback() =>
    @glfwSetWindowFocusCallback(_window, addressof _windowFocusCallback)

  fun @_windowFocusCallback(window: NullablePointer[_GLFWwindow] tag, focused: I64) =>
    @glfwGetWindowUserPointer(window)._listener.focus_callback(focused)

  fun enable_iconify_callback() =>
    @glfwSetWindowIconifyCallback(_window, addressof _windowIconifyCallback)

  fun @_windowIconifyCallback(window: NullablePointer[_GLFWwindow] tag, iconified: I64) =>
    @glfwGetWindowUserPointer(window)._listener.iconify_callback(iconified)

  fun enable_maximize_callback() =>
    @glfwSetWindowMaximizeCallback(_window, addressof _windowMaximizeCallback)

  fun @_windowMaximizeCallback(window: NullablePointer[_GLFWwindow] tag, maximized: I64) =>
    @glfwGetWindowUserPointer(window)._listener.maximize_callback(maximized)

  fun framebuffer_size_callback() =>
    @glfwSetFramebufferSizeCallback(_window, addressof _framebufferSizeCallback)

  fun @_framebufferSizeCallback(window: NullablePointer[_GLFWwindow] tag, width: I64, height: I64) =>
    @glfwGetWindowUserPointer(window)._listener.framebuffer_size_callback(width, height)

  fun enable_content_scale_callback() =>
    @glfwSetWindowContentScaleCallback(_window, addressof _windowContentScaleCallback)

  fun @_windowContentScaleCallback(window: NullablePointer[_GLFWwindow] tag, xscale: F64, yscale: F64) =>
    @glfwGetWindowUserPointer(window)._listener.content_scale_callback(xscale, yscale)

  fun enable_char_callback() =>
    @glfwSetCharCallback(_window, addressof _charCallback)

  fun @_charCallback(window: NullablePointer[_GLFWwindow] tag, codepoint: U64) =>
    @glfwGetWindowUserPointer(window)._listener.char_callback(codepoint)

  fun enable_char_mods_callback() =>
    @glfwSetCharModsCallback(_window, addressof _charModsCallback)

  fun @_charModsCallback(window: NullablePointer[_GLFWwindow] tag, codepoint: U64, mods: I64) =>
    @glfwGetWindowUserPointer(window)._listener.char_mods_callback(codepoint, mods)

  fun enable_mouse_button_callback() =>
    @glfwSetMouseButtonCallback(_window, addressof _mouseButtonCallback)

  fun @_mouseButtonCallback(window: NullablePointer[_GLFWwindow] tag, button: I64, action: I64, mods: I64) =>
    @glfwGetWindowUserPointer(window)._listener.mouse_button_callback(button, action, mods)

  fun enable_cursor_pos_callback() =>
    @glfwSetCursorPosCallback(_window, addressof _cursorPosCallback)

  fun @_cursorPosCallback(window: NullablePointer[_GLFWwindow] tag, xpos: F64, ypos: F64) =>
    @glfwGetWindowUserPointer(window)._listener.cursor_pos_callback(xpos, ypos)

  fun enable_cursor_enter_callback() =>
    @glfwSetCursorEnterCallback(_window, addressof _cursorEnterCallback)

  fun @_cursorEnterCallback(window: NullablePointer[_GLFWwindow] tag, entered: I64) =>
    @glfwGetWindowUserPointer(window)._listener.cursor_enter_callback(entered)

  fun enable_scroll_callback() =>
    @glfwSetScrollCallback(_window, addressof _scrollCallback)

  fun @_scrollCallback(window: NullablePointer[_GLFWwindow] tag, xoffset: F64, yoffset: F64) =>
    @glfwGetWindowUserPointer(window)._listener.scroll_callback(xoffset, yoffset)

  fun enable_drop_callback() =>
    @glfwSetDropCallback(_window, addressof _dropCallback)

  fun @_dropCallback(window: NullablePointer[_GLFWwindow] tag, path_count: I64, paths: Pointer[U8]) =>
    @glfwGetWindowUserPointer(window)._listener.drop_callback(path_count, String.from_cstring(paths).clone())

  fun enable_joystick_callback() =>
    @glfwSetDropCallback(_window, addressof _joystickCallback)

  fun @_joystickCallback(window: NullablePointer[_GLFWwindow] tag, jid: I64, event: I64) =>
    @glfwGetWindowUserPointer(window)._listener.joystick_callback(jid, event)

  fun should_close(): Bool =>
    @glfwWindowShouldClose(_window) != 0

  fun set_should_close(value: Bool): None =>
    @glfwSetWindowShouldClose(_window, if value then 1 else 0 end)

  fun set_title(title: String): None =>
    @glfwSetWindowTitle(_window, title.cstring())

  fun set_icon(count: I32, images: NullablePointer[_GLFWimage] tag): None =>
    @glfwSetWindowIcon(_window, count, images)

  fun get_pos(): (I32, I32) =>
    var xpos: I32 = 0
    var ypos: I32 = 0
    @glfwGetWindowPos(_window, addressof xpos, addressof ypos)
    (xpos, ypos)

  fun set_pos(xpos: I32, ypos: I32): None =>
    @glfwSetWindowPos(_window, xpos, ypos)

  fun get_size(): (I32, I32) =>
    var width: I32 = 0
    var height: I32 = 0
    @glfwGetWindowSize(_window, addressof width, addressof height)
    (width, height)

  fun set_size_limits(minwidth: I32, minheight: I32, maxwidth: I32, maxheight: I32): None =>
    @glfwSetWindowSizeLimits(_window, minwidth, minheight, maxwidth, maxheight)

  fun set_aspect_ratio(numer: I32, denom: I32): None =>
    @glfwSetWindowAspectRatio(_window, numer, denom)

  fun set_size(width: I32, height: I32): None =>
    @glfwSetWindowSize(_window, width, height)

  fun get_framebuffer_size(): (I32, I32) =>
    var width: I32 = 0
    var height: I32 = 0
    @glfwGetFramebufferSize(_window, addressof width, addressof height)
    (width, height)

  fun get_frame_size(): (I32, I32, I32, I32) =>
    var left: I32 = 0
    var top: I32 = 0
    var right: I32 = 0
    var bottom: I32 = 0
    @glfwGetWindowFrameSize(_window, addressof left, addressof top, addressof right, addressof bottom)
    (left, top, right, bottom)

  fun get_content_scale(): (F32, F32) =>
    var xscale: F32 = 0
    var yscale: F32 = 0
    @glfwGetWindowContentScale(_window, addressof xscale, addressof yscale)
    (xscale, yscale)

  fun get_opacity(): F32 =>
    @glfwGetWindowOpacity(_window)

  fun set_opacity(opacity: F32): None =>
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

  fun request_attention(): None =>
    @glfwRequestWindowAttention(_window)

  // TODO: return a Monitor object
  fun get_monitor(): NullablePointer[_GLFWmonitor] =>
    @glfwGetWindowMonitor(_window)

  // TODO: take a Monitor object
  fun set_monitor(monitor: NullablePointer[_GLFWmonitor] tag, xpos: I32, ypos: I32, width: I32, height: I32, refreshRate: I32): None =>
    @glfwSetWindowMonitor(_window, monitor, xpos, ypos, width, height, refreshRate)

  fun get_attrib(attrib: I32): I32 =>
    @glfwGetWindowAttrib(_window, attrib)

  fun set_attrib(attrib: I32, value: I32): None =>
    @glfwSetWindowAttrib(_window, attrib, value)

  fun get_input_mode(mode: I32): I32 =>
    @glfwGetInputMode(_window, mode)

  fun set_input_mode(mode: I32, value: I32): None =>
    @glfwSetInputMode(_window, mode, value)

  fun get_key(key: I32): I32 =>
    @glfwGetKey(_window, key)

  fun get_mouse_button(button: I32): I32 =>
    @glfwGetMouseButton(_window, button)

  fun get_cursor_pos(): (F64, F64) =>
    var xpos: F64 = 0
    var ypos: F64 = 0
    @glfwGetCursorPos(_window, addressof xpos, addressof ypos)
    (xpos, ypos)

  fun set_cursor_pos(xpos: F64, ypos: F64): None =>
    @glfwSetCursorPos(_window, xpos, ypos)

  // TODO: take a Cursor object
  fun set_cursor(cursor: NullablePointer[_GLFWcursor] tag): None =>
    @glfwSetCursor(_window, cursor)

  fun set_clipboard_string(string: String): None =>
    @glfwSetClipboardString(_window, string.cstring())

  fun get_clipboard_string(): String =>
    String.from_cstring(@glfwGetClipboardString(_window)).clone()

  fun get_current_context(): GLFWWindow =>
    @glfwGetWindowUserPointer(@glfwGetCurrentContext())

  fun swap_buffers(): None =>
    @glfwSwapBuffers(_window)

interface WindowListener
  fun pos_callback(xpos: I64 val, ypos: I64 val) => None
  fun size_callback(width: I64 val, height: I64 val) => None
  fun close_callback() => None
  fun refresh_callback() => None
  fun focus_callback(focused: I64) => None
  fun iconify_callback(iconified: I64) => None
  fun maximize_callback(maximized: I64) => None
  fun framebuffer_size_callback(width: I64, height: I64) => None
  fun content_scale_callback(xscale: F64, yscale: F64) => None
  fun key_callback(key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) => None
  fun char_callback(codepoint: U64) => None
  fun char_mods_callback(codepoint: U64, mods: I64) => None
  fun mouse_button_callback(button: I64, action: I64, mods: I64) => None
  fun cursor_pos_callback(xpos: F64, ypos: F64) => None
  fun cursor_enter_callback(entered: I64) => None
  fun scroll_callback(xoffset: F64, yoffset: F64) => None
  fun drop_callback(path_count: I64, paths: String) => None
  fun joystick_callback(jid: I64, event: I64) => None

class DefaultWindowListener is WindowListener

