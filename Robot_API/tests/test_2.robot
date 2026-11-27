***settings***
Resource        ../Resources/equipment_keyword1.resource


Suite Setup     Create API Session 

***TEST CASES***
TC1_GETALL
    log To Console      Test1 Started
    ${response}=      Get All Equipment
    ${data}=        Set Variable        ${response.json()} 
    Should Be Equal As Integers         ${response.status_code}     200
    Length Should Be        ${data}     2     
TC2_GETBYID
    log To Console      Test1 Started
    ${response}=      Get Equipment by id       102         200
    ${data}=        Set Variable        ${response.json()} 
    Should Be Equal As Integers         ${response.status_code}     200     
    Should Be Equal As Integers         ${data}[id]         102 
 