## Homebrew installer for Mac OS X

### Updating the URL and checksum

Whenever a new release is published, this formula will need to be updated with the latest URL and checksum of the download tar file. To calculate the checsum to be used in the formula, the simplest approach is to curl the resource URL and pipe it to `shasum`. e.g.:

```bash
curl -L -s https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/darwin-amd64-1.1.0/hyperledger-fabric-darwin-amd64-1.1.0.tar.gz | shasum -a 256
46bee0ddf51d6e47fac6b59906b2ea2e738194e92f0642c9b6fa0a0ad31077dd
```

### Testing

To test locally, first fork the github.com/hyperledger/homebrew-fabric
repository to your personal GitHub account. Then, clone your fork to your
laptop/workstation. Checkout the Gerrit CR for the change to be tested and
apply to your local clone. Then push the changes to your personal fork.

e.g. following the fork step:

```bash
git clone git@github.com:<your-github-id>/homebrew-fabric.git
cd homebrew-fabric
git fetch ssh://<your-lf-id>s@gerrit.hyperledger.org:29418/homebrew-fabric refs/changes/41/11241/5 && git checkout FETCH_HEAD
git push origin HEAD:master
```

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
