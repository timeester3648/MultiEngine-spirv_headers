include "../../premake/common_premake_defines.lua"

project "spirv_headers"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	defines {
		"ENABLE_OPT",
		"ENABLE_HLSL"
	}

	files {
		"./**.h",
		"./**.hpp",
		"./**.hpp11",
	}