#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TOP=$DIR/..

version=$( node -e "console.log(require('$TOP/package.json').version)" )
name=gitlist-$version
repo=$TOP/build/$name

pushd $TOP
composer install
composer install --no-dev
composer dump-autoload --optimize
bower install
npm install
grunt

rm -rf $repo || true
mkdir -p $repo

for item in "$TOP/bower_components" "$TOP/cache" "$TOP/src" "$TOP/themes" "$TOP/vendor"
do
    echo $item
    cp -R $item $repo/
done

for item in "$TOP/INSTALL.md" "$TOP/LICENSE" "$TOP/README.md" "$TOP/boot.php" "$TOP/config.example.ini" "$TOP/index.php" "$TOP/package.json" "$TOP/.htaccess"
do
    echo $item
    cp $item $repo/
done

zipname=$TOP/build/$name.zip
rm -rf $zipname
pushd $repo
zip -r $TOP/build/$name.zip * .*
popd

rm -rf $repo

popd