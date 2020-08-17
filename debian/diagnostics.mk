# This is where we list all of our 'additional' warnings and diagnostics.
diagnostics-forbid :=
diagnostics-allow :=
diagnostics-warn :=
diagnostics-deny :=
diagnostics :=

diagnostics-allow += ignored-qualifiers cast-function-type stringop-overflow
diagnostics-allow += format-truncation invalid-offsetof unused-parameter
diagnostics-allow += deprecated-copy cpp class-memaccess

diagnostics-warn += all extra

diagnostics += $(addprefix -Werror=,$(diagnostics-deny))
diagnostics += $(addprefix -W,$(diagnostics-warn))
diagnostics += $(addprefix -Wno-,$(diagnostics-allow))
diagnostics += $(addprefix -Werror=,$(diagnostics-forbid))
