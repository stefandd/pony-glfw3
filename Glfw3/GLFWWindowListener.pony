interface GLFWWindowListener
  fun ref window_pos_callback(xpos: I32 val, ypos: I32 val) => None
  fun ref window_size_callback(width: I32 val, height: I32 val) => None
  fun ref window_close_callback() => None
  fun ref window_refresh_callback() => None
  fun ref window_focus_callback(focused: I32) => None
  fun ref window_iconify_callback(iconified: I32) => None
  fun ref window_maximize_callback(maximized: I32) => None
  fun ref window_content_scale_callback(xscale: F32, yscale: F32) => None
  fun ref framebuffer_size_callback(width: I32, height: I32) => None
  fun ref key_callback(key: I32 val, scancode: I32 val, action: I32 val, mods: I32 val) => None
  fun ref char_callback(codepoint: U32) => None
  fun ref char_mods_callback(codepoint: U32, mods: I32) => None
  fun ref mouse_button_callback(button: I32, action: I32, mods: I32) => None
  fun ref cursor_pos_callback(xpos: F64, ypos: F64) => None
  fun ref cursor_enter_callback(entered: I32) => None
  fun ref scroll_callback(xoffset: F32, yoffset: F32) => None
  fun ref drop_callback(path_count: I32, paths: String) => None
  fun ref joystick_callback(jid: I32, event: I32) => None

class DefaultGLFWWindowListener is GLFWWindowListener

