import subprocess
import os

def compile_main_c():
    """Compile main.c using GCC."""
    result = subprocess.run(["gcc", "-o", "main", "main.c"], capture_output=True, text=True)
    if result.returncode == 0:
        print("Compilation successful.")
    else:
        print("Compilation failed.")
        print(result.stderr)
        exit(1)

def run_program():
    """Run the compiled program and capture the output."""
    result = subprocess.run(["./main"], capture_output=True, text=True)
    if result.returncode == 0:
        print("Program ran successfully.")
        return result.stdout.strip()
    else:
        print("Failed to run program.")
        print(result.stderr)
        exit(1)

def test_output(output):
    """Test the output from the compiled program."""
    expected_output = "Hello, World!"
    if output == expected_output:
        print("Test passed!")
    else:
        print("Test failed!")
        print(f"Expected: {expected_output}")
        print(f"Got: {output}")
        exit(1)

if __name__ == "__main__":
    compile_main_c()
    output = run_program()
    test_output(output)

