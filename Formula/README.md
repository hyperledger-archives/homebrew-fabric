## Homebrew installer for Mac OS X

### Updating the URL and checksum

Whenever a new release is published, this formula will need to be updated with the latest URL and checksum of the download tar file. To calculate the checsum to be used in the formula, the simplest approach is to curl the resource URL and pipe it to `shasum`. e.g.:

```bash
curl -L -s https://github.com/hyperledger/fabric/releases/download/v1.4.4/hyperledger-fabric-darwin-amd64-1.4.4.tar.gz | shasum -a 256
6ba9701a8913eda4e2d226f07bd0e3bb52effa143cd040bbdb6c877f6cd735a8
```


### Testing

To test locally, first fork the github.com/hyperledger/homebrew-fabric
repository to your personal GitHub account. Then, clone your fork to your
laptop/workstation. Check out the change to be tested and
apply to your local clone. Then push the changes to your personal fork.

**Note:** you may also use the GitHub desktop client to clone and push.

If you have previously installed the Hyperledger Fabric tap,
you should first uninstall it to test an update.

```bash
brew untap hyperledger/fabric
```

The next step, you can install **your** tap with the following:

```bash
brew tap <your-github-id>/homebrew-fabric
```

Now that you have the tap based on your personal fork installed, you can
test the command.

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
