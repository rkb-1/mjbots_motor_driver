file(REMOVE_RECURSE
  "libmoteus.pdb"
  "libmoteus.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/moteus.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
