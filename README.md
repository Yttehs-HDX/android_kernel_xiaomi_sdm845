# polaris_LineageOS_kernel

A custom kernel based on [android_kernel_xiaomi_sdm845](https://github.com/LineageOS/android_kernel_xiaomi_sdm845)

# Features

KernelSU

# For Rom Devs

If you want to inline this kernel in your Roms then do this before building ( In kernel root directory ):

```bash
$ curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -
```

Do this Everytime you clone the repo bcz this kernel has the support for Kernel-SU and it needs to be recloned and checkout to latest stable tag.

# About Trouble

I hope anyone could help add NetHunter support ( See you in discussion )
