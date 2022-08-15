name=app
package=package
type=next

up:
	docker-compose up app

setup:
	echo "name=${name}" > .env
	docker-compose run --rm setup npx create-${type}-app ${name} --template typescript

install:
	docker-compose run --rm app npm install ${package}

clean-install:
	docker-compose run --rm app npm ci

run:
	docker-compose run -p "3000:3000" -v "./app:/usr/src/app" --rm app sh -c "cd ${name} && npm run start"

attach:
	docker-compose run -p "3000:3000" -v "./app:/usr/src/app" --rm app bash
