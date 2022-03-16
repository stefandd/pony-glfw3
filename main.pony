use "Glfw3"

actor Main is WindowListener
  let _window: GLFWWindow
  let _env: Env

  new create(env: Env) =>
    _env = env
    _env.out.print("Hello GLFW")

    if (GLFW.glfwInit() == 1) then _env.out.print("WOOT") end

    _window = GLFWWindow(640, 480, "My Title")
    _window.setListener(this)
    _window.enableKeyCallback()
    loop()

  be loop() =>
    if (_window.shouldClose()) then
      GLFW.glfwTerminate()
    else
      GLFW.glfwPollEvents()
      loop()
    end

  fun keyCallback(key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
    match key
    | GLFW.key_escape()
    | GLFW.key_q() => _window.setShouldClose(true)
    end
    _env.out.print("key: " + key.string())
