# *nix makefile
# procedural project

# ==== ==== ==== ==== ==== ==== ==== ====

# define locations
DIST_DIR        =dist
SOURCE_DIR      =src
BUILD_DIR       =build
VPATH           =$(DIST_DIR) $(SOURCE_DIR) $(BUILD_DIR)

# files
SRC_EXT         =cpp
HDR_EXT         =hpp
SOURCE_LIST     =$(shell find $(SOURCE_DIR) -type f -name '*.$(SRC_EXT)')
HEADER_LIST     =$(shell find $(SOURCE_DIR) -type f -name '*.$(HDR_EXT)')
OBJ_LIST        =$(SOURCE_LIST:$(SOURCE_DIR)/%.$(SRC_EXT)=$(BUILD_DIR)/%.o)
EXIST_LIST      =$(wildcard $(BUILD_DIR)/*.o)
EXE_NAME        =orbital
EXE 		=$(DIST_DIR)/$(EXE_NAME)
LOGS            =out.log test.log

# # ===== C compiler/linker options =====
# external programs
CXX	    = g++
DOXYGEN     = `which doxygen`
RM          = rm -f

FLAGS_BASE_DEBUG    = -pedantic -Wall -g -DDEBUG -DUNIT_TEST 
FLAGS_BASE_RELEASE  = -O2

  #(MINGW format).  # use visual studio instead :/
#WIN_FLAGS	     = -D__WINDOWS__ -I"C:/Program Files/Microsoft SDKs/Windows/v7.1/Include"

FLAGS_LINK_BASE     = -lm 

FLAGS_COMP_MACOSX   = -isysroot /Developer/SDKs/MacOSX10.6.sdk
FLAGS_LINK_MACOSX   = -framework OpenGL -framework GLUT 

FLAGS_COMP_LINUX    = 
FLAGS_LINK_LINUX    = -lGL -lGLU -lglut
# use visual studio instead :/
#WIN_LINK_FLAGS  = -lGL -lGLU -lglut -L"C:/Program Files/Microsoft SDKs/Windows/v7.1/Lib"


# ===== ===== Detect Platform ===== =====
SYSTEM_NAME := $(shell uname -s)

ifeq ($(SYSTEM_NAME), Linux)
	# linux, aimed at ubuntu
	PLATFORM_DETECTED = LINUX
	FLAGS_COMP_PLATFORM = $(FLAGS_COMP_LINUX)
	FLAGS_LINK_PLATFORM = $(FLAGS_LINK_LINUX) $(FLAGS_COMP_LINUX)
endif
ifeq ($(SYSTEM_NAME), Darwin)
	PLATFORM_DETECTED = MAC_OSX
	FLAGS_COMP_PLATFORM = $(FLAGS_COMP_MACOSX)
	FLAGS_LINK_PLATFORM = $(FLAGS_LINK_MACOSX) $(FLAGS_COMP_MACOSX)
endif
ifeq ($(OS), Windows_NT)
	# not supported. Please use visual studio
	#PLATFORM_DETECTED = WINDOWS_64 # currently no difference, anyway
	PLATFORM_DETECTED = WINDOWS
endif

# flags used here:
FLAGS_RELEASE   =$(FLAGS_BASE_RELEASE) -D__$(PLATFORM_DETECTED)__  $(FLAGS_COMP_PLATFORM)
FLAGS_DEBUG     =$(FLAGS_BASE_DEBUG) -D__$(PLATFORM_DETECTED)__ $(FLAGS_COMP_PLATFORM)
CPPFLAGS        =$(FLAGS_DEBUG)

LDFLAGS      = $(FLAGS_LINK_BASE) $(FLAGS_LINK_PLATFORM)

# ==== ==== ==== ==== ==== ==== ==== ====
# default target
#.PHONY:makefile

.PHONY:run
run: debug

.PHONY: makefile
$(OBJ_LIST): $(BUILD_DIR)/%.o: %.$(SRC_EXT) $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $< -c -o $@

# do not combine-- '$^' variable will break
$(EXE): $(OBJ_LIST)
	$(CXX) $(CPPLFLAGS) $(LDFLAGS) $(LINK_FLAGS) $^ -o $(EXE) 

# use these to debug file
.PHONY: env
env:
	# SYSTEM_NAME = '$(SYSTEM_NAME)'
	# OS='$(OS)' (windows only?)
	# PLATFORM_DETECTED='$(PLATFORM_DETECTED)'
	# SOURCE_LIST='$(SOURCE_LIST)'
	# HEADER_LIST='$(HEADER_LIST)'
	# OBJ_LIST='$(OBJ_LIST)'
	# EXISTS='$(EXIST_LIST)'
	# CPPFLAGS='$(CPPFLAGS)'
	# LDFLAGS='$(LDFLAGS)'

.PHONY:debug
debug: $(DIST_DIR) $(EXE) 
	./$(EXE)

# documentation generation
#doc: doxygen
#doxygen: 
#	$(DOXYGEN) $(DOXYGEN_CFG)

# enable debugging mode
#debug:

# clean up object/error files and executables
.PHONY : clean
clean:
	$(RM) $(OBJ_LIST) $(DIST_DIR)/* core $(LOGS) $(SRC_DIR)/*.orig

.PHONY : tidy
tidy:
	$(RM) $(EXE) *.o

# ==== ==== ensure directories ==== ====
$(DIST_DIR):
	mkdir $(DIST_DIR)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)
	mkdir $(BUILD_DIR)/math
