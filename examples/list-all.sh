for i in *fumola-type-listing *fumola-func-listing; do
    echo BEGIN $i;
    cat $i;
    echo END $i;
    echo;
done
