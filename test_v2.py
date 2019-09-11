import json
import ibm_watson

assistant = ibm_watson.AssistantV1(
    version='2019-02-28',
    iam_apikey='{apikey}',
    url='{url}'
)

response = assistant.message(
    workspace_id='{workspace_id}',
    input={
        'text': 'Hello'
    }
).get_result()

print(json.dumps(response, indent=2))
