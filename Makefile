# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++17 -Wall -Wextra -Wno-unused-parameter

# Enable AddressSanitizer on supported platforms
ifeq ($(OS),Windows_NT)
    EXE = .exe
    MKDIR = mkdir -p
    RM = rm -rf
else
    EXE =
    MKDIR = mkdir -p
    RM = rm -rf
    CXXFLAGS += -fsanitize=address
endif

INCLUDES = -I./include

SRC_DIR = src
BIN_DIR = bin

TARGET = $(BIN_DIR)/OUTPUT$(EXE)

SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.o,$(SRCS))

.PHONY: all run clean

all: $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Link object files
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ $^

# Compile source files
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	@$(MKDIR) $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c -o $@ $<

# Clean build files
clean:
	$(RM) $(BIN_DIR)
