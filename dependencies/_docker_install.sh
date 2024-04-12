npm ci

# zip 裡頭似乎必須要叫做 nodejs 才行
mkdir nodejs
mv node_modules nodejs
zip -r nodejs.zip nodejs
