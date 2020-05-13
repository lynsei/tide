function _lean_git_prompt
    set -l gitPrompt (fish_git_prompt)

    set -l gitPrompt (string replace '(' '' $gitPrompt)
    set -l gitPrompt (string replace ')' '' $gitPrompt)

    string trim $gitPrompt
end