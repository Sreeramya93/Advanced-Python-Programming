import pytest

from app import app
 
@pytest.fixture

def client():

    app.config['TESTING'] = True

    with app.test_client() as client:

        yield client
@pytest.mark.paramtrize("equipment_id",[101,102]) 
def test_get_euipment(client,equipment_id):

    response = client.get(f'/api/euipment/{equipment_id}')

    assert response.status_code == 200

    data = response.get_json()

    assert isinstance(data, list)

    assert len(data) == 2

    assert data[0]['id'] == 101

    assert data[0]['name'] == "Flight control unit"

    assert data[0]['type'] == "FCU"

    assert data[0]['status'] == "Operational"

def test_get_euipment(client):

    response = client.get('/api/euipment/102')

    assert response.status_code == 200

    data = response.get_json()

    assert isinstance(data, list)

    assert len(data) == 2

    assert data[1]['id'] == 102

    assert data[1]['name'] == "Navigation System"

    assert data[1]['type'] == "NS"

    assert data[1]['status'] == "Operational"
 
