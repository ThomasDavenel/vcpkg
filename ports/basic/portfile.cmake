vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/basic
  REF f230688c9e0561188d8510ac46d506089f2282d7
  SHA512 c0032338796e45a49637fbbd8212f1837de9cfcfc1a9d7e384bca21bf548a3291945c325a139b942cbfe9433c057c2576ad6a844ac7ecac1d60a87a772625222
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