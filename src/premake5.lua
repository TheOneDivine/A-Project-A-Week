workspace "A_Project_A_Week"
   platforms { "Win32", "Win64" }
   configurations { "Debug", "Release" }

   filter { "platforms:Win32" }
      system "Windows"
      architecture "x86"

   filter { "platforms:Win64" }
      system "Windows"
      architecture "x86_64"

project "Hello_World"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.platform}/%{cfg.buildcfg}"

   files { 
      "**.c"
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      optimize "Off"
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
      symbols "Off"