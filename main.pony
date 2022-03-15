use "Glfw3"

actor Main is WindowCallbackListener
  let _window: NullablePointer[GLFWwindow]
  let _env: Env

  new create(env: Env) =>
    _env = env
    _env.out.print("Hello GLFW")

    if (GLFW.glfwInit() == 1) then _env.out.print("WOOT") end

    _window = GLFW.glfwCreateWindow(640, 480, "My Title", NullablePointer[GLFWmonitor].none(), NullablePointer[GLFWwindow].none(), this)
    GLFW.glfwEnableKeyCallback(_window)
    loop()

  be loop() =>
    if (GLFW.glfwWindowShouldClose(_window) == 0) then
      GLFW.glfwPollEvents()
      loop()
    else
      GLFW.glfwDestroyWindow(_window)
      GLFW.glfwTerminate()
    end

  fun keyCallback(window: NullablePointer[GLFWwindow] tag, key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
    match key
    | GLFWkey.escape()
    | GLFWkey.q() => GLFW.glfwSetWindowShouldClose(window, 1)
    end
    _env.out.print("key: " + key.string())
