# Makefile for Java Project

# Compiler and compiler flags
JC = javac
JFLAGS = -g -d bin -sourcepath src

# Directories
SRC_DIR = src
BIN_DIR = bin

# Find all Java source files
SRC_FILES := $(wildcard $(SRC_DIR)/*.java)

# Convert source files into corresponding class file paths
CLASS_FILES := $(patsubst $(SRC_DIR)/%.java,$(BIN_DIR)/%.class,$(SRC_FILES))

# Detect the operating system
ifeq ($(OS),Windows_NT)
	RM = del /Q
	SEP = \\
else
	RM = rm -f
	SEP = /
endif

# Default target
all: $(BIN_DIR)/project_1.jar

# Compile .java files to .class files
$(BIN_DIR)/%.class: $(SRC_DIR)/%.java
	@if not exist $(BIN_DIR) mkdir $(BIN_DIR)
	$(JC) $(JFLAGS) $<

# Create a JAR file
$(BIN_DIR)/project_1.jar: $(CLASS_FILES)
	jar cfe $@ Main -C $(BIN_DIR) .

# Run the Java project
run: $(BIN_DIR)/project_1.jar
	java -jar $<

# Clean the generated files
clean:
	$(RM) $(BIN_DIR)$(SEP)*.class $(BIN_DIR)$(SEP)project_1.jar

# PHONY targets (targets that are not actual file names)
.PHONY: all clean run
