#!/usr/bin/env fish

if test "$argv[1]" = -g
    set group
    set -e argv[1]
end

if test (count $argv) -ne 2
    echo 'Wrong number of arguments. Usage: ./wsaction.fish [-g] <dispatcher> <workspace>'
    exit 1
end

set -l active_ws (hyprctl activeworkspace -j | jq -r '.id')

if set -q group
    set -l relative_idx (math "(($active_ws - 1) % 10) + 1")
    set -l target_ws (math "($argv[2] - 1) * 10 + $relative_idx")

    hyprctl dispatch $argv[1] $target_ws
else
    set -l current_group_base (math "floor(($active_ws - 1) / 10) * 10")
    set -l target_ws (math "$current_group_base + $argv[2]")

    hyprctl dispatch $argv[1] $target_ws
end
