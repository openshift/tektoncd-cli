# OpenShift Pipelines 1.5

# Tekton CLI v0.19.0

### Features ✨

* Tkn task, clustertask and pipeline start will interactively ask for params value if not default specified and not passed [#1180](https://github.com/tektoncd/cli/pull/1180) [#1379](https://github.com/tektoncd/cli/pull/1379) [#1376](https://github.com/tektoncd/cli/pull/1376)
* Lookup plugins in current path if not in plugins dir [#1366](https://github.com/tektoncd/cli/pull/1366)
* Add support for optional workspaces in start command [#1377](https://github.com/tektoncd/cli/pull/1377)
* Add tkn hub check-upgrade command, other commands refactored to be based on pipeline version and show catalog name in searcch command output [#1369](https://github.com/tektoncd/cli/pull/1369)
* Add --component flag to tkn version command for specific component version [#1093](https://github.com/tektoncd/cli/pull/1093)
* Add a flag --prefix=false to not print the taskname/step prefix when showing logs [#1304](https://github.com/tektoncd/cli/pull/1304)

### Fixes 🐛

* Fix validation error if any param has not type defined and is passed using -f flag [#1069](https://github.com/tektoncd/cli/pull/1069)
* Consistent and details description for workspace flag in start commands [#1354](https://github.com/tektoncd/cli/pull/1354)

# Tekton CLI v0.18.0

### Features ✨

* Introduce a tkn bundle push command to produce Tekton bundles [#1312](https://github.com/tektoncd/cli/pull/1312)
* Add a bundle pull command to fetch tekton bundle contents [#1328](https://github.com/tektoncd/cli/pull/1328)
* Adds version in describe command of task [#1317](https://github.com/tektoncd/cli/pull/1317)
* Auto-select TriggerTemplate/TriggerBinding/ClusterTriggerBinding/Eventlistener in describe command if only one is present [#1356](https://github.com/tektoncd/cli/pull/1356) [#1353](https://github.com/tektoncd/cli/pull/1353)
* Add section of Skipped tasks in tkn pr describe [#1311](https://github.com/tektoncd/cli/pull/1311)
* Add support for tkn clustertask logs [#1333](https://github.com/tektoncd/cli/pull/1333)

### Fixes 🐛

* Fix parseParam with empty array [#1309](https://github.com/tektoncd/cli/pull/1309)
* Fixes the bundle push and list commands to conform to the bundle spec. [#1344](https://github.com/tektoncd/cli/pull/1344)
