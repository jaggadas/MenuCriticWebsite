import "dart:convert";
import "dart:core";
import "package:flutter/material.dart";

bool _testmode=true;
Map testReview = {"id":"a-bf59cb6b-9a6f-40e9-9601-9996c2074ad3","status":"Success","data":[{"query":"ChIJ-1IVSQP7DDkRPG7cC-zF5p4","name":"Kumaoni Grill Food","place_id":"ChIJ-1IVSQP7DDkRPG7cC-zF5p4","google_id":"0x390cfb03491552fb:0x9ee6c5ec0bdc6e3c","full_address":"Shop No-5 Plot No-574, opposite Gulati Vardi Wale, Sector 5, Vaishali, Ghaziabad, Uttar Pradesh 201010, India","borough":"Srajan Housing Society, Sector 5, Vaishali","street":"Shop No-5 Plot No-574, opposite Gulati Vardi Wale","postal_code":"201010","area_service":false,"country_code":"IN","country":"India","city":"Ghaziabad","us_state":null,"state":"Uttar Pradesh","plus_code":"7JWVJ8WX+H3","latitude":28.646455399999997,"longitude":77.3477216,"time_zone":"Asia/Calcutta","popular_times":null,"site":null,"phone":"+91 85859 29666","type":"Restaurant","logo":"https://lh3.googleusercontent.com/-jHLSXmsQOT0/AAAAAAAAAAI/AAAAAAAAAAA/D1AAPR4gbsI/s44-p-k-no-ns-nd/photo.jpg","description":null,"located_in":null,"located_google_id":null,"category":"restaurants","subtypes":"Restaurant","posts":null,"reviews_tags":null,"rating":4.5,"reviews":10,"reviews_data":[{"review_id":"ChZDSUhNMG9nS0VJQ0FnSUQycktPQVdBEAE","author_link":"https://www.google.com/maps/contrib/102360241843543555155?hl=en-US","author_title":"anupam bairagi","author_id":"102360241843543555155","author_image":"https://lh3.googleusercontent.com/a-/ACB-R5SjPRy5pgGMzH7iiiS1sxC-f_im0an7nAGO51XFKQ=s120-c-c0x00000000-cc-rp-mo-br100","review_text":"Took a briyani, it's just a fried rice, extremely bad experience, not recommended for anybody","review_img_url":null,"review_img_urls":null,"owner_answer":null,"owner_answer_timestamp":null,"owner_answer_timestamp_datetime_utc":null,"review_link":"https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUQycktPQVdBEAE!2m1!1s0x0:0x9ee6c5ec0bdc6e3c!3m1!1s2@1:CIHM0ogKEICAgID2rKOAWA%7CCgwI58_fkwYQuO7rowE%7C?hl=en-US","review_rating":1,"review_timestamp":1652025319,"review_datetime_utc":"05/08/2022 15:55:19","review_likes":0},{"review_id":"ChZDSUhNMG9nS0VJQ0FnSUN5MFBEMGZREAE","author_link":"https://www.google.com/maps/contrib/108092293667594469905?hl=en-US","author_title":"parul kotia","author_id":"108092293667594469905","author_image":"https://lh3.googleusercontent.com/a-/ACB-R5Q1X8ei4qRJdwuPXf_7e3DgAc-H9Hr98XBXmU-r3aI=s120-c-c0x00000000-cc-rp-mo-br100","review_text":"I really appreciate their work..... Food is just amazing \ud83d\ude0b...\nKeep it up\ud83d\udc4d","review_img_url":null,"review_img_urls":null,"owner_answer":null,"owner_answer_timestamp":null,"owner_answer_timestamp_datetime_utc":null,"review_link":"https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChZDSUhNMG9nS0VJQ0FnSUN5MFBEMGZREAE!2m1!1s0x0:0x9ee6c5ec0bdc6e3c!3m1!1s2@1:CIHM0ogKEICAgICy0PD0fQ%7CCgwI1a2LgAYQ4J_u-AE%7C?hl=en-US","review_rating":5,"review_timestamp":1610798805,"review_datetime_utc":"01/16/2021 12:06:45","review_likes":0},{"review_id":"ChdDSUhNMG9nS0VJQ0FnSUM2aV9QZTdBRRAB","author_link":"https://www.google.com/maps/contrib/101658829648175627318?hl=en-US","author_title":"LILA DHAR JOSHI","author_id":"101658829648175627318","author_image":"https://lh3.googleusercontent.com/a-/ACB-R5QqH6XmzVlshNA4-guqid4XBvtDThM7O_Tag0R0=s120-c-c0x00000000-cc-rp-mo-br100","review_text":null,"review_img_url":null,"review_img_urls":null,"owner_answer":null,"owner_answer_timestamp":null,"owner_answer_timestamp_datetime_utc":null,"review_link":"https://www.google.com/maps/reviews/data=!4m8!14m7!1m6!2m5!1sChdDSUhNMG9nS0VJQ0FnSUM2aV9QZTdBRRAB!2m1!1s0x0:0x9ee6c5ec0bdc6e3c!3m1!1s2@1:CIHM0ogKEICAgIC6i_Pe7AE%7CCgwI2b_6iQYQuJmRhQE%7C?hl=en-US","review_rating":4,"review_timestamp":1631494054,"review_datetime_utc":"09/13/2021 00:47:34","review_likes":0}],"photos_count":4,"cid":"11450056720238014012","reviews_link":"https://search.google.com/local/reviews?placeid=ChIJ-1IVSQP7DDkRPG7cC-zF5p4&authuser=0&hl=en&gl=UA","reviews_id":"-6996687353471537604","photo":"https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=VhIgAAmasSea2sydTghkiA&cb_client=search.gws-prod.gps&w=800&h=500&yaw=65.46443&pitch=0&thumbfov=100","street_view":"https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=VhIgAAmasSea2sydTghkiA&cb_client=search.gws-prod.gps&w=1600&h=1000&yaw=65.46443&pitch=0&thumbfov=100","working_hours_old_format":"Monday: 11\u202fAM-10\u202fPM | Tuesday: 11\u202fAM-10\u202fPM | Wednesday: 11\u202fAM-10\u202fPM | Thursday: 11\u202fAM-10\u202fPM | Friday: 11\u202fAM-10\u202fPM | Saturday: 11\u202fAM-10\u202fPM | Sunday: 11\u202fAM-10\u202fPM","working_hours":{"Monday":"11\u202fAM-10\u202fPM","Tuesday":"11\u202fAM-10\u202fPM","Wednesday":"11\u202fAM-10\u202fPM","Thursday":"11\u202fAM-10\u202fPM","Friday":"11\u202fAM-10\u202fPM","Saturday":"11\u202fAM-10\u202fPM","Sunday":"11\u202fAM-10\u202fPM"},"other_hours":null,"business_status":"OPERATIONAL","about":{"Service options":{"Delivery":true,"Takeaway":true,"Dine-in":true},"Offerings":{"Small plates":true},"Dining options":{"Breakfast":true,"Lunch":true,"Dinner":true},"Amenities":{"Good for kids":true},"Atmosphere":{"Casual":true},"Crowd":{"Groups":true},"Payments":{"NFC mobile payments":true}},"range":null,"reviews_per_score":{"1":1,"2":0,"3":0,"4":1,"5":8},"reservation_links":null,"booking_appointment_link":null,"menu_link":null,"order_links":null,"owner_id":"102915594072131234671","verified":true,"owner_title":"Kumaoni Grill Food","owner_link":"https://www.google.com/maps/contrib/102915594072131234671","location_link":"https://www.google.com/maps/place/Kumaoni+Grill+Food/@28.646455399999997,77.3477216,14z/data=!4m8!1m2!2m1!1sKumaoni+Grill+Food!3m4!1s0x390cfb03491552fb:0x9ee6c5ec0bdc6e3c!8m2!3d28.646455399999997!4d77.3477216"}]};
class reviewData{
  String? reviewText; String? rating; String? date; int? reviewRating; String? reviewDateTime;
  var data;
  reviewData({this.reviewText, this.rating, this.date});

  getReviewData() async{
    if(_testmode==true)
    {
      data=await jsonDecode(jsonEncode(testReview));
      try
      {
        // print(data);
        reviewText=data!["data"][0]["reviews_data"][0]["review_text"];
        reviewRating=data!["data"][0]["reviews_data"][0]["review_rating"];
        reviewDateTime=data!["data"][0]["reviews_data"][0]["review_datetime_utc"];
        print(reviewText);
        print(reviewRating);
        print(reviewDateTime);
      }
      catch(e)
      {
        print(e);
      }


    }
  }

}