node_version=`node -v`
echo "Using node $node_version"
echo "Current NODE_PATH is '$NODE_PATH'"
echo "Executing 'node foo/bar.js', you should seeing an error..."
echo ""

node foo/bar.js || true

echo ""
echo "Appeding a trailing colon to NODE_PATH"

export NODE_PATH=$NODE_PATH:

echo "NODE_PATH now is '$NODE_PATH' <- notice the colon in the end"
echo "Executing 'node foo/bar.js'..."
echo ""

node foo/bar.js
