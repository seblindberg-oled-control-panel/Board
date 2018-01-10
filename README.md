# OLED Control Panel Board

![Mechanical design front](https://github.com/seblindberg-oled-control-panel/Board/wiki/Assets/mechanical-front.png)
![Mechanical design side](https://github.com/seblindberg-oled-control-panel/Board/wiki/Assets/mechanical-side.png)

## Revisions

Board revisions are kept as tags in git. The board is generally tagged when the files have been sent off for manufacturing. To export a specific revision, simply run

```
$ git archive --format zip -o /path/to/rev-a.zip 9e7148
```

where the hash of the tag can be found by running `git show rev-a` for the specific tag.

## Scripts

A ruby script is included for generating EAGLE commands that place some of the more repetitive components. There are tools in EAGLE for achieving the same thing and they are most likely better, but a) I did not know that at the time and b) doing it yourself is often more flexible. 

To run the scripts you need to locate the Scripts folder in your terminal of choice and type `ruby place_leds.rb`. Then press `enter` and copy the output into the command input in EAGLE.