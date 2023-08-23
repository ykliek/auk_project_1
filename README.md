# AUK SDT 100: Principles of Programming FA23: Project 1. Development environment

This is first project of Principles of Programming subject at AUK. The project contains a basic Java program that prints "Hello, World!" to the console.

## Project Structure
```
/
|-- src/             # Source code directory
|   |-- Main.java    # Main Java source file
|
|-- bin/             # Binary output directory
|
|-- Makefile         # Makefile for compiling and running the project
|
|-- README.md        # This README file
```


## Prerequisites

- Java Development Kit (JDK) installed on your system.
- Make utility installed (commonly available on Unix-like systems, and you can use tools like MinGW or WSL on Windows).

## Usage

1. Clone or download this repository to your local machine.
    ```
    git clone https://github.com/ykliek/project_1.git
    ```

2. Open a terminal or command prompt and navigate to the project directory.

3. Use the provided Makefile to compile and run the project:

    - To compile the Java code, create the necessary directories, and generate the `.class` files:

      ```sh
      make all
      ```

    - To run the compiled Java program:

      ```sh
      make run
      ```

    - To clean up and remove the generated files:

      ```sh
      make clean
      ```

   **Note:** If you're using Windows Command Prompt, you might need to use `mingw32-make` instead of `make`.

4. After running the `make run` command, you should see the output displayed in the terminal.

## Additional Notes

- The `src` directory contains the Java source code (`Main.java`).
- The `bin` directory is used to store the compiled `.class` files and the JAR file.
- The provided Makefile automates the compilation, JAR creation, and running of the project.
- The project is intentionally kept simple to focus on the usage of the Makefile.
