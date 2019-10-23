# salesforcedx-actions

(Unofficial) GitHub Actions for SalesforceDX using the Salesforce CLI.

It passes the contents of the `arg` parameter to the underlying Salesforce CLI
in the Docker container.

## Examples

### Authenticating with `force:auth:sfdxurl:store`

```
steps:
  - name: 'Populate auth file with SFDX_URL secret'
    shell: bash
    run: 'echo ${{ secrets.DEV_HUB_SFDXURL}} > ./SFDX_URL_STORE.txt'
  - name: 'Authenticate against dev hub'
    uses: forcedotcom/salesforcedx-actions@master
    with:
      args: 'force:auth:sfdxurl:store --sfdxurlfile=./SFDX_URL_STORE.txt --setalias=devhub --setdefaultdevhubusername'
```

### Create a scratch org with `force:org:create`

```
steps:
  - name: 'Create scratch org'
    uses: forcedotcom/salesforcedx-actions@master
    with:
      args: 'force:org:create --definitionfile=config/project-scratch-def.json --setalias=scratch-org --setdefaultusername'
```

### Push source with `force:source:push`

```
steps:
  # Authenticate first
  - uses: actions/checkout@v1
  - name: 'Push source'
    uses: forcedotcom/salesforcedx-actions@master
    with:
      args: 'force:source:push'
```

### Clean up scratch org with `force:org:delete`

```
steps:
  - name: 'Clean up scratch org'
    uses: forcedotcom/salesforcedx-actions@master
    with:
      args: 'force:org:delete --targetusername=scratch-org --noprompt'
```

## License

The Dockerfile and associated scripts and documentation in this project are
released under the BSD-3 License.

Container images built with this project include third party materials. See
THIRD_PARTY_NOTICE.md for details.
