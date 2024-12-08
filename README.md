# charts

A collection of helm charts.

Full chart URL: `oci://mrmhub.io/mikemrm/CHART_NAME`

Chart.yaml dependencies example:

```yaml
dependencies:
  - name: CHART_NAME
    repository: 'oci://mrmhub.io/mikemrm'
    version: v0.1.0
```

## Releasing

To release a new version of a chart.
First bump the version with `make CHART=CHART_NAME bump-patch`.
For major or minor updates use `bump-major` or `bump-minor` accordingly.

Next prepare the release branch with `make CHART=CHART_NAME prepare-branch`.
This will create a new branch named `releases/CHART/VERSION`.

You may also combine both of these steps with `make CHART=CHART_NAME bump-patch prepare-branch`.

Once prepared push the branch.
Once merged a new tag can be cut.
First make sure you have the most recent changes:

```shell
git checkout main
git pull origin main
git fetch origin
```

Then tag the release with `make CHART=CHART_NAME tag-release`.
Once tagged, push the new tag with `git push origin --tags $TAG`

Example output:

~~~shell
[~/dev/mikemrm/charts]$ make CHART=voyager bump-patch prepare-branch
Updating version: v0.2.2 -> v0.2.3
go: github.com/norwoodj/helm-docs@v1.14.2 requires go >= 1.22.0; switching to go1.22.10
INFO[2024-12-07T23:05:03-06:00] Found Chart directories [immich, lemmy, nginx-redirect, voyager]
INFO[2024-12-07T23:05:03-06:00] Generating README Documentation for chart lemmy
INFO[2024-12-07T23:05:03-06:00] Generating README Documentation for chart immich
INFO[2024-12-07T23:05:03-06:00] Generating README Documentation for chart nginx-redirect
INFO[2024-12-07T23:05:03-06:00] Generating README Documentation for chart voyager
Switched to a new branch 'releases/voyager/v0.2.3'
diff --git a/voyager/Chart.yaml b/voyager/Chart.yaml
index 8bbac7d..c9cc2ae 100644
--- a/voyager/Chart.yaml
+++ b/voyager/Chart.yaml
@@ -2,7 +2,7 @@ apiVersion: v2
 name: voyager
 description: voyager
 type: application
-version: v0.2.2
+version: v0.2.3
 # renovate: image=ghcr.io/aeharding/voyager
 appVersion: 2.20.0
 dependencies:
diff --git a/voyager/README.md b/voyager/README.md
index 77a8be0..f2d4672 100644
--- a/voyager/README.md
+++ b/voyager/README.md
@@ -1,6 +1,6 @@
 # voyager
 
-![Version: v0.2.2](https://img.shields.io/badge/Version-v0.2.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.20.0](https://img.shields.io/badge/AppVersion-2.20.0-informational?style=flat-square)
+![Version: v0.2.3](https://img.shields.io/badge/Version-v0.2.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.20.0](https://img.shields.io/badge/AppVersion-2.20.0-informational?style=flat-square)
 
 voyager
 
@@ -14,7 +14,7 @@ Chart Dependency:
 dependencies:
   - name: voyager
     repository: 'oci://mrmhub.io/mikemrm'
-    version: 'v0.2.2'
+    version: 'v0.2.3'
 ```
 
 ## Requirements
On branch releases/voyager/v0.2.3
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   voyager/Chart.yaml
        modified:   voyager/README.md

[releases/voyager/v0.2.3 bf3eb53] Update voyager release: v0.2.3
 2 files changed, 3 insertions(+), 3 deletions(-)

Branch prepared! Run: git push origin releases/voyager/v0.2.3

$ git push origin releases/voyager/v0.2.3
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 16 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 721 bytes | 721.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
remote:
remote: Create a pull request for 'releases/voyager/v0.2.3' on GitHub by visiting:
remote:      https://github.com/mikemrm/charts/pull/new/releases/voyager/v0.2.3
remote:
To github.com:mikemrm/charts.git
 * [new branch]      releases/voyager/v0.2.3 -> releases/voyager/v0.2.3

$ git checkout main
Switched to branch 'main'

$ git pull origin main
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (1/1), 905 bytes | 905.00 KiB/s, done.
From github.com:mikemrm/charts
 * branch            main       -> FETCH_HEAD
   1c87390..75d9a5a  main       -> origin/main
Updating 1c87390..75d9a5a
Fast-forward
 voyager/Chart.yaml | 2 +-
 voyager/README.md  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

$ git fetch origin

$ make CHART=voyager tag-release
Tag voyager/v0.1.3 is ready to be pushed.
Use git push origin --tags voyager/v0.1.3

$ git push origin --tags voyager/v0.1.3
Enumerating objects: 1, done.
Counting objects: 100% (1/1), done.
Writing objects: 100% (1/1), 161 bytes | 161.00 KiB/s, done.
Total 1 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:mikemrm/charts.git
 * [new tag]         voyager/v0.1.3 -> voyager/v0.1.3
~~~
