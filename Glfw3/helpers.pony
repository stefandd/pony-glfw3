primitive Glfw3Helper

  fun get_error_code(): I32 =>
    @glfwGetError(Pointer[Pointer[U8 val] tag])

  fun get_error_description(): String =>
    var description: String = ""
    var ptr = description.cstring()
    @glfwGetError(addressof ptr)
    description

  fun get_version(): (I32, I32, I32) =>
    var major: I32 = -1
    var minor: I32 = -1
    var rev: I32 = -1
    @glfwGetVersion(addressof major, addressof minor, addressof rev)
    (major, minor, rev)

  fun get_window_size(window: NullablePointer[GLFWwindow] tag): (I32, I32) =>
    var width: I32 = 0
    var height: I32 = 0
    @glfwGetWindowSize(window, addressof width, addressof height)
    (width, height)

  fun get_window_pos(window: NullablePointer[GLFWwindow] tag): (I32, I32) =>
    var xpos: I32 = 0
    var ypos: I32 = 0
    @glfwGetWindowPos(window, addressof xpos, addressof ypos)
    (xpos, ypos)

  fun get_window_frame_size(window: NullablePointer[GLFWwindow] tag): (I32, I32, I32, I32) =>
    var left: I32 = 0
    var top: I32 = 0
    var right: I32 = 0
    var bottom: I32 = 0
    @glfwGetWindowFrameSize(window, addressof left, addressof top, addressof right, addressof bottom)
    (left, top, right, bottom)

  fun get_window_content_scale(window: NullablePointer[GLFWwindow] tag): (F32, F32) =>
    var xscale: F32 = 0
    var yscale: F32 = 0
    @glfwGetWindowContentScale(window, addressof xscale, addressof yscale)
    (xscale, yscale)

  fun get_window_cursor_pos(window: NullablePointer[GLFWwindow] tag): (F64, F64) =>
    var xpos: F64 = 0
    var ypos: F64 = 0
    @glfwGetCursorPos(window, addressof xpos, addressof ypos)
    (xpos, ypos)
