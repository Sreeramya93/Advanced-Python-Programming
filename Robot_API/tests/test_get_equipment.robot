***settings***
Library     RequestsLibrary

***Keywords***
Create API Session
    Create Session      Equipment_API       ${BASE_URL}


***Variables***
${BASE_URL}     http://127.0.0.1:5015

***TEST CASES***
TC001_Get_All_Equipment
    Create Session      Equipment_API       ${BASE_URL}
    ${response}=        GET On Session     Equipment_API       /api/equipment
    should Be Equal As Integers     ${response.status_code}     200
    Log to Console      ${response.json()}
TC002_Test_GET_one
    Create API Session 
    ${response}=        GET On Session     Equipment_API       /api/equipment/101
    should Be Equal As Integers     ${response.status_code}     200
    Log to Console      ${response.json()}
TC003_Test_GET_one
    Create API Session      
    ${response}=        GET On Session     Equipment_API       /api/equipment/102
    should Be Equal As Integers     ${response.status_code}     200
    ${data} =       Set Variable     ${response.json()}
    Should Be Equal As Integers     ${data}[id]     102
    Should Be Equal As Strings     ${data}[name]    Navigation System
    Should Be Equal As Strings     ${data}[type]        NS
    Should Be Equal As Strings     ${data}[status]      Operational
    Log to Console      All Equipment Details: ${data}
