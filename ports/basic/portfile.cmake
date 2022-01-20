vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/basic
  REF 1508f6880c4f3eb73719342a4f200526651796a6
  SHA512 1e222bd36e4b9184fe9787537c76cd0ddc64f4c7d71e708661442948927dfea593e180a77a29ddbca365e9c3d8fa76cd6b9ddd6e114080d8accbecd407ede8d3
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")