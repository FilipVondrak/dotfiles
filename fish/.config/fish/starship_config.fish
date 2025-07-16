# starship settings
function starship_transient_prompt_func
	starship module time
	starship module character
end

function starship_transient_rprompt_func
end

starship init fish | source
enable_transience
