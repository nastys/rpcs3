cmake_minimum_required(VERSION 2.8.12)

add_custom_target(MoltenVK_target ALL
                   COMMAND echo "Building MoltenVK"
                   COMMAND ./fetchDependencies --macos
                   COMMAND xcodebuild build -quiet -project "MoltenVKPackaging.xcodeproj" -scheme "MoltenVK Package \\(macOS only\\)" -configuration "Release" -arch "x86_64" MVK_CONFIG_RESUME_LOST_DEVICE=1 -derivedDataPath "${CMAKE_CURRENT_BINARY_DIR}/MoltenVK"
                   WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/MoltenVK/
                   COMMENT "Building MoltenVK")

message("MoltenVK")