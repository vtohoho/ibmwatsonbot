from __future__ import print_function
import json
from ibm_watson import AssistantV2

# If service instance provides API key authentication
assistant = AssistantV2(
    version='2018-09-20',
    ## url is optional, and defaults to the URL below. Use the correct URL for your region.
    url='https://gateway.watsonplatform.net/assistant/api',
    iam_apikey='DBxOesEcwYTQK9-dvcaxTwBICWk0s3RwwEW6m-2eppDn')

# assistant = AssistantV2(
#     username='YOUR SERVICE USERNAME',
#     password='YOUR SERVICE PASSWORD',
#     ## url is optional, and defaults to the URL below. Use the correct URL for your region.
#     url='https://gateway.watsonplatform.net/assistant/api',
#     version='2018-09-20')

#########################
# Sessions
#########################

session = assistant.create_session("26df19fb-463a-4cec-b889-48411f29bd45").get_result()
print(json.dumps(session, indent=2))

assistant.delete_session("26df19fb-463a-4cec-b889-48411f29bd45", "https://gateway-tok.watsonplatform.net/assistant/api/v2/assistants/26df19fb-463a-4cec-b889-48411f29bd45/sessions").get_result()

#########################
# Message
#########################

message = assistant.message(
    "<YOUR ASSISTANT ID>",
    "<YOUR SESSION ID>",
    input={'text': 'What\'s the weather like?'},
    context={
        'metadata': {
            'deployment': 'myDeployment'
        }
    }).get_result()
print(json.dumps(message, indent=2))
