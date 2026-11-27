
***settings***
Library     RequestsLibrary

***Variables***
${BASE_URL}     http://127.0.0.1:5015

***Keywords***
Create API Session
    Create Session      Equipment_API       ${BASE_URL}
Get All Equipment
    ${response}=        GET On Session      Equipment_API   api/equipment       expected_status=200
    RETURN      ${response}    


