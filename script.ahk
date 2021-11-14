#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ## THE FOLLOWING BINDINGS MIMIC THE FUNCTION-KEYS OF A DUCKY MK ##
AppsKey & i::SendInput {Blind}{ Up }
AppsKey & j::SendInput {Blind}{ Left }
AppsKey & k::SendInput {Blind}{ Down }
AppsKey & l::SendInput {Blind}{ Right }

AppsKey & p::SendInput {Blind}{ PgUp }
AppsKey & `;::SendInput {Blind}{ PgDn }

AppsKey & [::SendInput {Blind}{ Home }
AppsKey & '::SendInput {Blind}{ End }

; ####
AppsKey & a::SendInput {Blind}{ CapsLock }

AppsKey & d::SendInput {Blind}{ Delete }
AppsKey & b::SendInput {Blind}{ Backspace }

AppsKey & o::SendInput {Blind}^{ x }
AppsKey & e::SendInput {Blind}^{ c }
AppsKey & u::SendInput {Blind}^{ v }

; tmux prefix
AppsKey & Space::SendInput {Blind}^{ b }

AppsKey & ,::SendInput {Volume_Down 1}
AppsKey & .::SendInput {Volume_Up 1}
AppsKey & m::SendInput {Volume_Mute }