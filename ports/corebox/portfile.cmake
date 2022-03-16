vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/corebox
  REF 4f7147504b8e6fdec55aeec9ed1a6956c4aa0a32
  SHA512 28e7fe5ea8af732369f0df013acdbffc2b353a553d2965ea51007f2e9a01a25139abe15fd8e5b1621901fd2dbb04b56e02e3d74c2554f716f514611c72afd7c6
  HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)