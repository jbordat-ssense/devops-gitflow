### init
###### Initialize a new git repo with support for the branching model.
```shell
git flow init [-fd]
  -f : force setting of gitflow branches, even if already configured
  -d : use default branch naming conventions
```

### feature
###### Manage your feature branches.
```shell
git doflow feature [list] [-v]
  -V : verbose (more) output
git doflow feature start [-F] <name> [<base>]
  -F : fetch from $ORIGIN before performing finish
git doflow feature finish [-rFkDS] [<name|nameprefix>]
  -F : fetch from $ORIGIN before performing finish
  -r : rebase instead of merge
  -k : keep branch after performing finish
  -D : force delete feature branch after finish
  -S : squash feature during merge
git doflow feature publish <name>
git doflow feature track <name>
git doflow feature diff [<name|nameprefix>]
git doflow feature rebase [-i] [<name|nameprefix>]
  -i : do an interactive rebase
git doflow feature checkout [<name|nameprefix>]
git doflow feature pull [-r] <remote> [<name>]
  -r : pull with rebase
```

### hotfix
###### Manage your hotfix branches.
```shell
git flow hotfix [list] [-v]
  -V : verbose (more) output
git flow hotfix start [-F] <version> [<base>]
  -F : fetch from $ORIGIN before performing finish
git flow hotfix finish [-Fsumfpkt] <version>
  -F : fetch from $ORIGIN before performing finish
  -s : sign the release tag cryptographically
  -u : use the given GPG-key for the digital signature (implies -s)
  -m : use the given tag message
  -f : use the contents of the given file as tag message
  -p : push to $ORIGIN after performing finish
  -k : keep branch after performing finish
  -t : tag this release
git flow hotfix publish <version>
git flow hotfix track <version>
```

### version
###### Shows version information.
```shell
git flow version
```

### release
###### Manage your release branches
```shell
git flow release [list] [-v]
  -v : verbose (more) output
git flow release start [-F] <version>
  -F : fetch from <origin> before performing finish
git flow release finish [-Fsumpk] <version>
  -F : fetch from <origin> before performing finish
  -s : sign the release tag cryptographically
  -u : use the given GPG-key for the digital signature (implies -s)
  -m : use the given tag message
  -p : push to <origin> after performing finish
  -k : keep branch after performing finish
  -n : tag this release
git flow release publish <name>
git flow release track <name>
```
