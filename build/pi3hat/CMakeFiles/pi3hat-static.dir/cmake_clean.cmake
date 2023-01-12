file(REMOVE_RECURSE
  "libpi3hat-static.a"
  "libpi3hat-static.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/pi3hat-static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
