#!/usr/bin/env python
import subprocess
import random
from time import sleep

while True:
  # Get the mouse position using MouseTools
  # http://www.hamsoftengineering.com/codeSharing/MouseTools/MouseTools.html
  getMouseCMD = "./MouseTools -location"
  process = subprocess.Popen(getMouseCMD.split(), stdout=subprocess.PIPE)
  output = process.communicate()[0]

  mousePos = output.split("\n")
  newX = int(mousePos[0]) + random.randint(-250,250)
  newY = int(mousePos[1]) + random.randint(-250,250)

  # Set new position
  setMouseCMD = "./MouseTools -x {0} -y {1}".format(newX,newY)
  subprocess.Popen(setMouseCMD.split(), stdout=subprocess.PIPE)
  print "hehe" 
  sleep(25)
