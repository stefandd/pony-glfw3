use "Glfw3"

actor Main is WindowListener
  let window: NullablePointer[GLFWwindow]
  let window_user_object: WindowUserObject
  let env: Env

  new create(env': Env) =>
    env = env'
    env.out.print("Hello Glfw3")

    if (Glfw3.glfwInit() == GLFWFalse()) then
      window = NullablePointer[GLFWwindow].none()
      window_user_object = WindowUserObject.none()
      env.out.print("Error: could not init glfw")
    else
      env.out.print("WOOT")
      window = Glfw3.glfwCreateWindow(640, 480, "My Title", NullablePointer[GLFWmonitor].none(), NullablePointer[GLFWwindow].none())
      window_user_object = WindowUserObject(window)
      window_user_object.set_listener(this)
      window_user_object.enable_key_callback()
      loop()
    end

  be loop() =>
    if (Glfw3.glfwWindowShouldClose(window) == 0) then
      Glfw3.glfwPollEvents()
      loop()
    else
      Glfw3.glfwDestroyWindow(window)
      Glfw3.glfwTerminate()
    end

  fun key_callback(key: I32 val, scancode: I32 val, action: I32 val, mods: I32 val) =>
    match key
    | GLFWKeyEscape()
    | GLFWKeyQ() => Glfw3.glfwSetWindowShouldClose(window, GLFWTrue())
    end
    env.out.print("key: " + key.string())
