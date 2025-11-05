# Her skal jeg importere data fra api til å populate film_details automatisk
# Måten jeg ønsker å gjøre det på er å gå gjennom watched og for hver nye film der
# så søkes apien opp og henter info til den respektive filmen og putter det inn i film_details.
# Slik får jeg kun detaljer på filmer jeg har sett. 

# Planen er å bruke tmdb sin API. Den har jeg allerede konto og API-key for alt. Jeg må bare finne
# det fram. Mye av dokumentasjonen om hvordan man bruker API finnes også på tmdb. Så jeg kan lese meg 
# opp på det, og prøve meg meg fram.  

import requests
import os
from dotenv import load_dotenv

load_dotenv()

api_key = os.environ.get("API_KEY")

bearer = os.environ.get("ACCESS_TOKEN")

print(type(bearer))

url = "https://api.themoviedb.org/3/authentication"

headers = {
    "accept": "application/json",
    "Authorization": bearer
}

response = requests.get(url, headers=headers)

print(response.text)

