#!/usr/bin/env python3

from gpiozero import Button
from subprocess import check_call
from signal import pause

HOLD_TIME = 2
PIO_NB = 22

def shutdown():
    print("Shutdown")
    check_call(['sudo', 'poweroff'])

shutdown_btn = Button(PIO_NB, pull_up=None, active_state=True, hold_time=HOLD_TIME)
shutdown_btn.when_held = shutdown

pause()
