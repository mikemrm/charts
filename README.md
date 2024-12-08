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
~~~
