pragma Ada_2022;
with Ada.Directories.Hierarchical_File_Names;
package body Topic_Demo is
   function Available return Boolean is
      use Ada.Directories.Hierarchical_File_Names;
   begin
      return Is_Relative_Name ("src/main.adb")
        and then Simple_Name ("src/main.adb") = "main.adb";
   end Available;
end Topic_Demo;
