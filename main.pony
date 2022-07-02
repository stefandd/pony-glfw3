use "Glfw3"

actor Main is GLFWWindowListener
  let window: NullablePointer[GLFWwindow]
  let window_user_object: GLFWWindowUserObject
  let env: Env

  new create(env': Env) =>
    env = env'
    env.out.print("Hello Glfw3")

    if (Glfw3.glfwInit() == GLFWTrue()) then
      env.out.print("GLFW initialized version: " + Glfw3.glfwGetVersionString())

      window = Glfw3.glfwCreateWindow(640, 480, "My Title")
      window_user_object = GLFWWindowUserObject(window)
      window_user_object.set_listener(this)
      window_user_object.enable_key_callback()

      Glfw3.glfwMakeContextCurrent(window)

      // GL commands here...

      loop()
    else
      env.out.print("Error: could not init GLFW")
      env.out.print(Glfw3Helper.get_error_description())

      window = NullablePointer[GLFWwindow].none()
      window_user_object = GLFWWindowUserObject(window)
    end

  fun _final() =>
    Glfw3.glfwDestroyWindow(window)
    Glfw3.glfwTerminate()

  be loop() =>
    // Required during behavior execution because needs to happen on the thread we'll run GL commands from
    Glfw3.glfwMakeContextCurrent(window)
    Glfw3.glfwSwapInterval(1)

    // GL commands here...

    Glfw3.glfwSwapBuffers(window)
    Glfw3.glfwPollEvents()

    if (Glfw3.glfwWindowShouldClose(window) == GLFWFalse()) then
      loop()
    end

  fun key_callback(key: I32, scancode: I32, action: I32, mods: I32) =>
    match key
    | GLFWKeyEscape()
    | GLFWKeyQ() => Glfw3.glfwSetWindowShouldClose(window, GLFWTrue())
    end
    env.out.print("key: " + key.string())
