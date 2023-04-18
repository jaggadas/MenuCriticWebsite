import "dart:convert";
import "dart:core";
import "package:flutter/material.dart";
import "package:menucritic/models/Review.dart";

class TestAPIResponse {
  Map testReview = {
    "id": "a-8352851c-61ee-46e8-bdbb-60100e7be3df",
    "status": "Success",
    "data": [
      {
        "query": "ChIJHZXfuyi_wjsRcLcj8yo_ub4",
        "name": "The Arabian Grills",
        "place_id": "ChIJHZXfuyi_wjsRcLcj8yo_ub4",
        "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
        "full_address":
            "Shop no. 2 ,Disha Apartment ,plot no. 17 , Sr no. 148/150/151 Near SBI Sangvi Nagar Branch, near Parihaar Chowk, Aundh, Pune, Maharashtra 411007, India",
        "borough": "Sanghvi Nagar, Ward No. 8, Aundh Gaon, Aundh",
        "street":
            "Shop no. 2 ,Disha Apartment ,plot no. 17 , Sr no. 148/150/151 Near SBI Sangvi Nagar Branch, near Parihaar Chowk",
        "postal_code": "411007",
        "area_service": false,
        "country_code": "IN",
        "country": "India",
        "city": "Pune",
        "us_state": null,
        "state": "Maharashtra",
        "plus_code": "7JCMHR66+8C",
        "latitude": 18.560818599999998,
        "longitude": 73.8110451,
        "time_zone": "Asia/Calcutta",
        "popular_times": [
          {
            "day": 7,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 27,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 29,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 27,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 35,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 91,
                "title": "Usually as busy as it gets",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 78,
                "title": "Usually a little busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 1,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 18,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 27,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 24,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 2,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 2,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 2,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {"hour": 17, "percentage": 0, "title": "", "time": "3pm"},
              {
                "hour": 18,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 24,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 18,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 3,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 2,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 32,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 43,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 29,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 4,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 2,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 29,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 54,
                "title": "Usually a little busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 56,
                "title": "Usually a little busy",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 29,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 5,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {
                "hour": 12,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 13,
                "percentage": 24,
                "title": "Usually not too busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 13,
                "title": "Usually not busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 27,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 37,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 45,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 40,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 29,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          },
          {
            "day": 6,
            "popular_times": [
              {"hour": 4, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 5, "percentage": 0, "title": "", "time": "3am"},
              {"hour": 6, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 7, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 8, "percentage": 0, "title": "", "time": "6am"},
              {"hour": 9, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 10, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 11, "percentage": 0, "title": "", "time": "9am"},
              {"hour": 12, "percentage": 0, "title": "", "time": "12pm"},
              {
                "hour": 13,
                "percentage": 5,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 14,
                "percentage": 8,
                "title": "Usually not busy",
                "time": "12pm"
              },
              {
                "hour": 15,
                "percentage": 10,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 16,
                "percentage": 16,
                "title": "Usually not busy",
                "time": "3pm"
              },
              {
                "hour": 17,
                "percentage": 21,
                "title": "Usually not too busy",
                "time": "3pm"
              },
              {
                "hour": 18,
                "percentage": 24,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 19,
                "percentage": 35,
                "title": "Usually not too busy",
                "time": "6pm"
              },
              {
                "hour": 20,
                "percentage": 67,
                "title": "Usually a little busy",
                "time": "6pm"
              },
              {
                "hour": 21,
                "percentage": 100,
                "title": "Usually as busy as it gets",
                "time": "9pm"
              },
              {
                "hour": 22,
                "percentage": 81,
                "title": "Usually as busy as it gets",
                "time": "9pm"
              },
              {
                "hour": 23,
                "percentage": 35,
                "title": "Usually not too busy",
                "time": "9pm"
              },
              {"hour": 0, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 1, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 2, "percentage": 0, "title": "", "time": "12am"},
              {"hour": 3, "percentage": 0, "title": "", "time": "3am"}
            ]
          }
        ],
        "site": null,
        "phone": null,
        "type": "Restaurant",
        "logo":
            "https://lh4.googleusercontent.com/-9rxTxf3qqyo/AAAAAAAAAAI/AAAAAAAAAAA/jNxxwAXPtTQ/s44-p-k-no-ns-nd/photo.jpg",
        "description":
            "We Makes Best Chinese ,Kebab and Shawarma in the Town. We are here to Provide Best Quality of Products at Affordable Price and Good Hygiene.",
        "located_in": null,
        "located_google_id": null,
        "category": "restaurants",
        "subtypes": "Restaurant, Hotel",
        "posts": null,
        "reviews_tags": [
          "shawarma",
          "chicken",
          "price",
          "biryani",
          "quantity",
          "plate"
        ],
        "rating": 3.7,
        "reviews": 56,
        "reviews_data": [
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUQtODVueHl3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/111849017218571964134?hl=en-US",
            "author_title": "Kunal Lokare",
            "author_id": "111849017218571964134",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5Syn98wUi6F-d2AySIyC5xYfzexSz0CnlSNR-G9=s120-c-c0x00000000-cc-rp-mo-ba5-br100",
            "review_text":
                "Recently went to this place in Aundh. Place serves a variety of food items but primarily it is famous for the shawarma\u2019s. Loved the taste only thing they put in a lot of mayonnaise in it which overpowers the taste of chicken. Happened to order a biryani and to my surprise it wasn\u2019t tasting very good and was served cold. Told the person that it doesn\u2019t taste good and it\u2019s not warm as well. But the person didn\u2019t bother to change the food or re-heat it and get it to me. I simply left the place in regret. You may have the best food cooked but if the service is not good your business won\u2019t grow.",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipO_axUknqj8DSxoNUg8s-E6zRfeptqZlNAzo6kg",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipO_axUknqj8DSxoNUg8s-E6zRfeptqZlNAzo6kg",
              "https://lh5.googleusercontent.com/p/AF1QipOSsqIXf4sTy7cY8mhuiyslhw4bOC8Hk_4Y4fXI"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUQtODVueHl3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID-85nxywE%7CCgwI1-DLnAYQ4LuFhwM%7C?hl=en-US",
            "review_rating": 2,
            "review_timestamp": 1670574167,
            "review_datetime_utc": "12/09/2022 08:22:47",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURXZ3VEOHNBRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/110498538418221999771?hl=en-US",
            "author_title": "Nagendra vishwakarma",
            "author_id": "110498538418221999771",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SRCvPyRb133YMOVnKlcLscEKvUlH9aQt68FGm1c94=s120-c-c0x00000000-cc-rp-mo-ba5-br100",
            "review_text":
                "Tried Shawarma plate for the first time it was really really good .\nBiryani is not upto the mark rest is okay .\nGood Ambience for casual hang out.\nI had also tried the Hyderabad dum biryani which was really good compare to others biryani in Pune so for biryani it's good too .\nI didn't like the Chinese items so be careful before ordering that .",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipM3Njy4PG_D9qJi_t5vMBUJDD0MsKVrb1ioA4nL",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipM3Njy4PG_D9qJi_t5vMBUJDD0MsKVrb1ioA4nL",
              "https://lh5.googleusercontent.com/p/AF1QipO_2aX2GZnrOEGFsvfXEIUUaJ-i0K9PYJzycThM",
              "https://lh5.googleusercontent.com/p/AF1QipNdxSj-1orm-UPUc_yC2I-XDcP-qC4RjaHHJJte",
              "https://lh5.googleusercontent.com/p/AF1QipPdrjc4GidBivOmNmu3fiemBok7olzbAnNBZl26",
              "https://lh5.googleusercontent.com/p/AF1QipMW3YdpA0eFr-nYY7Nu2ItWwfCZvecx3rflbzQa",
              "https://lh5.googleusercontent.com/p/AF1QipMDugDGVJxDtLrEmPbUw1pPVqlHOmVph7YYv91l",
              "https://lh5.googleusercontent.com/p/AF1QipNdLzAF_6IQuBwp647XZMoBXHb3OyFx1YaANnSH"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURXZ3VEOHNBRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDWguD8sAE%7CCgwI2vmCkgYQ4K-1pQI%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1648409818,
            "review_datetime_utc": "03/27/2022 19:36:58",
            "review_likes": 1,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURCZzdhQTVnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/101361264038736310676?hl=en-US",
            "author_title": "Abhishek Choudhary",
            "author_id": "101361264038736310676",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RTOW9sq-Yy3GIlVngU8yqmSu67RpIepbCdjDfb=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "Budget friendly place, great variety for shawarma, grills ,salads, Chinese, and Indian food, some mocktails\n\nIt's a small eatery, quality is proportional to the price offered. Go for a quick bite!!",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipPEa_oURaDb1j2zG7OSDb0dB_64_j-dYU296I85",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipPEa_oURaDb1j2zG7OSDb0dB_64_j-dYU296I85",
              "https://lh5.googleusercontent.com/p/AF1QipM9EQa5j-8S9h71pdlAKaI5b4_ONxoDvBZC9l8q"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURCZzdhQTVnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDBg7aA5gE%7CCgwI2pzNngYQgIigqQE%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1674792538,
            "review_datetime_utc": "01/27/2023 04:08:58",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUQtNllfOG93RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/105481551404060037163?hl=en-US",
            "author_title": "swapnil zanwar",
            "author_id": "105481551404060037163",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RAqgunJoCZiO8BJwxldakNKcc8cMKVFEPZ429RQDw=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "Representation is okay but later the chicken wasn\u2019t fresh. Found some small pieces of bone in kabab.\n\nThey even charge extra for dip(if asked for more)",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipM-4vsIE3UarbQAO_iJKrNJgGYnOXruIpw-EodG",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipM-4vsIE3UarbQAO_iJKrNJgGYnOXruIpw-EodG"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUQtNllfOG93RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID-6Y_8owE%7CCgwI55WunAYQ4KahgwI%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1670089447,
            "review_datetime_utc": "12/03/2022 17:44:07",
            "review_likes": 4,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSURlcnVqX0ZBEAE",
            "author_link":
                "https://www.google.com/maps/contrib/117168961011418953226?hl=en-US",
            "author_title": "Dipak Sapkale Koli",
            "author_id": "117168961011418953226",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SCyg25J6R0EOSpbCDrJE-XezRYowQrCHHltIiwBw=s120-c-c0x00000000-cc-rp-mo-ba5-br100",
            "review_text":
                "Their home made sauce is really good, ordered wings and shawarma combo and al faham, all were good enough.",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipPOREo-Z1VHJcaMdPS5ZHzcOQLDPRrgbTyodpiO",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipPOREo-Z1VHJcaMdPS5ZHzcOQLDPRrgbTyodpiO",
              "https://lh5.googleusercontent.com/p/AF1QipOyvp9eUinxOD3M6rov8M2Jd_BlCzThp20qYris"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSURlcnVqX0ZBEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDeruj_FA%7CCgsIh4eRmgYQ0Lq8Aw%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1665418119,
            "review_datetime_utc": "10/10/2022 16:08:39",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNCX3J1UEpnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/114088362320397385540?hl=en-US",
            "author_title": "abhijit thorat",
            "author_id": "114088362320397385540",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5TCsVxF4XCTE2HKKuYR9i57sVvNRcsfbqDRVjcqCqA=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "I tried regular chicken shawarma its simply too good not that spice that paste they used is kinda sweet & also i tried chicken wings taste nice at affordable price must try",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNCX3J1UEpnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICB_ruPJg%7CCgsIneSqnQYQ6MDvKA%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1672131101,
            "review_datetime_utc": "12/27/2022 08:51:41",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSURobWZ6NURnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/102328854701823328986?hl=en-US",
            "author_title": "Ashutosh Ghige",
            "author_id": "102328854701823328986",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5TalUfKQdhw_nE2h_0iboYVQTP6AxVhNvpl6d_1AQ=s120-c-c0x00000000-cc-rp-mo-ba2-br100",
            "review_text":
                "Not quite authentic, but unique taste!\nThe unique sauces will make you fall in love with the Shawarma and the variety of the menu won't let you leave the place.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSURobWZ6NURnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDhmfz5Dg%7CCgwIzJy3oAYQyOi_uAI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1678626380,
            "review_datetime_utc": "03/12/2023 13:06:20",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURCNmZMMXNnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/115710670496616494148?hl=en-US",
            "author_title": "piyush deshmukh",
            "author_id": "115710670496616494148",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5Qe5RiWUiKg0--DPZLT1NKZJ1qTJ1BKFiIjK8c1Lg=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text":
                "It\u2019s again one of those pocket friendly outlet where you\u2019ll get decent shawarma roll and hummus. It\u2019s definitely better that the outlet beside them. Good thing is they are open till 12 on the night.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURCNmZMMXNnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDB6fL1sgE%7CCgwI1fy4ngYQ4OCJygI%7C?hl=en-US",
            "review_rating": 3,
            "review_timestamp": 1674460757,
            "review_datetime_utc": "01/23/2023 07:59:17",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNSd3Z5ZmVBEAE",
            "author_link":
                "https://www.google.com/maps/contrib/112611823698176712523?hl=en-US",
            "author_title": "Jerry Jose",
            "author_id": "112611823698176712523",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RCPc52uDBfHUC0tNLPaJaHur_rg1zky4I-gHafXQ=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text":
                "V tried shawarma combo ..was grt bt fries weren't tht gud",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNSd3Z5ZmVBEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICRwvyfeA%7CCgsImqGLoQYQ4OyqGg%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1680003226,
            "review_datetime_utc": "03/28/2023 11:33:46",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURCMlo2MnRRRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/114486632878986144184?hl=en-US",
            "author_title": "sushant shinde",
            "author_id": "114486632878986144184",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5S6Mc90QrpachtXs4M7iIr7kIpcn7EmrqiLYAvHuog=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "Chicken was not grilled properly, they are serving raw chicken.\n\nDon't go they are playing with your health.\nPrice is high they are focusing on \ud83d\udcb8 only.\n\nI have feed it to my dog after first bite..",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer":
                "Extremely Sorry for your Inconvenience Sir. Due to Heavy Rush suddenly, We Might night able to Serve you  properly. Hope to see you soon for better service.\n\nThank you.",
            "owner_answer_timestamp": 1674498882,
            "owner_answer_timestamp_datetime_utc": "01/23/2023 18:34:42",
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURCMlo2MnRRRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDB2Z62tQE%7CCgsIqva6ngYQiMqHWw%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1674492714,
            "review_datetime_utc": "01/23/2023 16:51:54",
            "review_likes": 2,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUN1XzZtSjhRRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/104670477039400744056?hl=en-US",
            "author_title": "jayprakash prajapati",
            "author_id": "104670477039400744056",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RluzsYMURnqAk0L-CGi8uM3iRbnUwT5zXB2dNxkfU=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "As we know first impression is the last impression, same as I visited yesterday and it impacted very badly,\n1. Food was not cooked properly,\n2. Salt in food was more,\n3. Improper service.\n4. Anyhow we had some food After this all we went to home and in night my friend got stomach pain, and then food poisoning.\nWorst restaurant ever.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUN1XzZtSjhRRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICu_6mJ8QE%7CCgwI8YHOlwYQuK3ymgE%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1660125425,
            "review_datetime_utc": "08/10/2022 09:57:05",
            "review_likes": 3,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNXN2VHQXp3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/104848267626015344270?hl=en-US",
            "author_title": "Lincy Raju",
            "author_id": "104848267626015344270",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxbekndPB429mLNgzs6KK58Hnt59o4VTDCN2coPQ=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "I just discovered this place yesterday. And I think it's a place I am willing to go back and order again.\nI ordered the Chicken shawarma plate and Spcl Chicken shawarma plate. Both tasted good in different ways. The regular one has lots of cabbage too in it. Whereas the Special one has only Chicken no veggies. Quantity is good. Loved the flavor.\nMy husband wanted vegetarian, but since they have opened recently they don't have many veg options yet. He got the paneer combo, which has paneer fried rice, paneer chilly and coke. Reasonable price, good Quantity and taste, but it really needed some gravy to go with it. Since the rice was mildly flavored not spicy.\nI look forward to trying more from this place.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNXN2VHQXp3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICW7eGAzwE%7CCgsI9_-HkQYQsNXUOg%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1646395383,
            "review_datetime_utc": "03/04/2022 12:03:03",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSURodEx1Q0hnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/117741514421118117841?hl=en-US",
            "author_title": "Devendra S",
            "author_id": "117741514421118117841",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QlNmq01EM6df6wVftnxeqlrs7NtuB2nHvycIXfEw=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "I could simply say this can be your go-to place for nice budget friendly Shwarma plates.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSURodEx1Q0hnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDhtLuCHg%7CCgwIuqiDoAYQ-Ijz9QI%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1677775930,
            "review_datetime_utc": "03/02/2023 16:52:10",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUN1bDlpTTd3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/104901657521627033662?hl=en-US",
            "author_title": "Zack J",
            "author_id": "104901657521627033662",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxbfS9edwMGQHbjjwr5xCBEVsiWjfJPnUfKafuhm=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "Went there couple of times and i can see that they dont value their customers.Quality of food is getting worse after every visit plus unprofessional staff even the lady who sits at the desk.Food price is good but for repeated customers its not that much valuable.U can see mosquitoes everywhere while you are eating so you wont be alone here while eating even they will come to your plate....Food tastes and quantity is degrading day by day ...Hope they will read this and ignore.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUN1bDlpTTd3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICul9iM7wE%7CCgsIrbnDlwYQgIvnFA%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1659952301,
            "review_datetime_utc": "08/08/2022 09:51:41",
            "review_likes": 1,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUMtb29qSEVnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/100800460211521301035?hl=en-US",
            "author_title": "Siddarath Bhujle",
            "author_id": "100800460211521301035",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5TJMa440sFkGkG8HA7hs91Bdil9d7GKGbCGRLIMUw=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text":
                "Absolutely amazing food. Their shawarma is must try",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUMtb29qSEVnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIC-oojHEg%7CCgwIpZ_6mgYQ6NKp4QI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1667141541,
            "review_datetime_utc": "10/30/2022 14:52:21",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUR1c1AzVlVnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/101892485371675760512?hl=en-US",
            "author_title": "Souvik Sayan Sanyal",
            "author_id": "101892485371675760512",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RsPzuF9tecXQTcWe4W0p60cEQFKbyaVsXfXjLPUw=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "Tasty biriyani with good chicken pieces and proper blend of spices under economical rates. One of the best in Pune.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUR1c1AzVlVnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDusP3VUg%7CCgwIvdrUlwYQ-PCovQI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1660235069,
            "review_datetime_utc": "08/11/2022 16:24:29",
            "review_likes": 1,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURoaGM3TXF3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/103170326357656073944?hl=en-US",
            "author_title": "Yash Kurne",
            "author_id": "103170326357656073944",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxYik5Ku8f5TftoqjS4IUs_ffsavre_Fk2LV9z0d=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "When I order veg the give non veg very worst restaurant",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURoaGM3TXF3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDhhc7MqwE%7CCgwIr7y7oAYQgKGvtwM%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1678695983,
            "review_datetime_utc": "03/13/2023 08:26:23",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUQydG9IR0t3EAE",
            "author_link":
                "https://www.google.com/maps/contrib/108481583349127579677?hl=en-US",
            "author_title": "Amir Khan",
            "author_id": "108481583349127579677",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QPf-u7UzAnsYQFP7ssrx05NizDma6bQt-XB4gdet8=s120-c-c0x00000000-cc-rp-mo-ba5-br100",
            "review_text":
                "Great place for shwarma lovers, must try special chicken shwarma, it only has mayo and chicken and does not have Cabbage and all the other stuff.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUQydG9IR0t3EAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID2toHGKw%7CCgwIkLr-kwYQsPuQgQI%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1652530448,
            "review_datetime_utc": "05/14/2022 12:14:08",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNXdC1qRjF3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/104948732354890682659?hl=en-US",
            "author_title": "Saad Ahmed Shaikh",
            "author_id": "104948732354890682659",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5TValRDDeAtJ-bjw0JNJpTvCZOtW18UKefny3T7kA=s120-c-c0x00000000-cc-rp-mo-ba2-br100",
            "review_text":
                "Had a normal chicken shawarma - great quantity, good filling, good soft roti, very affordable.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNXdC1qRjF3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICWt-jF1wE%7CCgsIvN2hkQYQoOrweQ%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1646816956,
            "review_datetime_utc": "03/09/2022 09:09:16",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUN1d29HVkJnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/110199769901268974164?hl=en-US",
            "author_title": "Erebus",
            "author_id": "110199769901268974164",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SloSOPKcm_Fuld4eAdX0FuIA3SGMOqOVlQ1uo2bg=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "Great food at affordable prices. I order one of the biriyanis everytime i visit this restaurant.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUN1d29HVkJnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICuwoGVBg%7CCgwI3NDzlgYQqLG_kQI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1658644572,
            "review_datetime_utc": "07/24/2022 06:36:12",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNXMHFEYUpnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/105336141155148340188?hl=en-US",
            "author_title": "Tejas Bilawarre",
            "author_id": "105336141155148340188",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5S_LdRqj_-SVmsvaAklYjgcEecS1lNgXOLJkXzuaQ=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "Nice place Good quantity and quality and taste must visit",
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipPt4wUxP7uW13_H752JE6KLOj3F-J3Z9ZkUlTjg",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipPt4wUxP7uW13_H752JE6KLOj3F-J3Z9ZkUlTjg"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNXMHFEYUpnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICW0qDaJg%7CCgsIy8nTkAYQsJ7fdA%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1645536459,
            "review_datetime_utc": "02/22/2022 13:27:39",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNCMjltWHpnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/117012653617783603181?hl=en-US",
            "author_title": "Komal Shinde",
            "author_id": "117012653617783603181",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RFY4bYK2J0KT4QyIMde06kpEHfATkzZDGIuVF7=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "such a amazing food i loved it\ud83d\ude0btest was owsame",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNCMjltWHpnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICB29mXzgE%7CCgwIxananQYQ4NHXiAI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1672910021,
            "review_datetime_utc": "01/05/2023 09:13:41",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNCci1UbmF3EAE",
            "author_link":
                "https://www.google.com/maps/contrib/116702756359384211655?hl=en-US",
            "author_title": "Jaswant Jadhav",
            "author_id": "116702756359384211655",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SxlGZWrcWUdnRk_tcpD1QKhv59wiAW1buS0GZpgww=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": "Food is good waiter thin guy is very rude",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNCci1UbmF3EAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICBr-Tnaw%7CCgwIvM3mnQYQuJyvzgE%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1673111228,
            "review_datetime_utc": "01/07/2023 17:07:08",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUQyN2NQVGtBRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/100666092547132123533?hl=en-US",
            "author_title": "Tanmai Santras",
            "author_id": "100666092547132123533",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxakb4JTwPIj_dtqrwOrPOR8YqBIKcx5su6bK6bg=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text":
                "Chinese all menu and masala lolypop best test ever must try \ud83d\ude0b\ud83e\udd70 best service",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUQyN2NQVGtBRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID27cPTkAE%7CCgwI-tX_mgYQqPK6wwI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1667230458,
            "review_datetime_utc": "10/31/2022 15:34:18",
            "review_likes": 1,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNXME9iUEVnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/101356177853571883353?hl=en-US",
            "author_title": "Bablu Masih",
            "author_id": "101356177853571883353",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5T0DuOgnT1iUBlw_doP10p18CUKX8KmUN5DDR4hVSw=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text":
                "You will get her Sharwarma, Chinese, Biryani, Momos, Moctails.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNXME9iUEVnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICW0ObPEg%7CCgwIwvSukAYQ2L2x2AI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1644935746,
            "review_datetime_utc": "02/15/2022 14:35:46",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNCenBpVmNREAE",
            "author_link":
                "https://www.google.com/maps/contrib/108118806658167859744?hl=en-US",
            "author_title": "Sampara Hari Prasad",
            "author_id": "108118806658167859744",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxYmp1EjAObVIaP0Mflw6Ll6FR7CVwxSor00oohX=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": "Worst service I have ever seen before",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNCenBpVmNREAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICBzpiVcQ%7CCgsIxJuinQYQkNWAGw%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1671990724,
            "review_datetime_utc": "12/25/2022 17:52:04",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUN1cG91bzZnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/102994642715946427234?hl=en-US",
            "author_title": "Realtors Compass",
            "author_id": "102994642715946427234",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SZB_qu4Bs9E_U38XlFabl1armtD34a4XsFsEPPfA=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": "Shawarma was good , kebab was also nice",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUN1cG91bzZnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICupouo6gE%7CCgwI0aKElwYQyJbAqAE%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1658917201,
            "review_datetime_utc": "07/27/2022 10:20:01",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUR1eEwzMlRnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/105756038250601976267?hl=en-US",
            "author_title": "Ismail Shaikh",
            "author_id": "105756038250601976267",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SqFgQC-yYzD_hy1ETH6TF0R97YCGPU87u1VBFTRA=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text": "Plate shwarma is delicious !!",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUR1eEwzMlRnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDuxL32Tg%7CCgsI-dTflwYQ8PXmYQ%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1660414585,
            "review_datetime_utc": "08/13/2022 18:16:25",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNSMkstSGxnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/103405767282863089382?hl=en-US",
            "author_title": "Vijay Dinesh",
            "author_id": "103405767282863089382",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5Rm8OSqUu8wGG49sa-rMMEdgqP646HO0b9LD4n0NmQ=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text": "Service is too bad.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNSMkstSGxnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICR2K-HlgE%7CCgwIvsL3oAYQuKqY4gE%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1679679806,
            "review_datetime_utc": "03/24/2023 17:43:26",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNSdmVtQkVnEAE",
            "author_link":
                "https://www.google.com/maps/contrib/114103267098973150544?hl=en-US",
            "author_title": "Siddharth Subhash Chaudhari",
            "author_id": "114103267098973150544",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QBzrrtsD8F71lPlwCvzMqMQ3SsFhbyIErfVbRg6A=s120-c-c0x00000000-cc-rp-mo-ba2-br100",
            "review_text": "Small place but their shawarma tastes good.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNSdmVtQkVnEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICRvemBEg%7CCgwI5KvHoQYQiPqa8wI%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1680987620,
            "review_datetime_utc": "04/08/2023 21:00:20",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNSdnMtVkN3EAE",
            "author_link":
                "https://www.google.com/maps/contrib/104508962256794148833?hl=en-US",
            "author_title": "Sagar Rane",
            "author_id": "104508962256794148833",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RE0zrWKNg5hfPZpfLh_1S57Np1aKRlw-Tvn_pJVQ=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text":
                "Don't ever get veg food here. It's stale; caused food poisioning.",
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNSdnMtVkN3EAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICRvs-VCw%7CCgsIicupoQYQoNC7Vg%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1680500105,
            "review_datetime_utc": "04/03/2023 05:35:05",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURCNGFmcW5BRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/112017265993246020457?hl=en-US",
            "author_title": "Deepak Nagargoje",
            "author_id": "112017265993246020457",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RlahJQo908Q-88fAuIrgZP8VCVK5lGsSyhBSAVGQw=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURCNGFmcW5BRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDB4afqnAE%7CCgwI7dewngYQgLjYkQE%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1674324973,
            "review_datetime_utc": "01/21/2023 18:16:13",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUQtcjlqMWZREAE",
            "author_link":
                "https://www.google.com/maps/contrib/100094052382366982266?hl=en-US",
            "author_title": "rahul jaiswal",
            "author_id": "100094052382366982266",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QOqk8Q8ND5ztU3cUemMKCKeIlsMD5Uftz4oOYiI9s=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUQtcjlqMWZREAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID-r9j1fQ%7CCgwIuZLenAYQuKqA5wI%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1670875449,
            "review_datetime_utc": "12/12/2022 20:04:09",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUR1d3BiazBRRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/105436393163032918234?hl=en-US",
            "author_title": "Mirza Zahid",
            "author_id": "105436393163032918234",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxZZaY-o_TLKt7z0QejAD7_oggaHRnXxldExOGBF=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUR1d3BiazBRRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDuwpbk0QE%7CCgwI5fTulwYQ2PmJsgM%7C?hl=en-US",
            "review_rating": 3,
            "review_timestamp": 1660664421,
            "review_datetime_utc": "08/16/2022 15:40:21",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURPdXA2QS13RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/111388526292313650431?hl=en-US",
            "author_title": "foley 43",
            "author_id": "111388526292313650431",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxbzFYGdMbUbRcygXnd5X_smISoe91IZoeLjsomf=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURPdXA2QS13RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDOup6A-wE%7CCgwIyJWGlgYQwKvujwI%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1656851144,
            "review_datetime_utc": "07/03/2022 12:25:44",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUQyZzdlNmdRRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/113860731168964342278?hl=en-US",
            "author_title": "Prachita Pillay",
            "author_id": "113860731168964342278",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RGo-OSkEwTWibOV0XuYdS9KxJRe30qjZ1AKq-5=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUQyZzdlNmdRRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID2g7e6gQE%7CCgsI0uGtlAYQyKqWGw%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1653305554,
            "review_datetime_utc": "05/23/2022 11:32:34",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNoMzlQSC1nRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/103837582644921526629?hl=en-US",
            "author_title": "Sudhansh Shekher Singh",
            "author_id": "103837582644921526629",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxYWeekblS3X98AIDsLpNNvdMru9rD5ZCxGSsB2P=s120-c-c0x00000000-cc-rp-mo-ba2-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNoMzlQSC1nRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICh39PH-gE%7CCgwIpYTrnwYQ4OaamgI%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1677378085,
            "review_datetime_utc": "02/26/2023 02:21:25",
            "review_likes": 1,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNXaFlHazVnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/111221925083869989835?hl=en-US",
            "author_title": "Ritesh Walke",
            "author_id": "111221925083869989835",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QABw8nffVKt5JdU9MT4K6SfCcAn64lj8qFWzrBGQ=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNXaFlHazVnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICWhYGk5gE%7CCgwIhbr-kAYQwNfexAM%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1646238981,
            "review_datetime_utc": "03/02/2022 16:36:21",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNobTREQjRBRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/111744608444195368303?hl=en-US",
            "author_title": "akshay gadade",
            "author_id": "111744608444195368303",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5S4iPrruOEoygk4qa34DVsqSN1ZR_GyY-ozWaAspg=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNobTREQjRBRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIChm4DB4AE%7CCgsInLLZnwYQ6MSyLg%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1677089052,
            "review_datetime_utc": "02/22/2023 18:04:12",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURXNS1qODNnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/103824900385094365124?hl=en-US",
            "author_title": "Arun Nair",
            "author_id": "103824900385094365124",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxZEJxnl0JygyNWFpKuocQPovU9SvGFsmit_phmd=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURXNS1qODNnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDW5-j83gE%7CCgwIvpu1kgYQuJ3uqwE%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1649233342,
            "review_datetime_utc": "04/06/2022 08:22:22",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUQyLVotUzJBRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/108160778165262388180?hl=en-US",
            "author_title": "Abhishek V Jogdand",
            "author_id": "108160778165262388180",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5Sffm5YfypK_5i2XOhBt8JVjmsdgOG38jlNWdMzLg=s120-c-c0x00000000-cc-rp-mo-ba2-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUQyLVotUzJBRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgID2-Z-S2AE%7CCgwIpeiZlAYQoJq72QE%7C?hl=en-US",
            "review_rating": 1,
            "review_timestamp": 1652978725,
            "review_datetime_utc": "05/19/2022 16:45:25",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNlZ2UtUTBRRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/115187369092743187069?hl=en-US",
            "author_title": "M Sarath",
            "author_id": "115187369092743187069",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QVjNCZabQi7bYR8BwOfCvZJU15l-ON0dAjJL20_A=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNlZ2UtUTBRRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICege-Q0QE%7CCgwItKGNmQYQyIHA1AE%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1663258804,
            "review_datetime_utc": "09/15/2022 16:20:04",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNXNjlQaXpBRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/106022327541589378633?hl=en-US",
            "author_title": "Kavya Sawant",
            "author_id": "106022327541589378633",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxaIRBWjNGfzLSZ5PFoO5yAHy0vrKL48BLvK35FW=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNXNjlQaXpBRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICW69PizAE%7CCgwI2vmWkQYQyOaRkAI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1646640346,
            "review_datetime_utc": "03/07/2022 08:05:46",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURXNTdhYnV3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/107891187282570464608?hl=en-US",
            "author_title": "satyajit patil",
            "author_id": "107891187282570464608",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxZ1rVhEINcI1UWlrc4qcVelUe74mfgAJWYGhd1M=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url":
                "https://lh5.googleusercontent.com/p/AF1QipPLT1RxAmDNG78xFlvPPYZSII7uniiN-wweO6zP",
            "review_img_urls": [
              "https://lh5.googleusercontent.com/p/AF1QipPLT1RxAmDNG78xFlvPPYZSII7uniiN-wweO6zP"
            ],
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURXNTdhYnV3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDW57abuwE%7CCgwIt8u1kgYQwI6LzwI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1649239479,
            "review_datetime_utc": "04/06/2022 10:04:39",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSURla1otUXV3RRAB",
            "author_link":
                "https://www.google.com/maps/contrib/111117190320205013045?hl=en-US",
            "author_title": "Angish Bhandwalkar",
            "author_id": "111117190320205013045",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5QQ3HiF7nWeb73CbDrL0mBy6l34zXBs3jLoMAgsuA=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSURla1otUXV3RRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDekZ-QuwE%7CCgwI8MObmgYQsPftlwM%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1665589744,
            "review_datetime_utc": "10/12/2022 15:49:04",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUMtcEtDTnBnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/100854098836173173036?hl=en-US",
            "author_title": "Nikhil Raut",
            "author_id": "100854098836173173036",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5Rt_PceOF_vrzctKkD-ifwU8vugE_Bd7cf7JuYn8g=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUMtcEtDTnBnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIC-pKCNpgE%7CCgwIpNbpmgYQyN_7qAE%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1666870052,
            "review_datetime_utc": "10/27/2022 11:27:32",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChdDSUhNMG9nS0VJQ0FnSUNXcXBXZGxnRRAB",
            "author_link":
                "https://www.google.com/maps/contrib/116015391705781355940?hl=en-US",
            "author_title": "Suprakash Doloi",
            "author_id": "116015391705781355940",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5RtqvW3ttVJeL2OVmWbQIbLr5IGKMxEq94o1lY4GA=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUNXcXBXZGxnRRAB!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICWqpWdlgE%7CCgwIjPTZkAYQ0Pna7AE%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1645640204,
            "review_datetime_utc": "02/23/2022 18:16:44",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSURXNFlUNGZBEAE",
            "author_link":
                "https://www.google.com/maps/contrib/108410467207560806218?hl=en-US",
            "author_title": "Sangita Pimprikar",
            "author_id": "108410467207560806218",
            "author_image":
                "https://lh3.googleusercontent.com/a/AGNmyxaPbrh7XXKgt1OIIHCwolbQyaP6UVNmBHCIxVP4=s120-c-c0x00000000-cc-rp-mo-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSURXNFlUNGZBEAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIDW4YT4fA%7CCgwIxt38kQYQgI3xvwM%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1648307910,
            "review_datetime_utc": "03/26/2022 15:18:30",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUMyNmE2ZWVREAE",
            "author_link":
                "https://www.google.com/maps/contrib/114169280890604416507?hl=en-US",
            "author_title": "Rutuj Bafna",
            "author_id": "114169280890604416507",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5TE3DTk5HwW-yyb9o6a40e_t6LqPQr545vEJ_Umsg=s120-c-c0x00000000-cc-rp-mo-ba3-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUMyNmE2ZWVREAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgIC26a6eeQ%7CCgwI7_CWkwYQqP3mvgM%7C?hl=en-US",
            "review_rating": 4,
            "review_timestamp": 1650833519,
            "review_datetime_utc": "04/24/2022 20:51:59",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          },
          {
            "google_id": "0x3bc2bf28bbdf951d:0xbeb93f2af323b770",
            "review_id": "ChZDSUhNMG9nS0VJQ0FnSUNPNkpfdWRREAE",
            "author_link":
                "https://www.google.com/maps/contrib/109206869465402139675?hl=en-US",
            "author_title": "Anindita Paul",
            "author_id": "109206869465402139675",
            "author_image":
                "https://lh3.googleusercontent.com/a-/ACB-R5SkEjVSRM4wogYn4_VjYVTOWdcNsOOVag3XhmP6_w=s120-c-c0x00000000-cc-rp-mo-ba4-br100",
            "review_text": null,
            "review_img_url": null,
            "review_img_urls": null,
            "owner_answer": null,
            "owner_answer_timestamp": null,
            "owner_answer_timestamp_datetime_utc": null,
            "review_link":
                "https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUNPNkpfdWRREAE!2m1!1s0x0:0xbeb93f2af323b770!3m1!1s2@1:CIHM0ogKEICAgICO6J_udQ%7CCgwIq5bZlAYQyJbPoAI%7C?hl=en-US",
            "review_rating": 5,
            "review_timestamp": 1654016811,
            "review_datetime_utc": "05/31/2022 17:06:51",
            "review_likes": 0,
            "reviews_id": "-4703658882111391888"
          }
        ],
        "photos_count": 72,
        "cid": "13743085191598159728",
        "reviews_link":
            "https://search.google.com/local/reviews?placeid=ChIJHZXfuyi_wjsRcLcj8yo_ub4&authuser=0&hl=en&gl=CA",
        "reviews_id": "-4703658882111391888",
        "photo":
            "https://lh5.googleusercontent.com/p/AF1QipOkCsJs0OQWwx1X9sTbLil-ejkMIaRCLZ9GAeka=w800-h500-k-no",
        "street_view":
            "https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=OIalYZEooG_jdsf6m0QZcw&cb_client=search.gws-prod.gps&w=1600&h=1000&yaw=5.260317&pitch=0&thumbfov=100",
        "working_hours_old_format": null,
        "working_hours": null,
        "other_hours": null,
        "business_status": "OPERATIONAL",
        "about": {
          "Service options": {
            "Curbside pickup": true,
            "Delivery": true,
            "Takeout": true,
            "Dine-in": true
          },
          "Offerings": {"Halal food": true, "Small plates": true},
          "Dining options": {"Lunch": true, "Dinner": true},
          "Amenities": {"Good for kids": true},
          "Atmosphere": {"Casual": true},
          "Crowd": {"Groups": true},
          "Payments": {"NFC mobile payments": true}
        },
        "range": null,
        "reviews_per_score": {"1": 12, "2": 2, "3": 2, "4": 16, "5": 24},
        "reservation_links": null,
        "booking_appointment_link":
            "https://www.swiggy.com/restaurants/the-arabian-grills-sanghavi-kesari-road-aundh-pune-490477?utm_source=GooglePlaceOrder&utm_campaign=GoogleMap&is_retargeting=true&media_source=GooglePlaceOrder",
        "menu_link": null,
        "order_links": [
          "https://www.swiggy.com/restaurants/the-arabian-grills-sanghavi-kesari-road-aundh-pune-490477?utm_source=GooglePlaceOrder&utm_campaign=GoogleMap&is_retargeting=true&media_source=GooglePlaceOrder"
        ],
        "owner_id": "118212578386364931430",
        "verified": true,
        "owner_title": "The Arabian Grills",
        "owner_link":
            "https://www.google.com/maps/contrib/118212578386364931430",
        "location_link":
            "https://www.google.com/maps/place/The+Arabian+Grills/@18.560818599999998,73.8110451,14z/data=!4m8!1m2!2m1!1sThe+Arabian+Grills!3m4!1s0x3bc2bf28bbdf951d:0xbeb93f2af323b770!8m2!3d18.560818599999998!4d73.8110451"
      }
    ]
  };
  String? reviewText;
  String? rating;
  String? date;
  int? reviewRating;
  String? reviewDateTime;
  var data;

  TestAPIResponse({this.reviewText, this.rating, this.date});

  getReviewData() async {
    data = await jsonDecode(jsonEncode(testReview));
    try {
      List<Review> reviewObjects = [];
      var reviews = data!["data"][0]["reviews_data"];

      for (var review in reviews) {
        if (review["review_text"] != null) {
          Review reviewObject = Review(
              reviewText: review["review_text"] ?? "",
              rating: review["review_rating"] ?? 1,
              date: review["review_datetime_utc"] ?? "",
              id: 1);
          reviewObjects.add(reviewObject);
        }
      }

      return reviewObjects;
    } catch (e) {
      print(e);
    }
  }
}
