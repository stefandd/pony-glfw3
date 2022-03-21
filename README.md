# Pony GLFW3

Work in progress improvements based on [redvers/pony-glfw3](https://github.com/redvers/pony-glfw3).

## TODO

- [x] Add wrapper for window related methods
- [ ] Add wrapper for monitors related methods
- [ ] Add wrapper for joystick related methods
- [ ] Add wrapper for image related methods
- [ ] Add wrapper for cursor related methods
- [ ] Add wrapper for gamepadstate related methods
- [ ] Improve wrapper's return value for glfwGetRequiredInstanceExtensions

_Warning: experimental and un-tested, suggestions and pull-requests are welcome._

## Usage

Add this repository as a submodule to your application:

    git submodule add git@github.com:xpac27/pony-glfw3.git

Include this package in your Pony application:

    use "pony-glfw3/Glfw3"

Start calling OpenGL methods from your Pony application:

    if (GLFW.init() == GLFWTrue()) then
      env.out.print("GLFW initialized version: " + GLFW.get_version_string())

You might want to using this package together with [OpenGL](https://github.com/xpac27/pony-gl).

See [main.pony](https://github.com/xpac27/pony-glfw3/blob/main/main.pony) for example.

## Rules applied during conversion

### GL Types

- `int` is `I32`
- `float` is `F32`
- `char*` is `Pointer[U8]`
- `void*` is `Pointer[None]`
- `void**` is `Pointer[Pointer[None]]`
- `char**` is `Pointer[Pointer[U8]]`
- `GLFWmonitor**` is `Array[NullablePointer[_GLFWmonitor]]` (temporary)

### Defined constants

Names are converted to multicase (`GLFW_TRUE` becomes `GLFWTrue`). Using primitives of type `GLbitfield` except for `GLTrue` and `GLFalse` that use `GLboolean`. Using primitives of type `I32`.

### Methods definitions

Names are preserved.

Pointers are treated in the following way:

- `T*` arguments are replaced by `Pointer[T]`
- `void**` arguments are replaced by `Pointer[Pointer[None]]`

### Wrappers

Names are converted to snake case without the `glfw` prefix and but scopped inside a `GLFW` primitive (`glfwGetTime` becomes `GLFW.get_time`).

Out parameters are replaced by returned values.

GLFWwindow related methos are wrapped in a `GLFWWindow` class.

The following changes have been made to make using wrappers possible from non-bare context.

- `Pointer[U8]` return values are replaced by `String`
- `Pointer[GLchar]` arguments are replaced by `String`
- `Pointer[T]` arguments are replaced by `Array[T]`

The following defintions have been omitted.

    use @glfwSetErrorCallback[Pointer[None]](callback: Pointer[None] tag)
    use @glfwSetJoystickCallback[Pointer[None]](callback: Pointer[None] tag)

The abbove would require passing bare method pointers which make them useless withing the context of a Pony application since bare mathods can't capture.

    use @glfwGetProcAddress[Pointer[None]](procname: Pointer[U8] tag)

The above would not be useful within the context of a Pony application.
