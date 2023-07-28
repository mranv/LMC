#!/bin/sh

# Looking up for the execution directory
cd `dirname $0`

. ./src/init/shared.sh
. ./src/init/inst-functions.sh

NEWCONFIG="./localfiles.temp"

if [ -r "$NEWCONFIG" ]; then
    rm "$NEWCONFIG"
fi

if [ "$#" = "1" ]; then
  INSTALLDIR="$1"
fi

echo "" >> $NEWCONFIG
echo "<ossec_config>" >> $NEWCONFIG
WriteLogs "add"
echo "</ossec_config>" >> $NEWCONFIG

cat "$NEWCONFIG"

rm "$NEWCONFIG"

exit 0
