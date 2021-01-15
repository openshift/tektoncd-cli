# Tektoncd cli TP-1.3

# Tekton Cli v0.15.0

## Features :sparkles:
* Basic execution plugin module https://github.com/tektoncd/cli/pull/1178
* Add --no-headers flag to tkn condition/triggerbinding/eventlistenner list command https://github.com/tektoncd/cli/pull/1259,
  https://github.com/tektoncd/cli/pull/1254 and https://github.com/tektoncd/cli/pull/1258
* Allow --prefix-name and --timeout to be override when using --last or --use options https://github.com/tektoncd/cli/pull/1242

## Fixes :bug:
* Hoist an ActivityTimeout option https://github.com/tektoncd/cli/pull/1265
* Ignore --follow flag when TaskRun or PipelineRun is done https://github.com/tektoncd/cli/pull/1250

## Deprecation :broom:
* remove --check shorthand and add global flags to version cmd https://github.com/tektoncd/cli/pull/1269

# Tekton Cli v0.14.0

## Features :sparkles:
* Update OSX instruction to install from brew :beers: https://github.com/tektoncd/cli/pull/1196
* Add EventListener Logs Command https://github.com/tektoncd/cli/pull/1192
* Integrate Hub commands into tkn https://github.com/tektoncd/cli/pull/1203
* Change --nocolour to --no-color https://github.com/tektoncd/cli/pull/1224
* Deprecate -c Shorthand for tkn version --check https://github.com/tektoncd/cli/pull/1232
* Add --all-namespaces flag to tkn triggerbinding/eventlistener/TriggerTemplate/condition list command
  https://github.com/tektoncd/cli/pull/1234, https://github.com/tektoncd/cli/pull/1236, https://github.com/tektoncd/cli/pull/1235
  and https://github.com/tektoncd/cli/pull/1241
* Add --no-headers flag to tkn clustertask/clustertriggerbinding list command https://github.com/tektoncd/cli/pull/1244
  and https://github.com/tektoncd/cli/pull/1243
* Made sure to target LTS for ubuntus https://github.com/tektoncd/cli/pull/1238

## Fixes :bug:
* Common way of Referring to Tekton Resources in User Facing Messages: EventListener/TriggerBinding/ClusterTriggerBinding
  /Condition/TriggerTemplate https://github.com/tektoncd/cli/pull/1208, https://github.com/tektoncd/cli/pull/1211,
  https://github.com/tektoncd/cli/pull/1210, https://github.com/tektoncd/cli/pull/1209, https://github.com/tektoncd/cli/pull/1213
* Avoid Use of Previous TaskRunSpecStatus and PipelineRunSpecStatus with Start Commands https://github.com/tektoncd/cli/pull/1201
* tkn pr describe failing in pr with conditions https://github.com/tektoncd/cli/pull/1207
* Do Not Delete ClusterTask TaskRuns with --task Flag https://github.com/tektoncd/cli/pull/1227
* Fix APIversion not shown on describe commands https://github.com/tektoncd/cli/pull/1237

