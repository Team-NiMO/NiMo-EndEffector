# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nimo_end_effector: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nimo_end_effector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_custom_target(_nimo_end_effector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nimo_end_effector" "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" ""
)

get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_custom_target(_nimo_end_effector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nimo_end_effector" "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" ""
)

get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_custom_target(_nimo_end_effector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nimo_end_effector" "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_cpp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_cpp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector
)

### Generating Module File
_generate_module_cpp(nimo_end_effector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nimo_end_effector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nimo_end_effector_generate_messages nimo_end_effector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_cpp _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_cpp _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_cpp _nimo_end_effector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nimo_end_effector_gencpp)
add_dependencies(nimo_end_effector_gencpp nimo_end_effector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nimo_end_effector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_eus(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_eus(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector
)

### Generating Module File
_generate_module_eus(nimo_end_effector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nimo_end_effector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nimo_end_effector_generate_messages nimo_end_effector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_eus _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_eus _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_eus _nimo_end_effector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nimo_end_effector_geneus)
add_dependencies(nimo_end_effector_geneus nimo_end_effector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nimo_end_effector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_lisp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_lisp(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector
)

### Generating Module File
_generate_module_lisp(nimo_end_effector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nimo_end_effector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nimo_end_effector_generate_messages nimo_end_effector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_lisp _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_lisp _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_lisp _nimo_end_effector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nimo_end_effector_genlisp)
add_dependencies(nimo_end_effector_genlisp nimo_end_effector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nimo_end_effector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_nodejs(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_nodejs(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector
)

### Generating Module File
_generate_module_nodejs(nimo_end_effector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nimo_end_effector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nimo_end_effector_generate_messages nimo_end_effector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_nodejs _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_nodejs _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_nodejs _nimo_end_effector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nimo_end_effector_gennodejs)
add_dependencies(nimo_end_effector_gennodejs nimo_end_effector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nimo_end_effector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_py(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector
)
_generate_srv_py(nimo_end_effector
  "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector
)

### Generating Module File
_generate_module_py(nimo_end_effector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nimo_end_effector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nimo_end_effector_generate_messages nimo_end_effector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_cal_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_py _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/act_linear.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_py _nimo_end_effector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sruthim/catkin_ws/src/nimo_end_effector/srv/get_dat.srv" NAME_WE)
add_dependencies(nimo_end_effector_generate_messages_py _nimo_end_effector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nimo_end_effector_genpy)
add_dependencies(nimo_end_effector_genpy nimo_end_effector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nimo_end_effector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nimo_end_effector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nimo_end_effector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nimo_end_effector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nimo_end_effector_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nimo_end_effector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nimo_end_effector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nimo_end_effector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nimo_end_effector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nimo_end_effector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nimo_end_effector_generate_messages_py std_msgs_generate_messages_py)
endif()
