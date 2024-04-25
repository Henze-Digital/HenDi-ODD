# HWH-ODD
The ODD specs of Henze-Digital

## How to do a release

### release workflow on gitlab
- check issues and milestone
- close milestone
- create a release branch
- update file build.properties
- check out and compile schema and guidelines
- set tag `v\d\.\d\.\d` (if everything is as expected)
- merge into main
- merge main into develop
- create release based on the tag
- bump version number

### release workflow on github
- go to the mirrored repo on github.com
- create release based on the latest tag