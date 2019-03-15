function say_fortune
	set fortunes portal bofh-excuses futurama
set choice (random choice $fortunes)
fortune /usr/share/fortune/$choice
end
