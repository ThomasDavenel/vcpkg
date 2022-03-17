vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/basic
  REF feb8e4e7d879e57863b75724b5f9982915ebbfbf
  SHA512 e1f44b79ba1aaec68a2e102eb0859de92c62752036bfca580bbdd21753cb97a286493b98b01860b8407e796ab6450d04694df4a806be6952094d1983c7d09c65
  HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_copy_pdbs()

vcpkg_cmake_config_fixup()


file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)