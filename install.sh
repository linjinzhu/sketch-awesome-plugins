#!/bash/sh
PLUGINS_DIR=~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/
PLUGINS_URL=(
  "nathco/Clear-Styles"
  "petehouston/sketch-guides"
)

echo "===================================================="
echo "START Installation"
echo "===================================================="
echo ""

for plugin_url in ${PLUGINS_URL[@]}
  do
    plugin_url="https://codeload.github.com/${plugin_url}/zip/master"
    echo "DOWNLOAD $plugin_url"
    curl -o  temp.zip $plugin_url
    unzip -o temp.zip -d "${PLUGINS_DIR}"
    rm temp.zip
    echo ""
done

echo "===================================================="
echo "FINISH Installation. INSTALLED LIST:"
for plugin_url in $PLUGINS_URL
do
  echo "  $plugin_url"
done
echo "===================================================="
