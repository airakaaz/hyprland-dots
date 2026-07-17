require("layouts." .. state.layout)

hl.bind(alt_ .. ctrl_ .. "comma", modifyState("layout", '"dwindle"'))
hl.bind(alt_ .. ctrl_ .. "period", modifyState("layout", '"master"'))
hl.bind(alt_ .. ctrl_ .. "slash", modifyState("layout", '"scrolling"'))
