vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/corebox
  REF bfd98503d8ce01f1bba288962d7142c81754500c
  SHA512 208719424ab37ecacef5f8c9e0413d23fd7722c00da779362e2f8fc919e2bd9afc4d4926c85d61887422b7e14a16e817f6283814140ec37ae7a35b0b0fcfd59e
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