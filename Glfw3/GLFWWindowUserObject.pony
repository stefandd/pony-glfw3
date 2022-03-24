class GLFWWindowUserObject
  let _window : NullablePointer[GLFWwindow] tag
  var _listener: GLFWWindowListener = DefaultGLFWWindowListener

  new create(window: NullablePointer[GLFWwindow] tag) =>
    _window = window
    @glfwSetWindowUserPointer(_window, this)

  new none() =>
    _window = NullablePointer[GLFWwindow].none()

  fun ref set_listener(listener: GLFWWindowListener) =>
    _listener = listener

  fun enable_key_callback() =>
    @glfwSetKeyCallback(_window, addressof _keyCallback)

  fun @_keyCallback(window: NullablePointer[GLFWwindow] tag, key: I32 val, scancode: I32 val, action: I32 val, mods: I32 val) =>
    @glfwGetWindowUserPointer(window)._listener.key_callback(key, scancode, action, mods)

  fun enable_window_pos_callback() =>
    @glfwSetWindowPosCallback(_window, addressof _windowPosCallback)

  fun @_windowPosCallback(window: NullablePointer[GLFWwindow] tag, xpos: I32 val, ypos: I32 val) =>
    @glfwGetWindowUserPointer(window)._listener.window_pos_callback(xpos, ypos)

  fun enable_window_size_callback() =>
    @glfwSetWindowSizeCallback(_window, addressof _windowSizeCallback)

  fun @_windowSizeCallback(window: NullablePointer[GLFWwindow] tag, width: I32 val, height: I32 val) =>
    @glfwGetWindowUserPointer(window)._listener.window_size_callback(width, height)

  fun enable_window_close_callback() =>
    @glfwSetWindowCloseCallback(_window, addressof _windowCloseCallback)

  fun @_windowCloseCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.window_close_callback()

  fun enable_window_refresh_callback() =>
    @glfwSetWindowRefreshCallback(_window, addressof _windowRefreshCallback)

  fun @_windowRefreshCallback(window: NullablePointer[GLFWwindow] tag) =>
    @glfwGetWindowUserPointer(window)._listener.window_refresh_callback()

  fun enable_window_focus_callback() =>
    @glfwSetWindowFocusCallback(_window, addressof _windowFocusCallback)

  fun @_windowFocusCallback(window: NullablePointer[GLFWwindow] tag, focused: I32) =>
    @glfwGetWindowUserPointer(window)._listener.window_focus_callback(focused)

  fun enable_window_iconify_callback() =>
    @glfwSetWindowIconifyCallback(_window, addressof _windowIconifyCallback)

  fun @_windowIconifyCallback(window: NullablePointer[GLFWwindow] tag, iconified: I32) =>
    @glfwGetWindowUserPointer(window)._listener.window_iconify_callback(iconified)

  fun enable_window_maximize_callback() =>
    @glfwSetWindowMaximizeCallback(_window, addressof _windowMaximizeCallback)

  fun @_windowMaximizeCallback(window: NullablePointer[GLFWwindow] tag, maximized: I32) =>
    @glfwGetWindowUserPointer(window)._listener.window_maximize_callback(maximized)

  fun enable_window_content_scale_callback() =>
    @glfwSetWindowContentScaleCallback(_window, addressof _windowContentScaleCallback)

  fun @_windowContentScaleCallback(window: NullablePointer[GLFWwindow] tag, xscale: F32, yscale: F32) =>
    @glfwGetWindowUserPointer(window)._listener.window_content_scale_callback(xscale, yscale)

  fun enable_framebuffer_size_callback() =>
    @glfwSetFramebufferSizeCallback(_window, addressof _framebufferSizeCallback)

  fun @_framebufferSizeCallback(window: NullablePointer[GLFWwindow] tag, width: I32, height: I32) =>
    @glfwGetWindowUserPointer(window)._listener.framebuffer_size_callback(width, height)

  fun enable_char_callback() =>
    @glfwSetCharCallback(_window, addressof _charCallback)

  fun @_charCallback(window: NullablePointer[GLFWwindow] tag, codepoint: U32) =>
    @glfwGetWindowUserPointer(window)._listener.char_callback(codepoint)

  fun enable_char_mods_callback() =>
    @glfwSetCharModsCallback(_window, addressof _charModsCallback)

  fun @_charModsCallback(window: NullablePointer[GLFWwindow] tag, codepoint: U32, mods: I32) =>
    @glfwGetWindowUserPointer(window)._listener.char_mods_callback(codepoint, mods)

  fun enable_mouse_button_callback() =>
    @glfwSetMouseButtonCallback(_window, addressof _mouseButtonCallback)

  fun @_mouseButtonCallback(window: NullablePointer[GLFWwindow] tag, button: I32, action: I32, mods: I32) =>
    @glfwGetWindowUserPointer(window)._listener.mouse_button_callback(button, action, mods)

  fun enable_cursor_pos_callback() =>
    @glfwSetCursorPosCallback(_window, addressof _cursorPosCallback)

  fun @_cursorPosCallback(window: NullablePointer[GLFWwindow] tag, xpos: F32, ypos: F32) =>
    @glfwGetWindowUserPointer(window)._listener.cursor_pos_callback(xpos, ypos)

  fun enable_cursor_enter_callback() =>
    @glfwSetCursorEnterCallback(_window, addressof _cursorEnterCallback)

  fun @_cursorEnterCallback(window: NullablePointer[GLFWwindow] tag, entered: I32) =>
    @glfwGetWindowUserPointer(window)._listener.cursor_enter_callback(entered)

  fun enable_scroll_callback() =>
    @glfwSetScrollCallback(_window, addressof _scrollCallback)

  fun @_scrollCallback(window: NullablePointer[GLFWwindow] tag, xoffset: F32, yoffset: F32) =>
    @glfwGetWindowUserPointer(window)._listener.scroll_callback(xoffset, yoffset)

  fun enable_drop_callback() =>
    @glfwSetDropCallback(_window, addressof _dropCallback)

  fun @_dropCallback(window: NullablePointer[GLFWwindow] tag, path_count: I32, paths: Pointer[U8]) =>
    @glfwGetWindowUserPointer(window)._listener.drop_callback(path_count, String.from_cstring(paths).clone())

  fun enable_joystick_callback() =>
    @glfwSetDropCallback(_window, addressof _joystickCallback)

  fun @_joystickCallback(window: NullablePointer[GLFWwindow] tag, jid: I32, event: I32) =>
    @glfwGetWindowUserPointer(window)._listener.joystick_callback(jid, event)


