# Defined in /home/zack/.config/fish/functions/testmon.fish @ line 1
function testmon
	for monitor in (xrandr -q | grep " connected" | cut -d" " -f1)
    env MONITOR=$monitor polybar --reload example &
end
end
