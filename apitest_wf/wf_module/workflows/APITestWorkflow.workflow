{
	"contents": {
		"0131b8a5-e4cf-482d-9500-2ac12d21e519": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.sap.apitest.wf.apitestworkflow1",
			"subject": "APITestWorkflow",
			"name": "APITestWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"61152e64-4dd3-4df5-a8fb-42b1e2345d7a": {
					"name": "ScriptTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"9cb9a179-3dd2-4331-8203-9507f27b1ce0": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"079d44a5-fa2d-429e-b18b-319dbff2c6dc": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"61152e64-4dd3-4df5-a8fb-42b1e2345d7a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Context.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "61152e64-4dd3-4df5-a8fb-42b1e2345d7a"
		},
		"9cb9a179-3dd2-4331-8203-9507f27b1ce0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "61152e64-4dd3-4df5-a8fb-42b1e2345d7a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"e2e6f87e-4df0-487d-a602-b05765af4ee8": {},
				"2fb076b8-1916-4b89-9c13-f75c3c120eae": {}
			}
		},
		"079d44a5-fa2d-429e-b18b-319dbff2c6dc": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/APITestWorkflow/Context.json",
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
			"y": 204,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e2e6f87e-4df0-487d-a602-b05765af4ee8",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"e2e6f87e-4df0-487d-a602-b05765af4ee8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "61152e64-4dd3-4df5-a8fb-42b1e2345d7a"
		},
		"2fb076b8-1916-4b89-9c13-f75c3c120eae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "e2e6f87e-4df0-487d-a602-b05765af4ee8",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "9cb9a179-3dd2-4331-8203-9507f27b1ce0"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1
		}
	}
}