{
	"contents": {
		"72f53f11-cef3-46ba-aa5e-e56634fe7c76": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "Onboarding ${context.userId}",
			"businessKey": "${context.userId}",
			"customAttributes": [{
				"id": "jobTitle",
				"label": "Job Title",
				"type": "string",
				"value": "${context.empData.personalInfo.jobTitle}"
			}, {
				"id": "country",
				"label": "Country",
				"type": "string",
				"value": "${context.empData.personalInfo.country}"
			}, {
				"id": "division",
				"label": "Division",
				"type": "string",
				"value": "${context.empData.personalInfo.division}"
			}, {
				"id": "username",
				"label": "User Name",
				"type": "string",
				"value": "${context.empData.personalInfo.username}"
			}],
			"name": "onboard",
			"documentation": "",
			"lastIds": "600eee18-fc10-4576-982b-74d08fbcb62e",
			"events": {
				"5f136fac-3aee-4c23-b9e4-5e4b837f3a16": {
					"name": "StartEvent1"
				},
				"b919de38-e160-4e57-8331-f1ee1aecd6f1": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"279de180-6739-4615-b4b4-254005ef4f2b": {
					"name": "Change or Confirm Equipment"
				},
				"c3176c60-9c77-43ef-8273-dd6b919ff1db": {
					"name": "Approve Equipment"
				},
				"8d59f760-8a8b-45cd-9591-2d05d71d7d12": {
					"name": "Accept workplace for new hire"
				},
				"7ba66efa-4d2e-47ff-bb5e-86e58b871488": {
					"name": "Prepare Rules Payload"
				},
				"f9cf3524-7ac5-4f1e-8b34-509537875729": {
					"name": "Determine Equipment"
				},
				"fb3c8397-77da-427d-97ef-a19aad769c03": {
					"name": "Enrich Context"
				},
				"f7e6ef2b-84d9-4d9f-9606-f9a7ace8f023": {
					"name": "Approval Determination"
				},
				"e7d6fdf5-19c1-42f9-a526-3917c2ac80a9": {
					"name": "Determine if Approval needed"
				},
				"926258aa-2186-4aba-a443-7174c5861e96": {
					"name": "AutoApprove"
				}
			},
			"gateways": {
				"a994f5eb-0a71-4d2c-bc67-94bde11a4052": {
					"name": "IsApproved"
				}
			},
			"sequenceFlows": {
				"0dc3be2e-8747-4908-869b-316b9f750d03": {
					"name": "Approved"
				},
				"f1073489-0fa7-499d-a170-da7040951ceb": {
					"name": "SequenceFlow16"
				},
				"86fd05ec-18d8-425c-bbf3-70aadf993806": {
					"name": "SequenceFlow51"
				},
				"0a02caf5-b4ab-4386-b05b-291b60cbae8d": {
					"name": "SequenceFlow52"
				},
				"fdb9cc90-b782-41d6-abb2-db190074bd9b": {
					"name": "SequenceFlow53"
				},
				"d6464a58-4838-482e-8ddb-20f95e78e551": {
					"name": "SequenceFlow55"
				},
				"a8b03abe-f2b3-4b30-bac6-91b4791c3ce8": {
					"name": "SequenceFlow56"
				},
				"420adde4-6ce2-461e-9646-9806d1981895": {
					"name": "SequenceFlow64"
				},
				"895bddad-a5ff-4974-9058-e9469502fe60": {
					"name": "SequenceFlow70"
				},
				"d4570f25-175a-41ce-80fa-a765bf67da3a": {
					"name": "Need Approve"
				},
				"af773eb1-12b4-48ce-8339-690d3d3d76ed": {
					"name": "Rejected"
				},
				"37e498a4-a1ea-4043-9d3e-7655916abbb3": {
					"name": "SequenceFlow74"
				},
				"ec4a8b2f-36fe-4e9d-b6be-7bf0b038f4ef": {
					"name": "AutoApproved"
				}
			},
			"diagrams": {
				"4ab8548a-fd15-4d6b-af74-84067a3c82b0": {}
			}
		},
		"5f136fac-3aee-4c23-b9e4-5e4b837f3a16": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"8cbbcb83-667c-411f-9e37-be6006d3e622": {}
			}
		},
		"b919de38-e160-4e57-8331-f1ee1aecd6f1": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"279de180-6739-4615-b4b4-254005ef4f2b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Confirm or Change Equipment for ${context.CInfo.d.results[0].fName} ${context.CInfo.d.results[0].lName}",
			"description": "The buddy assigns appropriate equipment to the new hire",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": " ${info.startedBy}",
			"formReference": "/forms/ConfirmOrChangeEquipment.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "ConfirmOrChangeEquipment"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Change or Confirm Equipment",
			"documentation": "The buddy identifies the list of equipments which the new hire would need, considering the available inventory and profile of the new hire. "
		},
		"c3176c60-9c77-43ef-8273-dd6b919ff1db": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Equipment for ${context.CInfo.d.results[0].fName} ${context.CInfo.d.results[0].lName}",
			"description": "The manager approves the equipment list proposed by the buddy",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/ApproveEquipment.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "ApproveEquipment"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Approve Equipment",
			"documentation": "The manager approves the equipment list proposed by the buddy"
		},
		"8d59f760-8a8b-45cd-9591-2d05d71d7d12": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Accept Workplace for ${context.CInfo.d.results[0].fName} ${context.CInfo.d.results[0].lName}",
			"description": "The buddy should confirm that the workplace & equipments are ready before the new hire joins the organization.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/AcceptWorkplace.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "AcceptWorkplace"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Accept workplace for new hire",
			"documentation": "Confirm that all equipment for the new hire is ready and accept the workplace setup"
		},
		"7ba66efa-4d2e-47ff-bb5e-86e58b871488": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/PrepareRulesPayload.js",
			"id": "scripttask3",
			"name": "Prepare Rules Payload",
			"documentation": "Identify the required equipment like laptop, mobile to onboarding employee"
		},
		"f9cf3524-7ac5-4f1e-8b34-509537875729": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.equipment.EquipmentsInfo}",
			"id": "servicetask7",
			"name": "Determine Equipment",
			"documentation": "Call business rules service to provide a list of equipment based on the new hire role, designation and country."
		},
		"fb3c8397-77da-427d-97ef-a19aad769c03": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/EnrichContext.js",
			"id": "scripttask6",
			"name": "Enrich Context"
		},
		"f7e6ef2b-84d9-4d9f-9606-f9a7ace8f023": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/onboard/EquipApproval.js",
			"id": "scripttask8",
			"name": "Approval Determination"
		},
		"e7d6fdf5-19c1-42f9-a526-3917c2ac80a9": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayloadtotal}",
			"responseVariable": "${context.response.equipApprove}",
			"id": "servicetask12",
			"name": "Determine if Approval needed"
		},
		"926258aa-2186-4aba-a443-7174c5861e96": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway7",
			"name": "AutoApprove",
			"default": "ec4a8b2f-36fe-4e9d-b6be-7bf0b038f4ef"
		},
		"a994f5eb-0a71-4d2c-bc67-94bde11a4052": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsApproved",
			"default": "0dc3be2e-8747-4908-869b-316b9f750d03"
		},
		"0dc3be2e-8747-4908-869b-316b9f750d03": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "Approved",
			"sourceRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052",
			"targetRef": "8d59f760-8a8b-45cd-9591-2d05d71d7d12"
		},
		"f1073489-0fa7-499d-a170-da7040951ceb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "8d59f760-8a8b-45cd-9591-2d05d71d7d12",
			"targetRef": "b919de38-e160-4e57-8331-f1ee1aecd6f1"
		},
		"86fd05ec-18d8-425c-bbf3-70aadf993806": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow51",
			"name": "SequenceFlow51",
			"sourceRef": "5f136fac-3aee-4c23-b9e4-5e4b837f3a16",
			"targetRef": "7ba66efa-4d2e-47ff-bb5e-86e58b871488"
		},
		"0a02caf5-b4ab-4386-b05b-291b60cbae8d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow52",
			"name": "SequenceFlow52",
			"sourceRef": "7ba66efa-4d2e-47ff-bb5e-86e58b871488",
			"targetRef": "f9cf3524-7ac5-4f1e-8b34-509537875729"
		},
		"fdb9cc90-b782-41d6-abb2-db190074bd9b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow53",
			"name": "SequenceFlow53",
			"sourceRef": "f9cf3524-7ac5-4f1e-8b34-509537875729",
			"targetRef": "fb3c8397-77da-427d-97ef-a19aad769c03"
		},
		"d6464a58-4838-482e-8ddb-20f95e78e551": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow55",
			"name": "SequenceFlow55",
			"sourceRef": "fb3c8397-77da-427d-97ef-a19aad769c03",
			"targetRef": "279de180-6739-4615-b4b4-254005ef4f2b"
		},
		"a8b03abe-f2b3-4b30-bac6-91b4791c3ce8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow56",
			"name": "SequenceFlow56",
			"sourceRef": "c3176c60-9c77-43ef-8273-dd6b919ff1db",
			"targetRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052"
		},
		"420adde4-6ce2-461e-9646-9806d1981895": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow64",
			"name": "SequenceFlow64",
			"sourceRef": "f7e6ef2b-84d9-4d9f-9606-f9a7ace8f023",
			"targetRef": "e7d6fdf5-19c1-42f9-a526-3917c2ac80a9"
		},
		"895bddad-a5ff-4974-9058-e9469502fe60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow70",
			"name": "SequenceFlow70",
			"sourceRef": "e7d6fdf5-19c1-42f9-a526-3917c2ac80a9",
			"targetRef": "926258aa-2186-4aba-a443-7174c5861e96"
		},
		"d4570f25-175a-41ce-80fa-a765bf67da3a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.response.equipApprove.Result[0].EquipmentApproval.ApprovalNeeded==true}",
			"id": "sequenceflow71",
			"name": "Need Approve",
			"sourceRef": "926258aa-2186-4aba-a443-7174c5861e96",
			"targetRef": "c3176c60-9c77-43ef-8273-dd6b919ff1db"
		},
		"af773eb1-12b4-48ce-8339-690d3d3d76ed": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision==\"reject\"}",
			"id": "sequenceflow72",
			"name": "Rejected",
			"sourceRef": "a994f5eb-0a71-4d2c-bc67-94bde11a4052",
			"targetRef": "279de180-6739-4615-b4b4-254005ef4f2b"
		},
		"37e498a4-a1ea-4043-9d3e-7655916abbb3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow74",
			"name": "SequenceFlow74",
			"sourceRef": "279de180-6739-4615-b4b4-254005ef4f2b",
			"targetRef": "f7e6ef2b-84d9-4d9f-9606-f9a7ace8f023"
		},
		"ec4a8b2f-36fe-4e9d-b6be-7bf0b038f4ef": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow75",
			"name": "AutoApproved",
			"sourceRef": "926258aa-2186-4aba-a443-7174c5861e96",
			"targetRef": "8d59f760-8a8b-45cd-9591-2d05d71d7d12"
		},
		"4ab8548a-fd15-4d6b-af74-84067a3c82b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"616eec04-9bb6-4d3a-a10e-ab0f4512d369": {},
				"d5e35e7d-25e6-45e5-a803-15c7a9810a7e": {},
				"a16a5088-600d-42bd-829a-fbbdd06604f4": {},
				"01f5c6b6-249f-4726-91ed-2307d2323aed": {},
				"fce5ea91-dbff-41f2-b7e2-0aeacc77aa63": {},
				"8607286e-c04a-463d-a218-b243fdb74914": {},
				"7bdcc596-ba0c-4f35-9195-417ce2d5cea8": {},
				"9ba9c8cf-6669-490e-9108-b59de89c724d": {},
				"c70603d3-3097-4658-b334-38a8358d4991": {},
				"dffd02fc-bbf7-472e-9321-8f4fc0b1db41": {},
				"edc55d59-feb6-4be5-a1e6-8fa85a454045": {},
				"e1fede1a-3146-4cfa-8ecf-766671e8470f": {},
				"c3257619-626c-4826-abcb-1f3b1e43ea7f": {},
				"d359f2df-4baa-407b-910e-4e9b0195a37c": {},
				"8fb9bbcc-6deb-40c1-b663-802a514c2589": {},
				"daa7020a-20da-449f-8d9d-f530234b05d3": {},
				"139aeb6b-9a41-45f4-a73c-132c3bd9dfc3": {},
				"7239072c-7fed-459c-a2ec-e509d490a47b": {},
				"d70678a9-656d-4726-99be-4b7bd28cfce4": {},
				"f91c9f66-1bd2-49b0-a713-eb1d3c46d47b": {},
				"5acf66bb-83c8-40c9-a1ac-4c623858798e": {},
				"908a78a3-d97f-446b-b351-4d9704e2b941": {},
				"813634d1-b5d6-4f09-a5de-cdc94e142cbc": {},
				"41711d6b-29ce-426b-a0f7-ff6a9f97943e": {},
				"f7492398-91e0-401f-87e6-dee38f258ca1": {}
			}
		},
		"8cbbcb83-667c-411f-9e37-be6006d3e622": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/onboard/SampleInputContext.json",
			"id": "default-start-context"
		},
		"616eec04-9bb6-4d3a-a10e-ab0f4512d369": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 173,
			"y": -238.50000059604645,
			"width": 32,
			"height": 32,
			"object": "5f136fac-3aee-4c23-b9e4-5e4b837f3a16"
		},
		"d5e35e7d-25e6-45e5-a803-15c7a9810a7e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 2087.9999916553497,
			"y": -232.50000059604645,
			"width": 32,
			"height": 32,
			"object": "b919de38-e160-4e57-8331-f1ee1aecd6f1"
		},
		"a16a5088-600d-42bd-829a-fbbdd06604f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 859.9999928474426,
			"y": -246.50000059604645,
			"width": 100,
			"height": 55,
			"object": "279de180-6739-4615-b4b4-254005ef4f2b"
		},
		"01f5c6b6-249f-4726-91ed-2307d2323aed": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1532.9999952316284,
			"y": -246.5000011920929,
			"width": 100,
			"height": 55,
			"object": "c3176c60-9c77-43ef-8273-dd6b919ff1db"
		},
		"fce5ea91-dbff-41f2-b7e2-0aeacc77aa63": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1685.9999940395355,
			"y": -239.0000011920929,
			"object": "a994f5eb-0a71-4d2c-bc67-94bde11a4052"
		},
		"8607286e-c04a-463d-a218-b243fdb74914": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1727.9999940395355,-219.00000089406967 1860.9999928474426,-219.00000089406967",
			"sourceSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"targetSymbol": "7bdcc596-ba0c-4f35-9195-417ce2d5cea8",
			"object": "0dc3be2e-8747-4908-869b-316b9f750d03"
		},
		"7bdcc596-ba0c-4f35-9195-417ce2d5cea8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1860.9999928474426,
			"y": -247.50000059604645,
			"width": 100,
			"height": 55,
			"object": "8d59f760-8a8b-45cd-9591-2d05d71d7d12"
		},
		"9ba9c8cf-6669-490e-9108-b59de89c724d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1960.9999928474426,-218.25000059604645 2087.9999916553497,-218.25000059604645",
			"sourceSymbol": "7bdcc596-ba0c-4f35-9195-417ce2d5cea8",
			"targetSymbol": "d5e35e7d-25e6-45e5-a803-15c7a9810a7e",
			"object": "f1073489-0fa7-499d-a170-da7040951ceb"
		},
		"c70603d3-3097-4658-b334-38a8358d4991": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 344.9999964237213,
			"y": -248,
			"width": 105,
			"height": 56,
			"object": "7ba66efa-4d2e-47ff-bb5e-86e58b871488"
		},
		"dffd02fc-bbf7-472e-9321-8f4fc0b1db41": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "189,-221.25000029802322 397.4999964237213,-221.25000029802322",
			"sourceSymbol": "616eec04-9bb6-4d3a-a10e-ab0f4512d369",
			"targetSymbol": "c70603d3-3097-4658-b334-38a8358d4991",
			"object": "86fd05ec-18d8-425c-bbf3-70aadf993806"
		},
		"edc55d59-feb6-4be5-a1e6-8fa85a454045": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 511.9999952316284,
			"y": -248.5,
			"width": 100,
			"height": 60,
			"object": "f9cf3524-7ac5-4f1e-8b34-509537875729"
		},
		"e1fede1a-3146-4cfa-8ecf-766671e8470f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "449.9999964237213,-219.25 511.9999952316284,-219.25",
			"sourceSymbol": "c70603d3-3097-4658-b334-38a8358d4991",
			"targetSymbol": "edc55d59-feb6-4be5-a1e6-8fa85a454045",
			"object": "0a02caf5-b4ab-4386-b05b-291b60cbae8d"
		},
		"c3257619-626c-4826-abcb-1f3b1e43ea7f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 678.9999940395355,
			"y": -248,
			"width": 100,
			"height": 60,
			"object": "fb3c8397-77da-427d-97ef-a19aad769c03"
		},
		"d359f2df-4baa-407b-910e-4e9b0195a37c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "611.9999952316284,-218.25 678.9999940395355,-218.25",
			"sourceSymbol": "edc55d59-feb6-4be5-a1e6-8fa85a454045",
			"targetSymbol": "c3257619-626c-4826-abcb-1f3b1e43ea7f",
			"object": "fdb9cc90-b782-41d6-abb2-db190074bd9b"
		},
		"8fb9bbcc-6deb-40c1-b663-802a514c2589": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "778.9999940395355,-218 819.75,-218 819.75,-228.1666717529297 859.9999928474426,-228.1666672627131",
			"sourceSymbol": "c3257619-626c-4826-abcb-1f3b1e43ea7f",
			"targetSymbol": "a16a5088-600d-42bd-829a-fbbdd06604f4",
			"object": "d6464a58-4838-482e-8ddb-20f95e78e551"
		},
		"daa7020a-20da-449f-8d9d-f530234b05d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1632.9999952316284,-218.5000011920929 1685.9999940395355,-218.5000011920929",
			"sourceSymbol": "01f5c6b6-249f-4726-91ed-2307d2323aed",
			"targetSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"object": "a8b03abe-f2b3-4b30-bac6-91b4791c3ce8"
		},
		"139aeb6b-9a41-45f4-a73c-132c3bd9dfc3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1011.9999988079071,
			"y": -247.50000059604645,
			"width": 100,
			"height": 60,
			"object": "f7e6ef2b-84d9-4d9f-9606-f9a7ace8f023"
		},
		"7239072c-7fed-459c-a2ec-e509d490a47b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1111.999998807907,-217.25000089406967 1181.9999976158142,-217.25000089406967",
			"sourceSymbol": "139aeb6b-9a41-45f4-a73c-132c3bd9dfc3",
			"targetSymbol": "d70678a9-656d-4726-99be-4b7bd28cfce4",
			"object": "420adde4-6ce2-461e-9646-9806d1981895"
		},
		"d70678a9-656d-4726-99be-4b7bd28cfce4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1181.9999976158142,
			"y": -247.0000011920929,
			"width": 100,
			"height": 60,
			"object": "e7d6fdf5-19c1-42f9-a526-3917c2ac80a9"
		},
		"f91c9f66-1bd2-49b0-a713-eb1d3c46d47b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1281.9999976158142,-217.5000011920929 1366.4999964237213,-217.5000011920929",
			"sourceSymbol": "d70678a9-656d-4726-99be-4b7bd28cfce4",
			"targetSymbol": "5acf66bb-83c8-40c9-a1ac-4c623858798e",
			"object": "895bddad-a5ff-4974-9058-e9469502fe60"
		},
		"5acf66bb-83c8-40c9-a1ac-4c623858798e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1366.4999964237213,
			"y": -239.0000011920929,
			"object": "926258aa-2186-4aba-a443-7174c5861e96"
		},
		"908a78a3-d97f-446b-b351-4d9704e2b941": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1408.4999964237213,-218.5000011920929 1532.9999952316284,-218.5000011920929",
			"sourceSymbol": "5acf66bb-83c8-40c9-a1ac-4c623858798e",
			"targetSymbol": "01f5c6b6-249f-4726-91ed-2307d2323aed",
			"object": "d4570f25-175a-41ce-80fa-a765bf67da3a"
		},
		"813634d1-b5d6-4f09-a5de-cdc94e142cbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1727.9999940395355,-218.0000011920929 1778,-218 1778,-296.5 809.5,-296.5 809.5,-228.1666717529297 859.9999928474426,-228.1666672627131",
			"sourceSymbol": "fce5ea91-dbff-41f2-b7e2-0aeacc77aa63",
			"targetSymbol": "a16a5088-600d-42bd-829a-fbbdd06604f4",
			"object": "af773eb1-12b4-48ce-8339-690d3d3d76ed"
		},
		"41711d6b-29ce-426b-a0f7-ff6a9f97943e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "959.4999928474426,-218.25000059604645 1012.4999988079071,-218.25000059604645",
			"sourceSymbol": "a16a5088-600d-42bd-829a-fbbdd06604f4",
			"targetSymbol": "139aeb6b-9a41-45f4-a73c-132c3bd9dfc3",
			"object": "37e498a4-a1ea-4043-9d3e-7655916abbb3"
		},
		"f7492398-91e0-401f-87e6-dee38f258ca1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1385,-208 1385,-24 1911,-24 1910.9999928474426,-193.00000059604645",
			"sourceSymbol": "5acf66bb-83c8-40c9-a1ac-4c623858798e",
			"targetSymbol": "7bdcc596-ba0c-4f35-9195-417ce2d5cea8",
			"object": "ec4a8b2f-36fe-4e9d-b6be-7bf0b038f4ef"
		},
		"600eee18-fc10-4576-982b-74d08fbcb62e": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"hubapireference": 1,
			"sequenceflow": 75,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 2,
			"usertask": 5,
			"servicetask": 12,
			"scripttask": 8,
			"exclusivegateway": 7,
			"parallelgateway": 6
		}
	}
}