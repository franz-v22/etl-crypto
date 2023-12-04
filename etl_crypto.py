import requests

headers = {
  'x-access-token': ''
}

response = requests.request("GET", "https://api.coinranking.com/v2/coins", headers=headers)

if response.status_code == 200:
    try:
        data = response.json()
        coins = (data['data']['coins'])

        i=0
        diccionario_crypto = {}
        for coin in coins:
            symbol = data['data']['coins'][i]['symbol']
            #name = data['data']['coins'][i]['name']
            price = data['data']['coins'][i]['price']
            diccionario_crypto[symbol] = price
            i=i+1
            
    except Exception as e:
        print(str(e))

    print(diccionario_crypto)