#!/bin/python3
import subprocess


def get_available_wifi_list():
    result = subprocess.run("nmcli device wifi list", shell=True, capture_output=True, text=True)
    wifi_list = result.stdout.strip().split('\n')[1:]
    for i, wifi in enumerate(wifi_list, start=1):
        print(f"{i}. {wifi}")
    return wifi_list


def connect_to_wifi_by_number(wifi_list, wifi_number, password):
    selected_wifi = wifi_list[wifi_number - 1].strip().split()[1]
    command = f"nmcli device wifi connect '{selected_wifi}' password '{password}'"
    subprocess.run(command, shell=True, check=True)
    print(f"Successfully connected to WiFi: {selected_wifi}")


wifi_list = get_available_wifi_list()

if wifi_list:
    try:
        wifi_number = int(input("wifi number:"))
        password = input("password:")

        connect_to_wifi_by_number(wifi_list, wifi_number, password)
    except ValueError:
        print("invalid WiFi number")
