{
	"contents": {
		"bf77860d-2c15-4a7a-a310-23ad09e71673": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflow.investment",
			"subject": "Investment",
			"name": "Investment",
			"documentation": "Investment Workflow Module",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start the Event"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End the Event"
				}
			},
			"activities": {
				"416489f1-37c3-4619-9058-8c7baffd50c7": {
					"name": "Decision Making using Business Rules"
				},
				"c81f46f6-da59-4731-b4a7-23868e04ea8f": {
					"name": "Payload Generation"
				},
				"2c6c7ab9-dd3a-4778-911d-e724c2d762d9": {
					"name": "Investment Inbox Item"
				},
				"ab4bc219-7fe5-49e1-9ac9-02e107182fb7": {
					"name": "IsApproved"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"9732d552-6b1c-4d1a-a3fd-6ff9126b6ca4": {
					"name": "SequenceFlow3"
				},
				"69f4e62c-5cc4-4534-abee-2cfc48cfa75d": {
					"name": "SequenceFlow5"
				},
				"3dc5419b-1d2f-49ef-bb07-3c001bd6fd73": {
					"name": "SequenceFlow7"
				},
				"1734749a-fbff-4267-bd08-805e37421f52": {
					"name": "SequenceFlow8"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start the Event",
			"sampleContextRefs": {
				"cb21dd21-3605-4c9a-b3b7-21870b3e568c": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End the Event"
		},
		"416489f1-37c3-4619-9058-8c7baffd50c7": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"destinationSource": "consumer",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.Payload}",
			"responseVariable": "${context.Response}",
			"id": "servicetask2",
			"name": "Decision Making using Business Rules"
		},
		"c81f46f6-da59-4731-b4a7-23868e04ea8f": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Context.js",
			"id": "scripttask3",
			"name": "Payload Generation"
		},
		"2c6c7ab9-dd3a-4778-911d-e724c2d762d9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Confirm Investment Details ${context.FormContent.FirstName} ${context.FormContent.LastName}",
			"description": "Investment Details for Products ${context.FormContent.LastName}",
			"priority": "LOW",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/Investment/InvesmentApprover.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "invesmentapprover"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Investment Inbox Item"
		},
		"ab4bc219-7fe5-49e1-9ac9-02e107182fb7": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsApproved"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c81f46f6-da59-4731-b4a7-23868e04ea8f"
		},
		"9732d552-6b1c-4d1a-a3fd-6ff9126b6ca4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "416489f1-37c3-4619-9058-8c7baffd50c7",
			"targetRef": "2c6c7ab9-dd3a-4778-911d-e724c2d762d9"
		},
		"69f4e62c-5cc4-4534-abee-2cfc48cfa75d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "c81f46f6-da59-4731-b4a7-23868e04ea8f",
			"targetRef": "416489f1-37c3-4619-9058-8c7baffd50c7"
		},
		"3dc5419b-1d2f-49ef-bb07-3c001bd6fd73": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "2c6c7ab9-dd3a-4778-911d-e724c2d762d9",
			"targetRef": "ab4bc219-7fe5-49e1-9ac9-02e107182fb7"
		},
		"1734749a-fbff-4267-bd08-805e37421f52": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "ab4bc219-7fe5-49e1-9ac9-02e107182fb7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"39655c10-d3be-4b86-97e5-5b21e3493d4e": {},
				"abb7b577-8a9a-47b7-8416-289d05a57724": {},
				"2ea214f9-2791-4f37-8e86-34ada301ea7a": {},
				"848c3dad-09f2-4102-8bb8-01c9e9477aeb": {},
				"a7882018-1a0e-4d2d-90b3-597a51e855d1": {},
				"a8e6a2b9-bc94-4d11-a0a6-bbdec669213e": {},
				"49085783-8535-4b6c-b51c-9723f296a368": {},
				"5995aa43-8f7d-442a-87c3-e72038dadc2d": {}
			}
		},
		"cb21dd21-3605-4c9a-b3b7-21870b3e568c": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/Context.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 516,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "2ea214f9-2791-4f37-8e86-34ada301ea7a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"39655c10-d3be-4b86-97e5-5b21e3493d4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "416489f1-37c3-4619-9058-8c7baffd50c7"
		},
		"abb7b577-8a9a-47b7-8416-289d05a57724": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,264 62,314",
			"sourceSymbol": "39655c10-d3be-4b86-97e5-5b21e3493d4e",
			"targetSymbol": "a7882018-1a0e-4d2d-90b3-597a51e855d1",
			"object": "9732d552-6b1c-4d1a-a3fd-6ff9126b6ca4"
		},
		"2ea214f9-2791-4f37-8e86-34ada301ea7a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "c81f46f6-da59-4731-b4a7-23868e04ea8f"
		},
		"848c3dad-09f2-4102-8bb8-01c9e9477aeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "2ea214f9-2791-4f37-8e86-34ada301ea7a",
			"targetSymbol": "39655c10-d3be-4b86-97e5-5b21e3493d4e",
			"object": "69f4e62c-5cc4-4534-abee-2cfc48cfa75d"
		},
		"a7882018-1a0e-4d2d-90b3-597a51e855d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 314,
			"width": 100,
			"height": 60,
			"object": "2c6c7ab9-dd3a-4778-911d-e724c2d762d9"
		},
		"a8e6a2b9-bc94-4d11-a0a6-bbdec669213e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,374 62,424",
			"sourceSymbol": "a7882018-1a0e-4d2d-90b3-597a51e855d1",
			"targetSymbol": "49085783-8535-4b6c-b51c-9723f296a368",
			"object": "3dc5419b-1d2f-49ef-bb07-3c001bd6fd73"
		},
		"49085783-8535-4b6c-b51c-9723f296a368": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 41,
			"y": 424,
			"object": "ab4bc219-7fe5-49e1-9ac9-02e107182fb7"
		},
		"5995aa43-8f7d-442a-87c3-e72038dadc2d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,466 62,516",
			"sourceSymbol": "49085783-8535-4b6c-b51c-9723f296a368",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1734749a-fbff-4267-bd08-805e37421f52"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 2,
			"sequenceflow": 8,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 3,
			"exclusivegateway": 1
		}
	}
}