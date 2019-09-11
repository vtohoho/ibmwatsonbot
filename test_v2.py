import json
import ibm_watson

assistant = ibm_watson.AssistantV1(
    version='2019-02-28',
    iam_apikey='DBxOesEcwYTQK9-dvcaxTwBICWk0s3RwwEW6m-2eppDn',
    url='https://gateway.watsonplatform.net/assistant/api'
)

response = assistant.message(
    workspace_id='{workspace_id}',
    input={
        'text': 'Hello'
    }
).get_result()

print(json.dumps(response, indent=2))
