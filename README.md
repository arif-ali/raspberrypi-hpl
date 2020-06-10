# Compile and Running HowTo

This is a collection of scripts and configuration that would
allow to compile and run the benchmark in a consistent way

The following will clone, and compile all the stuff

First clone the repository

    git clone https://gitlab.arif-ali.co.uk:8543/arif/raspberrypi-hpl.git

Change to the scripts directory

    cd raspberrypi-hpl/scripts

You will find many scripts, and a `CONFIG` file. The one script will compile everything for you, i.e. by running the following command

    ./compile_all.sh

If at any time any of the parts fail, you can run the individual `make_*` scripts

In order, the `compile_all.sh` will compile the applications in the following order

1. mpich
2. OpenBLAS
3. HPL

If for any reason you need to change any of the compilation flags or options, you can either udpate them in the `CONFIG` file or the corresponding `make_*.sh` script. For HPL, you will need to update `config/Make.rpi4_mpich` for any extra flags that you may require

Finallu, once you're happy that the relevant applications have compiled, then we can run HPL using the following command

    ./run_job.sh
