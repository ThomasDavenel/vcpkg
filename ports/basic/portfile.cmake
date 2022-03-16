vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ThomasDavenel/basic
  REF a8fdaa7a13aaa7c1bceca49342f34dcf4490e56c
  SHA512 6bee10ebf3a8f2b6fd74e19489af08a996fb394e550c4e5c5dc64596ec2ee917104778c171adcc49121e4e98845c892007c04bcb6da7baf724879827cbf2a211
  HEAD_REF main
)

SET(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)
SET(VCPKG_POLICY_DLLS_WITHOUT_EXPORTS enabled)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE 
	"${CURRENT_PACKAGES_DIR}/debug/include" 
	"${CURRENT_PACKAGES_DIR}/debug/lib" 
	"${CURRENT_PACKAGES_DIR}/lib"
	)