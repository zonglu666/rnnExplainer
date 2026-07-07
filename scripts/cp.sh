echo "Building the project..."
npm run build
echo "Copying files to dist directory..."
rm -rf dist
mkdir -p dist
cp -r public/* dist/
echo "Copying files to remote server..."
scp -r ./dist/* root@txyunaigc:/root/server/teaching/courseware-v3/nnExplainerWTI1dUxXVjRjR3hoYVc1bGNn