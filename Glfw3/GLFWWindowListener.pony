interface GLFWWindowListener
  fun window_pos_callback(xpos: I32 val, ypos: I32 val) => None
  fun window_size_callback(width: I32 val, height: I32 val) => None
  fun window_close_callback() => None
  fun window_refresh_callback() => None
  fun window_focus_callback(focused: I32) => None
  fun window_iconify_callback(iconified: I32) => None
  fun window_maximize_callback(maximized: I32) => None
  fun window_content_scale_callback(xscale: F32, yscale: F32) => None
  fun framebuffer_size_callback(width: I32, height: I32) => None
  fun key_callback(key: I32 val, scancode: I32 val, action: I32 val, mods: I32 val) => None
  fun char_callback(codepoint: U32) => None
  fun char_mods_callback(codepoint: U32, mods: I32) => None
  fun mouse_button_callback(button: I32, action: I32, mods: I32) => None
  fun cursor_pos_callback(xpos: F32, ypos: F32) => None
  fun cursor_enter_callback(entered: I32) => None
  fun scroll_callback(xoffset: F32, yoffset: F32) => None
  fun drop_callback(path_count: I32, paths: String) => None
  fun joystick_callback(jid: I32, event: I32) => None

class DefaultGLFWWindowListener is GLFWWindowListener

