# Overview
This page provide's an overview of Sara Edwards' contribution to the AESD Final Project Morse Code Driver.

# Video Outline
See [video here](https://1drv.ms/v/c/78c4e5b324b4a1e3/IQBn73sctKbkRYxnB-GW5yuNAfDkHy83agYCkJxkV4it7Mk?e=i0uviU).

In this video:
* The goal and future direction of the project
* The Buildroot modifications.
* The C code for the application.
* The operation of the application on the Raspberry Pi 4.

## Challenges
There were several challenges through this project:
* I began without having done sufficient research into what would be involved. There were more areas that were new to me than I had originally thought, resulting in a much longer timeline than three 10-15 hour sprints would allow. This resulted in having to narrow the scope of the project drastically.
* Addressing the GPIO pins on the RPi4 was more complicated than I expected. I expected to calculate the address I need to write to and then just write a 0 or 1. Instead, I learned that the Pi has separate registers for write and read (set and clear) as well as others for mode configuration. Additionally, these are simple to map to in user space (using mmap() and munmap()) but from kernel space, there are further considerations regarding addressing that must be accounted for.

## Lessons Learned
I am grateful for the experience I gained from this project. Some of the most important things I learned:
* Do a little more research before committing to a timeline. But also...
* ...don't be afraid to change the scope and timeline as needed.
* It was helpful to make a list of tasks/issues and consider how many are new and therefore likely to require more time.
* It's rewarding to build something that works, even if it's as simple as making a light blink. The Agile methodology is rewarding in this way, always working toward something that works in small steps. I want to apply this part of Agile as much as future projects allow.

