import requests

res = requests.get(img_url, stream=True)
count = 1
while res.status_code != 200 and count <= 5:
    res = requests.get(img_url, stream=True)
    print(f'Retry: {count} {img_url}')
    count += 1