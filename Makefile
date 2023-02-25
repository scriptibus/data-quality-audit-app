up:
	docker-compose up -d
	sleep 10
	@make refresh

down:
	docker-compose down

refresh:
	docker exec -it dqa_shopware /bin/bash -c 'bin/console app:install -a ScriptibusDataQualityAudit --force && bin/console app:uninstall ScriptibusDataQualityAudit'
