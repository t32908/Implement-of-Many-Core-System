# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/docker-images/EE6470/hw03

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/docker-images/EE6470/hw03/build

# Include any dependencies generated for this target.
include CMakeFiles/lena_GB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lena_GB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lena_GB.dir/flags.make

CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o: CMakeFiles/lena_GB.dir/flags.make
CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o: ../Gaussian_Blur.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/docker-images/EE6470/hw03/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o -c /home/user/docker-images/EE6470/hw03/Gaussian_Blur.cpp

CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/docker-images/EE6470/hw03/Gaussian_Blur.cpp > CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.i

CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/docker-images/EE6470/hw03/Gaussian_Blur.cpp -o CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.s

CMakeFiles/lena_GB.dir/Initiator.cpp.o: CMakeFiles/lena_GB.dir/flags.make
CMakeFiles/lena_GB.dir/Initiator.cpp.o: ../Initiator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/docker-images/EE6470/hw03/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lena_GB.dir/Initiator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lena_GB.dir/Initiator.cpp.o -c /home/user/docker-images/EE6470/hw03/Initiator.cpp

CMakeFiles/lena_GB.dir/Initiator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lena_GB.dir/Initiator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/docker-images/EE6470/hw03/Initiator.cpp > CMakeFiles/lena_GB.dir/Initiator.cpp.i

CMakeFiles/lena_GB.dir/Initiator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lena_GB.dir/Initiator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/docker-images/EE6470/hw03/Initiator.cpp -o CMakeFiles/lena_GB.dir/Initiator.cpp.s

CMakeFiles/lena_GB.dir/Testbench.cpp.o: CMakeFiles/lena_GB.dir/flags.make
CMakeFiles/lena_GB.dir/Testbench.cpp.o: ../Testbench.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/docker-images/EE6470/hw03/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lena_GB.dir/Testbench.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lena_GB.dir/Testbench.cpp.o -c /home/user/docker-images/EE6470/hw03/Testbench.cpp

CMakeFiles/lena_GB.dir/Testbench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lena_GB.dir/Testbench.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/docker-images/EE6470/hw03/Testbench.cpp > CMakeFiles/lena_GB.dir/Testbench.cpp.i

CMakeFiles/lena_GB.dir/Testbench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lena_GB.dir/Testbench.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/docker-images/EE6470/hw03/Testbench.cpp -o CMakeFiles/lena_GB.dir/Testbench.cpp.s

CMakeFiles/lena_GB.dir/main.cpp.o: CMakeFiles/lena_GB.dir/flags.make
CMakeFiles/lena_GB.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/docker-images/EE6470/hw03/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lena_GB.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lena_GB.dir/main.cpp.o -c /home/user/docker-images/EE6470/hw03/main.cpp

CMakeFiles/lena_GB.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lena_GB.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/docker-images/EE6470/hw03/main.cpp > CMakeFiles/lena_GB.dir/main.cpp.i

CMakeFiles/lena_GB.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lena_GB.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/docker-images/EE6470/hw03/main.cpp -o CMakeFiles/lena_GB.dir/main.cpp.s

# Object files for target lena_GB
lena_GB_OBJECTS = \
"CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o" \
"CMakeFiles/lena_GB.dir/Initiator.cpp.o" \
"CMakeFiles/lena_GB.dir/Testbench.cpp.o" \
"CMakeFiles/lena_GB.dir/main.cpp.o"

# External object files for target lena_GB
lena_GB_EXTERNAL_OBJECTS =

lena_GB: CMakeFiles/lena_GB.dir/Gaussian_Blur.cpp.o
lena_GB: CMakeFiles/lena_GB.dir/Initiator.cpp.o
lena_GB: CMakeFiles/lena_GB.dir/Testbench.cpp.o
lena_GB: CMakeFiles/lena_GB.dir/main.cpp.o
lena_GB: CMakeFiles/lena_GB.dir/build.make
lena_GB: /opt/systemc/lib/libsystemc.so.2.3.3
lena_GB: CMakeFiles/lena_GB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/docker-images/EE6470/hw03/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable lena_GB"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lena_GB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lena_GB.dir/build: lena_GB

.PHONY : CMakeFiles/lena_GB.dir/build

CMakeFiles/lena_GB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lena_GB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lena_GB.dir/clean

CMakeFiles/lena_GB.dir/depend:
	cd /home/user/docker-images/EE6470/hw03/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/docker-images/EE6470/hw03 /home/user/docker-images/EE6470/hw03 /home/user/docker-images/EE6470/hw03/build /home/user/docker-images/EE6470/hw03/build /home/user/docker-images/EE6470/hw03/build/CMakeFiles/lena_GB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lena_GB.dir/depend

