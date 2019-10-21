FROM salesforce/salesforcedx

LABEL name="(Unofficial) Salesforce DX GitHub Actions"
LABEL version="1.0.0"
LABEL repository="http://github.com/forcedotcom/salesforcedx-actions"
LABEL homepage="http://github.com/forcedotcom/salesforcedx-actions"

LABEL maintainer="Nick Chen <nchen@salesforce.com>"
LABEL com.github.actions.name="(Unofficial) Salesforce DX GitHub Actions"
LABEL com.github.actions.description="Wraps the SFDX CLI to enable common SFDX commands."
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="blue"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]