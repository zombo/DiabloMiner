#!/bin/sh
export GPU_USE_SYNC_OBJECTS=1
export DISPLAY=`echo $DISPLAY | sed 's/\.[0-9]//'`
export COMPUTE=$DISPLAY
java -Xmx16m -cp target/libs/*:target/DiabloMiner-0.0.1-SNAPSHOT.jar -Djava.library.path=target/libs/natives/linux com.diablominer.DiabloMiner.DiabloMiner $@
