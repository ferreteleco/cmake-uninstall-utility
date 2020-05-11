# CMake Uninstall Utility Script

This is dead simple.

1. Go to the /build directory inside the installed CMake project.

```bash
cd path/to/project/build
```

2. Launch the script with elevated privileges, providing it with the file name install_manifest.txt,
   that should be in /build directory

```bash
sudo ./cmake-uninstall-utility.sh install_manifest.txt
```

Tada!

----
contact andres.ferreiro.glez@gmail.com if any issue