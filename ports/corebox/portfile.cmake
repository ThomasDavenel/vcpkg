vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/corebox
  REF b0f4f8259fac6139d7898285022e946fef5dd181
  SHA512 56fb2f84890e6b36232344f999792d1c2501d7a0949016f2b20a4b17ce27da722248e6a0e403dee802e4d3d85e37c0bdd4d65cdca1a2d2b9c4f0c5d2592e9be4
  HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)