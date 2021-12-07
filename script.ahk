#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

AppsKey & a::SendInput {Blind}{ CapsLock }

AppsKey & i::SendInput {Blind}{ Up }
AppsKey & j::SendInput {Blind}{ Left }
AppsKey & k::SendInput {Blind}{ Down }
AppsKey & l::SendInput {Blind}{ Right }

AppsKey & p::SendInput {Blind}{ PgUp }
AppsKey & `;::SendInput {Blind}{ PgDn }

AppsKey & [::SendInput {Blind}{ Home }
AppsKey & '::SendInput {Blind}{ End }

AppsKey & y::SendInput {Blind}{ Insert }

AppsKey & u::SendInput {Blind}{ Backspace }
AppsKey & Backspace::SendInput {Blind}{ Del }

AppsKey & x::SendInput {Blind}^{ x }
AppsKey & c::SendInput {Blind}^{ c }
AppsKey & z::SendInput {Blind}^{ z }
AppsKey & v::SendInput {Blind}^{ v }
AppsKey & r::SendInput {Blind}^{ r }
AppsKey & f::SendInput {Blind}^{ f }

; tmux prefix
AppsKey & Space::SendInput {Blind}^{ b }
; tmux select
AppsKey & e::SendInput {Blind}^{ Space }
; tmux write
AppsKey & w::SendInput {Blind}^{ w }

; macros
AppsKey & 1::
{
   Send, fuckdish
   SendInput { ! }
   send, 2
   send {Enter}
   return
}

AppsKey & 2::
{
   Send, 5$
   SendInput { # }
   Send, N2csh
   send {Enter}
   return
}

AppsKey & 3::
{
   Send, echo 3 > /proc/sysrq-trigger
   send {Enter}
   return
}

AppsKey & 4::
{
   Send, logcat | grep -i ntpproxy
   send {Enter}
   return
}

AppsKey & 5::
{
   Send, logcat | grep -i devicemgr
   send {Enter}
   return
}

AppsKey & 6::
{
   Send, logcat | grep -i adam
   send {Enter}
   return
}

AppsKey & 7::
{
   Send, ps -ef | grep com.dish
   send {Enter}
   return
}

AppsKey & 8::
{
   Send,logcat | grep -i stb_validate
   send {Enter}
   return
}

#maxThreadsPerHotkey, 2
setKeyDelay, 50, 50
setMouseDelay, 50
banana:=0

AppsKey & 9::
	banana:=!banana
	
	while (banana=1)
	{
		SendInput {Blind}^{ c }
		sleep, 100
	}
return
