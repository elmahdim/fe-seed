# Script to create folder with same name as file and move file into folder

for file in *; do
  if [[ -f "$file" ]]; then
    mkdir "${file%.*}"
    mv "$file" "${file%.*}"
  fi
done


Actions
find . -iname "*.js" -exec bash -c 'mv "$0" "${0%\.js}Actions.js"' {} \;

Reducer
find . -iname "*.js" -exec bash -c 'mv "$0" "${0%\.js}Reducer.js"' {} \;

Selectors
find . -iname "*.js" -exec bash -c 'mv "$0" "${0%\.js}Selectors.js"' {} \;
