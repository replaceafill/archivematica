INSERT INTO StandardTasksConfigs (pk, requiresOutputLock, execute, arguments) VALUES ('cbe200ab-a634-4902-a0e6-8ed1858538d4', 0, 'dipGenerationHelper', '--sipUUID "%SIPUUID%" --sipPath "%SIPDirectory%"');
INSERT INTO TasksConfigs (pk, taskType, taskTypePKReference, description) VALUES ('5e0ac12e-6ce7-4d11-bd75-e14167210df4', '36b2e239-4a57-4aa5-8ebc-7a29139baca6', 'cbe200ab-a634-4902-a0e6-8ed1858538d4', 'Pre-processing for DIP generation');
INSERT INTO MicroServiceChainLinks(pk, microserviceGroup, defaultExitMessage, currentTask, defaultNextChainLink) VALUES ('5749c11f-ed08-4965-8d8e-1473b1016073', 'Prepare DIP', 'Failed', '5e0ac12e-6ce7-4d11-bd75-e14167210df4', '7d728c39-395f-4892-8193-92f086c0546f');
INSERT INTO MicroServiceChainLinksExitCodes (pk, microServiceChainLink, exitCode, nextMicroServiceChainLink, exitMessage) VALUES ('4447a11c-5c3b-4092-91fa-de613317cc82', '5749c11f-ed08-4965-8d8e-1473b1016073', 0, '61a8de9c-7b25-4f0f-b218-ad4dde261eed', 'Completed successfully');
UPDATE MicroServiceChainLinksExitCodes SET nextMicroServiceChainLink='5749c11f-ed08-4965-8d8e-1473b1016073' WHERE microServiceChainLink='6ee25a55-7c08-4c9a-a114-c200a37146c4';