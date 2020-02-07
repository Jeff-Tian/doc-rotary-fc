Requesting a Cloud Shell.Succeeded.
Connecting terminal

Welcome to Alibaba Cloud Shell! 

Type "help" to learn about Cloud Shell
Type "aliyun" to use Alibaba Cloud CLI

You may be interested in these tutorials below.
---------------------------  |  ---------------------------
使用 Aliyun CLI 来管理云资源 |  cloudshell://tutorial/aliyun-cli

For more tutorials, visit https://api.aliyun.com/#/lab
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-ram-GetRole-m790bfgq --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"ram:GetRole\"],\"Resource\":[\"acs:ram:*:1546617239930485:role/*\"]}]}"
{
        "Policy": {
                "Description": "",
                "PolicyName": "fun-generated-ram-GetRole-m790bfgq",
                "CreateDate": "2020-02-05T07:14:15Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "1847FEC8-B3B4-45E0-9E2F-1FF33CA63842"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-ram-GetRole-m790bfgq --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "97FA7C3F-9DAF-40D2-9FB6-FDE0405CE5D4"
}
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-ram-CreateRole-v9xw8gtv --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"ram:CreateRole\"],\"Resource\":[\"acs:ram:*:1546617239930485:role/*\"]}]}"
{
        "Policy": {
                "Description": "",
                "PolicyName": "fun-generated-ram-CreateRole-v9xw8gtv",
                "CreateDate": "2020-02-05T07:16:10Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "1235CE2D-2590-465E-9A92-8AB80950DA52"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-ram-CreateRole-v9xw8gtv --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "D7F4F3D8-5650-462D-A50A-85A6E56CCDC2"
}
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-ram-ListPoliciesForRole-aj8n4dul --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"ram:ListPoliciesForRole\"],\"Resource\":[\"acs:ram:*:1546617239930485:role/aliyunfcgeneratedrole-cn-shanghai-libre-svc\"]}]}"
{
        "Policy": {                "Description": "",
                "PolicyName": "fun-generated-ram-ListPoliciesForRole-aj8n4dul",
                "CreateDate": "2020-02-05T07:17:26Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "F573A31B-E6E4-4DB0-B1CB-F9DF6D12CC6C"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-ram-ListPoliciesForRole-aj8n4dul --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "9D166708-4F0E-47BD-8D65-05B53C8F1257"
}
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-ram-AttachPolicyToRole-3c88oh8w --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"ram:AttachPolicyToRole\"],\"Resource\":[\"acs:ram:*:1546617239930485:role/aliyunfcgeneratedrole-cn-shanghai-libre-svc\"]}]}"
{
        "Policy": {
                "Description": "",
                "PolicyName": "fun-generated-ram-AttachPolicyToRole-3c88oh8w",
                "CreateDate": "2020-02-05T07:18:46Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "98851129-75DC-4112-A8AD-CEBF47E78BFA"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-ram-AttachPolicyToRole-3c88oh8w --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "990CFB0A-1BBB-45FF-8656-54BE6BE0FFE2"
}
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-ram-AttachPolicyToRole-m0p0zqpg --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"ram:AttachPolicyToRole\"],\"Resource\":[\"acs:ram:*:system:policy/AliyunOSSFullAccess\"]}]}"
{
        "Policy": {
                "Description": "",
                "PolicyName": "fun-generated-ram-AttachPolicyToRole-m0p0zqpg",
                "CreateDate": "2020-02-05T07:20:09Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "7BD9C0D5-6403-48AC-8A5E-BE5D53C1195A"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-ram-AttachPolicyToRole-m0p0zqpg --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "EEEA346D-97A1-47AD-8303-5DE1FAAF7F1F"
}
shell@Alicloud:~$ aliyun ram CreatePolicy --PolicyName fun-generated-fc-GetService-cn-shanghai-services-libre-svc --PolicyDocument "{\"Version\":\"1\",\"Statement\":[{\"Effect\":\"Allow\",\"Action\":[\"fc:GetService\"],\"Resource\":[\"acs:fc:cn-shanghai:232398780886417326:services/libre-svc\"]}]}"
{
        "Policy": {
                "Description": "",
                "PolicyName": "fun-generated-fc-GetService-cn-shanghai-services-libre-svc",
                "CreateDate": "2020-02-05T07:21:26Z",
                "DefaultVersion": "v1",
                "PolicyType": "Custom"
        },
        "RequestId": "4416B022-93D1-4995-9B56-E1FD8F7C07A4"
}
shell@Alicloud:~$ aliyun ram AttachPolicyToUser --PolicyName fun-generated-fc-GetService-cn-shanghai-services-libre-svc --PolicyType "Custom" --UserName "fc"
{
        "RequestId": "C4C03C8A-33DA-416E-86D9-6AB7AECE3C57"
}