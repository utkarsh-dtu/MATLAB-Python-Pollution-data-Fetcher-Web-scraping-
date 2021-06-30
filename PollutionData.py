
import requests
from bs4 import BeautifulSoup


def getData(url):
    r = requests.get(url)
    return r.text

def ReturnData():
     
    myHtmlData = getData("https://www.aqi.in/dashboard/india/delhi/new-delhi#realdash")
    





    soup = BeautifulSoup(myHtmlData, 'html.parser')
    

    
    myDatastr = ''

    for tr in soup.find_all('table')[0].find_all('tr'):
        
        myDatastr += tr.get_text()
        # print(myDatastr)

    

    Data = myDatastr.split('\n\n')
    
    a = []
    for D in Data:
        
        n = D.split('\n')
        a.append(n)
       


   
    a.pop(0)
    
    FinalData = a
    print(FinalData)
    
    return FinalData










    



