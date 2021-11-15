#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ## THE FOLLOWING BINDINGS MIMIC THE FN-LAYER OF A DUCKY MK ##
AppsKey & i::SendInput {Blind}{ Up }
AppsKey & j::SendInput {Blind}{ Left }
AppsKey & k::SendInput {Blind}{ Down }
AppsKey & l::SendInput {Blind}{ Right }

AppsKey & p::SendInput {Blind}{ PgUp }
AppsKey & `;::SendInput {Blind}{ PgDn }

AppsKey & [::SendInput {Blind}{ Home }
AppsKey & '::SendInput {Blind}{ End }

AppsKey & 1::SendInput {Blind}{ F1 }
AppsKey & 2::SendInput {Blind}{ F2 }
AppsKey & 3::SendInput {Blind}{ F3 }
AppsKey & 4::SendInput {Blind}{ F4 }
AppsKey & 5::SendInput {Blind}{ F5 }
AppsKey & 6::SendInput {Blind}{ F6 }
AppsKey & 7::SendInput {Blind}{ F7 }
AppsKey & 8::SendInput {Blind}{ F8 }
AppsKey & 9::SendInput {Blind}{ F9 }
AppsKey & 0::SendInput {Blind}{ F10 }
AppsKey & -::SendInput {Blind}{ F11 }
AppsKey & =::SendInput {Blind}{ F12 }

AppsKey & ,::SendInput {Volume_Down 1}
AppsKey & .::SendInput {Volume_Up 1}
AppsKey & m::SendInput {Volume_Mute }

; ####################################################

AppsKey & a::SendInput {Blind}{ CapsLock }

AppsKey & u::SendInput {Blind}{ Backspace }

AppsKey & x::SendInput {Blind}^{ x }
AppsKey & c::SendInput {Blind}^{ c }
AppsKey & v::SendInput {Blind}^{ v }

; tmux prefix
AppsKey & Space::SendInput {Blind}^{ b }

; macros
AppsKey & q::
{
   Send, fuckdish
   SendInput { ! }
   send, 1
   send {Enter}
   return
}

AppsKey & w::
{
   Send, echo 3 > /proc/sysrq-trigger
   send {Enter}
   return
}