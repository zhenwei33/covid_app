import requests
import json
from bs4 import BeautifulSoup

url = "https://www.outbreak.my/states"
r = requests.get(url)

soup = BeautifulSoup(r.content, 'html.parser')
# print(soup.prettify())

script = soup.find_all('script')[9]

li = str(script).split('\n')
# print(script)
# print(li[939] + '\n' + li[940])

i = 915
test = ""
# test = "{" + '\n'
while i < 930:
    test += li[i]
    i += 1
# test += '\n' + "}" 
test = test.replace("'", "")
test = test.replace(" ", "")
arr = test.split(',')


print(arr)