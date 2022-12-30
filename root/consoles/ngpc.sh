consoleName="SNK Neo Geo Pocket Color"
consoleFolder="ngpc"
consoleRomFileExt=".ngc, .zip, .7z"
raConsoleId="14"
uncompressRom="true"
compressRom="true"
skyscraperPlatform="ngpc"
downloadAll="true"

# Create URL List
archiveContentsUrl="https://archive.org/download/hearto-1g1r-collection/hearto_1g1r_collection/SNK - Neo Geo Pocket Color.zip/"
archiveUrl="$(wget -qO- "$archiveContentsUrl" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep -i "archive.org" | sed 's%^//%https://%g' | sort -u)"
