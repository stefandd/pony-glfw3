use "Glfw3"

class CustomCallbacks is Callbacks
  fun @keyCallback(window: NullablePointer[GLFWwindow] tag, key: I64 val, scancode: I64 val, action: I64 val, mods: I64 val) =>
    match key
    | 256 => Glfw3.glfwSetWindowShouldClose(window, 1)
    end

actor Main
  let window: NullablePointer[GLFWwindow]
  let custom_callbacks: CustomCallbacks

  new create(env: Env) =>
    custom_callbacks = CustomCallbacks

    env.out.print("Hello Glfw3")

    if (Glfw3.glfwInit() == 1) then env.out.print("WOOT") end

    window = Glfw3.glfwCreateWindow(640, 480, "My Title", NullablePointer[GLFWmonitor].none(), NullablePointer[GLFWwindow].none())
    Glfw3.glfwSetKeyCallback(window, custom_callbacks)
    loop()


  be loop() =>
    if (Glfw3.glfwWindowShouldClose(window) == 0) then
      Glfw3.glfwPollEvents()
      loop()
    else
      Glfw3.glfwDestroyWindow(window)
      Glfw3.glfwTerminate()
    end
