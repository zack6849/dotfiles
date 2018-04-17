function say_fortune
	 set fortunes portal portal2 bofh-excuses futurama hitchhiker archlinux riddles
	 set choice (random choice $fortunes)
	 fortune /usr/share/fortune/$choice
end
