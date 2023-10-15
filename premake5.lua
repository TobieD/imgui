---------------------------------------------
---------------- Engine ---- ----------------
---------------------------------------------
group "Dependencies"
project "imgui"
	kind "staticLib" --dll file
	language "C++"

	targetdir ("bin/" .. outputDirectory .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDirectory .. "/%{prj.name}")

	files
	{
		--Core files
		"*.cpp",
		"*.h",

		--Helpers
		"misc/debuggers/imgui.natvis",
		"misc/debuggers/imgui.natstepfilter",		
	}


	filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"