echo -----BEGIN PUBLIC KEY-----> Aula404_public_key.pem
echo MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAp7tgrBX8QUJNdDYJ/y6n>> Aula404_public_key.pem
echo AAyuR4QF4ZSxGy3blzoU0wGQiuuMDXXjbG8sgFPgOntByWM+WPnrU2qc5eqvZzRU>> Aula404_public_key.pem
echo kOgM7VA0Fkqy5WUxvu4ZiHWK2QXFfOQ11AMoN7/LyXqHkvg4EMOElF+3M5TvSstE>> Aula404_public_key.pem
echo eccykpAy70Hq2CnzZ2E3i1pdWV24YdOQSJfAL28GsnPrOArkEM4HV4vHGp5PSRUF>> Aula404_public_key.pem
echo rmS+A9mFZ1voUbc5V/wYclEpJ4GubVfvEtGqjIdmbsNXGfj9ijhNemHKz+MyQBW4>> Aula404_public_key.pem
echo bahKy0ErQs5/ouoRfVoZc/xAz5cflf7XiGA1K4EZNBM6isJ1k1vU/JzJU/zPewdd>> Aula404_public_key.pem
echo uMzaURF8JUUqgS3jlSDzO9g2qah2CMZTvDQAUqEKNeihwf/Wkf9VxkfC67K88lNp>> Aula404_public_key.pem
echo r7MVCi8FymURTHRHOp5n8X33D4N91PxXy1usogpjjOuyB1U7HaEZvFxz8P1jqbjy>> Aula404_public_key.pem
echo 4Zd3Qc0OL8LGrZHO2Tk6/eiEpel5x7J62pVMRJ8C2g1YFb6t4Iz/uIzvCHx5NhqN>> Aula404_public_key.pem
echo BQDGvPD4wrfNFHa/D7LM8UOag8Gfpf6NY8tr3AHj8enNtCdnu/07CJOb38RXeCL3>> Aula404_public_key.pem
echo Nh0Fc6/vx5cnI1cXgT4UdU2FIJc/10l5shNonJx2103vxEO+CPYU9nTTCHhuL7qh>> Aula404_public_key.pem
echo Bc36tYozr0ja4Zq9q7ORH10CAwEAAQ==>> Aula404_public_key.pem
echo -----END PUBLIC KEY----->> Aula404_public_key.pem
set PATH=%PATH%;"C:\Program Files\Veyon"
veyon-cli authkeys import Aula404/public "Aula404_public_key.pem"
del Aula404_public_key.pem
