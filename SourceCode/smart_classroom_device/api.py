import requests


def get_status_led():
    r = requests.get(url='http://192.168.1.2/uitwebapp/api/light/1')

    value = r.text
    
    return value[1:-1]

def change_status_led():
    requests.post(url='http://192.168.1.2/uitwebapp/api/devices/update-light/1')

def change_status_fan():
    requests.post(url='http://192.168.1.2/uitwebapp/api/devices/update-fan/2')


def get_status_fan():
    r = requests.get(url='http://192.168.1.2/uitwebapp/api/fan/2')

    value = r.text

    return value[1:-1]


def add_attendance():
    url = ''
    json = {}

    requests.post(url, json)