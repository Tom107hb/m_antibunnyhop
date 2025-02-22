# Jump Ragdoll Script for FiveM

## Description
This script forces a player to ragdoll after performing a certain number of consecutive jumps while running or sprinting. The player will ragdoll after the defined number of jumps (`NumberJump`), creating a fun and dynamic gameplay experience.

## Features
- The player must be on foot, not swimming, and either running or sprinting.
- After the defined number of jumps (default: 4), the player will ragdoll for 5 seconds.
- The ragdoll effect is triggered only when the player is not climbing, jumping, or in a ragdoll state already.
  
## Installation
1. Place the script in your `resources` folder.
2. Add the following line to your `server.cfg` to ensure the script is loaded:

ensure jump_ragdoll

## Configuration
You can configure the number of jumps required before triggering the ragdoll effect by modifying the `NumberJump` variable in the script:

```lua
local NumberJump = 4
```
By default, the player will be forced into a ragdoll state after 4 consecutive jumps while running or sprinting.

How it Works

The script monitors whether the player is on foot, running or sprinting, and jumping.

If the player performs the specified number of jumps, they will ragdoll for 5 seconds.

If the player is not in the required states, the script checks again after a short delay.


License

This script is provided as-is for use on FiveM servers. Feel free to modify it for your needs. No warranty is provided for any issues that arise from its usage.

Credits

Developed by [MatzeV]

Uses FiveM scripting functions for ragdoll mechanics and player state checks.
