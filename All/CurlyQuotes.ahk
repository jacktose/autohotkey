#SingleInstance Force ;#SingleInstance is implicit in hotkey scripts, but Force switch is not
#NoEnv
SendMode Input

; ^;:: Send ‘
; ^':: Send ’
; ^+;:: Send “
; ^+':: Send ”
; ::<<:: «
; ::>>:: »

; ^-:: Send –
; ^_:: Send —

^;:: Send {AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad5}{AltUp}
^':: Send {AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}
;:*:I'm::I{AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}m
;:*:'re::{AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}re
;:*:'s::{AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}s
;:*:s'::s{AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}
;:*:'t::{AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad6}{AltUp}t
^+;:: Send {AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad7}{AltUp}
^+':: Send {AltDown}{Numpad0}{Numpad1}{Numpad4}{Numpad8}{AltUp}
;:*:<<::«
;:*:>>::»

^-:: Send {AltDown}{Numpad0}{Numpad1}{Numpad5}{Numpad0}{AltUp}
^_:: Send {AltDown}{Numpad0}{Numpad1}{Numpad5}{Numpad1}{AltUp}