# **Croissant Game V0.8**

A early itch.io demo of the running segment from a bigger game about croissants and bananas. The game runs in your browser, and here's a link to it



**Link to Try**: [https://randompigion.itch.io/croissant-game-v06](https://randompigion.itch.io/croissant-game-v06)

(This build does not a download, and should run purely in your browser.)

<img width="1500" height="1500" alt="Image" src="https://github.com/user-attachments/assets/24c0b2c3-2270-4d62-9dfb-d9f64cfdf2f1" />

**Features**: This build is meant to show off the movement system in a test demo level, and animations for the character running and winning the level so its more based on it working technically instead of looking good.
- The character's animations will react to inputs
- There is collisions for walls that are part of the level (note that this doesn't count the decorative ones, the reason is explained below)
- There's a level layout that was created using repeated elements
- Sliding is a part of the controls, and the collision will shrink when you do it
- A goal sign, with a victory animation and the game stopping after you touch it.
- A respawn mechanic if you fall off the ground.





### **Controls**

I've added multiple ways to play in the controls. Feel free to use whatever version feels most comfortable:



**Normal (WASD):**

A/D to strafe left and right respectively

W/S to run and slow down respectively

Control (either works) to slide under objects.

Space to jump.



**Minimized (Arrows):**

Left and Right to move in those directions

Up to jump

Down to slide



*\*Note that this removes the ability to speed up or slow down as levels are designed around normally walking.*



In addition to all of this, you can hold the left button on your mouse to sprint, and right to slide if prefer to use both hands.





#### Trade-Offs in this version/Notes

While playing you may notice that some objects don't actually have collision, and you can go through them. This was actually done on purpose and they were removed after i made all of them to get a higher framerate on itch (which it was lacking before).



Currently all of the assets are lower-poly versions of the ones that i will be using in the final version, so i wasn't able to turn them into parts of the environment's image (since you can probably tell it's not here). The original model would have cell shading for the characters which would react with the lighting of the enviorment. Despite making this (which is shown in the cover art), it was not importing correctly, so I had to temporarily make a version without the shading.
<img width="1128" height="611" alt="Image" src="https://github.com/user-attachments/assets/2182ea14-0f27-47b7-884a-282946b8a005" />


You may also notice that you can't restart (aside from dying), and the game pauses after you beat it. This is actually intensional, since I want it to eventually lead you back to the level select menu which doesn't exist right now. When I code that in, it will be fixed. for the time being, please just refresh the page

##### Credits
I didn't use other people's work for the code nor the assets (which were all made in blender), so there isn't any attributions i need to make for this version. I kinda made all of it so thats why the graphics look that bad...
The goal ring is inspired by sa2's and the character is based off the banana cat meme (i cannot find the person who made that online). Both of these were remade and changed when being recreated so they are different from the originals for preventing copyright issues.
No AI was used while making this.
