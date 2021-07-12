echo ' requesting all heroes'
curl localhost:3000/heroes

echo ' requesting flash'
curl localhost:3000/heroes/1

echo ' requesting with wrong body'
curl --silent -X POST \
    --data-binary '{"invalid": "data"}' \
    localhost:3000/heroes

echo 'Creating User'
CREATE=$(curl --silent -X POST \
--data-binary '{"name": "Jonas" , "age" : 10 , "power" : "Lolzeiro"}' \
slocalhost:3000/heroes)

echo $CREATE

ID=$(echo $CREATE | jq.id)
echo $ID

echo 'requesting Jonas'
curl localhost:3000/heroes/$ID

 

