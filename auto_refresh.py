import pyautogui as pg 

# close the code editor
pg.hotkey('win','d')

for n in range(50):
	# right click
	pg.click( x=950, y=500, button="right")

	# left click
	pg.click( x=975, y=560)
