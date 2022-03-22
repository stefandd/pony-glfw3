# Pony GLFW3

Work in progress improvements based on [redvers/pony-glfw3](https://github.com/redvers/pony-glfw3).

## TODO

- [x] Add listener for window related methods
- [ ] Add listener for monitors related methods
- [ ] Add listener for joystick related methods

_Warning: experimental and un-tested, suggestions and pull-requests are welcome._

## Usage

Add this repository as a submodule to your application:

    git submodule add git@github.com:xpac27/pony-glfw3.git

Include this package in your Pony application:

    use "pony-glfw3/Glfw3"

Start calling OpenGL methods from your Pony application:

    if (Glfw3.glfwInit() == GLFWTrue()) then
      env.out.print("GLFW initialized version: " + Glfw3.glfwGetVersionString())

You might want to using this package together with [OpenGL](https://github.com/xpac27/pony-gl).

See [main.pony](https://github.com/xpac27/pony-glfw3/blob/main/main.pony) for example.
