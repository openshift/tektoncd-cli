# OpenShift Pipelines 1.4

# Tekton CLI v0.17.2

### Fixes 🐛

* Fix eventlistener describe command crashing without template [#1348](https://github.com/tektoncd/cli/pull/1348)

# Tekton CLI v0.17.1

### Fixes 🐛

* Fix clustertask describe and delete, task lastrun [#1341](https://github.com/tektoncd/cli/pull/1341)
* Print status in `tkn p start` if it is not nil [#1338](https://github.com/tektoncd/cli/pull/1338)
* Fix clustertask start command with --last flag [#1332](https://github.com/tektoncd/cli/pull/1332)

# Tekton CLI v0.17.0

### Fixes 🐛

* Fix crash with pipeline describe when using inline taskSpec [#1303](https://github.com/tektoncd/cli/pull/1303)

# Tekton CLI v0.16.0

### Features ✨

* Add support for showing logs of retried taskruns [#1262](https://github.com/tektoncd/cli/pull/1262)
* Add support for --clustertask flag with tkn tr delete [#1279](https://github.com/tektoncd/cli/pull/1279)

### Fixes 🐛

* Fix tkn version not working without kubeconfig [#1277](https://github.com/tektoncd/cli/pull/1277)
* tkn completion command will give an error for unexpected arg and more than one arg [#1287](https://github.com/tektoncd/cli/pull/1287)
