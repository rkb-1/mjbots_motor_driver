file(REMOVE_RECURSE
  "libpi3hat.pdb"
  "libpi3hat.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/pi3hat.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
