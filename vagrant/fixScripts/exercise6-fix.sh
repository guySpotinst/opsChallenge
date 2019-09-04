#!/bin/bash
#add fix to exercise6-fix here

# Arguments passed into vars
others=${*%${!#}}
dest=${@:$#}

# Check if the folder on server2 exists and operate accordingly
if ssh server2 [ -d $dest ];
 then
  scp $others server2:$dest && echo "Files copied to server2/$dest"
 else
  ssh server2 "mkdir -p $dest" && scp $others server2:$dest && echo "Created server2/$dest and copied files"
fi
