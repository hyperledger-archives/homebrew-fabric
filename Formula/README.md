Homebrew installer for Mac OS X

To test locally, first fork hyperledger/homebrew-fabric.
Then, clone your fork locally. Checkout the CR and apply to your
local clone. Then push the changes to your fork.

If you have previously installed the Hyperledger Faric tap,
you should uninstall it to test an update.

```bash
brew untap hyperledger/fabric
```

The next step, you can install **your** tap with the following:

```bash
brew tap <yourghid>/homebrew-fabric
```

Now that you have the tap installed, you can test the command.

```bash
brew install fabric-tools
```

Then, check to see whether the binaries have been properly installed:

```bash
which cryptogen
which configtxgen
which configtxlator
```

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
