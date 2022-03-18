use "Glfw3"

actor Main is WindowListener
  let glfw_window: GLFWWindow
  let env: Env

  new create(env': Env) =>
    env = env'
    env.out.print("Hello GLFW")

    if (GLFW.init() == 1) then env.out.print("WOOT") end

    glfw_window = GLFWWindow(640, 480, "My Title")
    glfw_window.set_listener(this)
    glfw_window.enable_key_callback()
    loop()

  be loop() =>
    if (glfw_window.should_close()) then
      GLFW.terminate()
    else
      GLFW.poll_events()
      loop()
    end

  fun key_callback(key: I32 val, scancode: I32 val, action: I32 val, mods: I32 val) =>
    match key
    | GLFWKeyEscape()
    | GLFWKeyQ() => glfw_window.set_should_close(true)
    end
    env.out.print("key: " + key.string())
