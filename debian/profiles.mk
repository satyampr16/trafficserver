# This files hosts the per-profile settings for building netlify-trafficserver
# under autotools

profiles :=

profiles += $(if $(filter relwithdebinfo, $(DEB_BUILD_PROFILES)), -O2 -ggdb -DNDEBUG)
profiles += $(if $(filter release, $(DEB_BUILD_PROFILES)), -O2 -DNDEBUG)
profiles += $(if $(filter debug, $(DEB_BUILD_PROFILES)), -Og -UNDEBUG -ggdb -fno-omit-frame-pointer)


