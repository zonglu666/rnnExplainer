echo "Building the project..."
npm run build
echo "Copying files to dist directory..."
rm -rf dist
mkdir -p dist
cp -r public/* dist/
# echo "Adding /nnExplainer prefix to resource paths in dist/index.html..."
# sed -i '' \
#   -e 's|href="/assets/|href="/nnExplainer/assets/|g' \
#   -e "s|href='/assets/|href='/nnExplainer/assets/|g" \
#   -e 's|src="/assets/|src="/nnExplainer/assets/|g' \
#   -e "s|src='/assets/|src='/nnExplainer/assets/|g" \
#   -e "s|[uU][rR][lL]('/assets/|URL('/nnExplainer/assets/|g" \
#   dist/index.html
echo "Copying files to remote server..."
scp -r ./dist/* root@txyunaigc:/root/server/teaching/courseware-v3/nnExplainerWTI1dUxXVjRjR3hoYVc1bGNn