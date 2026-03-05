import requests

def trace_self():
    try:
        # Bina IP ke request karne par ye current user ka data deta hai
        response = requests.get("http://ip-api.com/json/")
        data = response.json()
        print(f"\033[1;32m[+] Your Public IP: {data['query']}")
        print(f"[+] City: {data['city']}")
        print(f"[+] Region: {data['regionName']}")
        print(f"[+] Country: {data['country']}")
        print(f"[+] ISP: {data['isp']}\033[0m")
    except Exception as e:
        print(f"\033[1;31mError: Connection failed! {e}\033[0m")

if __name__ == "__main__":
    trace_self()

