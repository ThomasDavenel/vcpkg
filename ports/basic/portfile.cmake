vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/basic
  REF 6b6e550f797ac188aaebf82b72d2d0c038163f8c
  SHA512 599b6a37558e802fe38d81674c59f4e85ed7067942c3d29fe1f96de92148635b5a624730c6495c1d46e8be2178b8ac7b88ef087f42c3bd2ea2de4ac4af90ea44
  HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_copy_pdbs()


file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)