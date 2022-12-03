docker images
echo
echo "Write below the name of the image you wish to containerize!"
read container
docker run -it --rm $container bash
