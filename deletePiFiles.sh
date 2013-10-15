#!/bin/sh
# since partial preprocessed files (extension pi) of linux are huge---several megabytes are not
# uncommon---we have to delete them during the analysis run. We regularly (every 10 minutes) check
# for new pi files that are at least 2 hours (+120 minutes) old.


# main loop
while true;
do
    echo `date` look for new files to delete!
    for f in `find linux-2.6.33.3 -type f -name "*.pi" -cmin -120`;
    do
        echo delete $f
        rm $f
    done
    # sleep 10 minutes and then look again
    sleep 600
done
