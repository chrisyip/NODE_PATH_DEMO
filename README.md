This is a demo shows what node's `require` will act like if `$NODE_PATH` ends with a colon (':').

Try this in a unix-like system

```
git clone https://github.com/chrisyip/NODE_PATH_DEMO.git
cd NODE_PATH_DEMO
chmod +x run.sh
./run.sh
```

You'll see something like this:

```
Using node v1.8.1
Current NODE_PATH is '/usr/local/lib/node_modules'
Executing 'node foo/bar.js', you should seeing an error...

In foo/bar.js
module.js:336
    throw err;
          ^
Error: Cannot find module 'index.js'
    at Function.Module._resolveFilename (module.js:334:15)
    at Function.Module._load (module.js:276:25)
    at Module.require (module.js:363:17)
    at require (module.js:382:17)
    at Object.<anonymous> (/Users/Chris/Workspace/node/NODE_PATH_DEMO/foo/bar.js:2:13)
    at Module._compile (module.js:428:26)
    at Object.Module._extensions..js (module.js:446:10)
    at Module.load (module.js:353:32)
    at Function.Module._load (module.js:308:12)
    at Function.Module.runMain (module.js:469:10)

Appeding a trailing colon to NODE_PATH
NODE_PATH now is '/usr/local/lib/node_modules:' <- notice the colon in the end
Executing 'node foo/bar.js'...

In foo/bar.js
index.js loaded
index.js: I should not be required
```

Funny, right? When requiring `index.js` in `foo/bar.js`, in normal situation, node will just throw an "module not found" exception.

But if `$NODE_PATH` ends with a colon, thing's going funny, node acts like search all the relative folders.

Does Anyone know why?
