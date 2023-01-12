file(REMOVE_RECURSE
  "libmoteus-static.a"
  "libmoteus-static.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/moteus-static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
