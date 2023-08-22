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

# Default target
all: $(BIN_DIR)/project_1.jar

# Compile .java files to .class files
$(BIN_DIR)/%.class: $(SRC_DIR)/%.java
	@mkdir -p $(BIN_DIR)
	$(JC) $(JFLAGS) $<

# Create a JAR file
$(BIN_DIR)/project_1.jar: $(CLASS_FILES)
	jar cfe $@ Main -C $(BIN_DIR) .

# Run the Java project
run: $(BIN_DIR)/project_1.jar
	java -jar $<

# Clean the generated files
clean:
	rm -rf $(BIN_DIR)

# PHONY targets (targets that are not actual file names)
.PHONY: all clean
