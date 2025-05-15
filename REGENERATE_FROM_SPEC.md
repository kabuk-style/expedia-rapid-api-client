This document describes how to regenerate the gem with the latest `rapid-3-specs.yaml` using OpenAPI Generator v7.10

### Prerequisites
Note: The installation steps are for Ubuntu. For other OS, please refer to the respective installation instructions.

1. Install [OpenAPI Generator v7.10](https://openapi-generator.tech/docs/installation)
   ```bash
   ➜  ~ mkdir -p ~/bin/openapitools
   ➜  ~ curl https://raw.githubusercontent.com/OpenAPITools/openapi-generator/master/bin/utils/openapi-generator-cli.sh > ~/bin/openapitools/openapi-generator-cli
   ➜  ~ chmod u+x ~/bin/openapitools/openapi-generator-cli
   ➜  ~ export PATH=$PATH:~/bin/openapitools/
   ```
2. Install [yq](https://github.com/mikefarah/yq/#install)
   ```bash
   ➜  ~ sudo add-apt-repository ppa:rmescandon/yq
   ➜  ~ sudo apt install yq
    ```
3. Install [OpenAPI Flattener](https://github.com/equinor/openapi-flattener)
   ```bash
   ➜  ~ npm install openapi-flattener --save -g
   ```
   
### Steps to regenerate gem from latest schema

1. Download latest Open API specification from https://developers.expediagroup.com/docs/products/rapid/lodging/shopping   
   ![Selection_869](https://github.com/user-attachments/assets/fa4fd18a-410f-461b-9ad1-e5e252c6158d)

2. Replace it with the one in the root directory. Review the changes.
3. Flatten it using https://github.com/equinor/openapi-flattener as Open API Generator does not support some keyword like `allOf` found in `openapi.yaml`.

    ```bash
    ➜  ~ openapi-flattener -s rapid-3-specs.yaml -o openapi.yaml
    ```

4. Convert YAML to JSON as there is an error `Exception safe-checking yaml content  (maxDepth 2000, maxYamlAliasesForCollections 2147483647)` when using YAML

    ```bash
    ➜  ~ yq eval -o=json openapi.yaml > openapi.json
    ```

5. Run

    ```bash
    ➜  ~ chmod u+x scripts/generate_expedia_rapid_api_client.sh
    ➜  ~ scripts/generate_expedia_rapid_api_client.sh
    ```
