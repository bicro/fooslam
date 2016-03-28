sudo sh -c 'echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"fff0\", ATTR{idProduct}==\"d009\", MODE=\"0666\"" > /etc/udev/rules.d/51-guidance.rules'
