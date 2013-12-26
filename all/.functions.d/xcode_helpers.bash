# Sourced from http://blog.mugunthkumar.com/coding/panacea-for-slow-xcode/
# TODO: find out if it is applicable to XCode 4.2

function xcode_clean() {
  for f in $(ls -p ~/Library/Application\ Support/iPhone\ Simulator/| grep '/') ; do
    if [ "$f" != 'User/' ]; then
      echo "$f"
      rm -r ~/Library/Application\ Support/iPhone\ Simulator/$f
      mkdir ~/Library/Application\ Support/iPhone\ Simulator/$f
    fi
  done

  rm -r ~/Library/Developer/Xcode/DerivedData
  mkdir ~/Library/Developer/Xcode/DerivedData
}
