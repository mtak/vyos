#!/bin/bash

ip=$(ip r g 10.100.0.1 | head -1 | awk '{print $5;}')

echo "Image URLs:"

for i in $(ls | grep vyos-mtak)
do
echo "  add system image http://${ip}:3333/${i}"
done

echo ""
echo "View images using:"
echo "  show system image"
echo ""
echo "Show current version:"
echo "  show version"
echo ""
echo "Delete old images using:"
echo '  delete system image $imageName'

python3 -m http.server 3333



