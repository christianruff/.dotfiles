linux: permissions clean
	./bin/linux.sh

clean: permissions
	./bin/cleanup.sh

permissions:
	chmod +x ./bin/linux.sh ./bin/cleanup.sh
