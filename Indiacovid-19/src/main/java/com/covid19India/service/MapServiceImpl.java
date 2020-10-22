package com.covid19India.service;

import org.springframework.stereotype.Service;

import com.covid19India.model.IndiaVO;
import com.fasterxml.jackson.databind.ObjectMapper;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

@Service
public class MapServiceImpl implements MapService{

	public IndiaVO convert()
	{
	String jsonstring="";
	ObjectMapper obj = new ObjectMapper();
	IndiaVO indvo = new IndiaVO();
	try
	{
		OkHttpClient client = new OkHttpClient().newBuilder()
				  .build();
		Request request = new Request.Builder()
				  .url("https://corona-virus-world-and-india-data.p.rapidapi.com/api_india")
				  .method("GET", null)
				  .addHeader("x-rapidapi-host", "corona-virus-world-and-india-data.p.rapidapi.com")
				  .addHeader("x-rapidapi-key", "77dd94a729msh1202041addd5ccep1d5f38jsn834b3180dbd0")
				  .build();
		Response response = client.newCall(request).execute();
		jsonstring = response.body().string();
		indvo = obj.readValue(jsonstring,IndiaVO.class);
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
		return indvo;
	}
}
